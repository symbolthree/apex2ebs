/******************************************************************************
 *
 * A P E X 2 E B S
 * Copyright (C) 2025 Christopher Ho
 * All Rights Reserved, http://www.symbolthree.com
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *
 * E-mail: christopher.ho@symbolthree.com
 *
 ******************************************************************************/

CREATE OR REPLACE FUNCTION A2E_LANG (
                     p_source         VARCHAR2
                   , p_sourceValue    VARCHAR2
                   , p_output         VARCHAR2
                   , p_appID          NUMBER DEFAULT NULL)
    RETURN VARCHAR2 IS
    intValue    NUMBER;
    testValue   VARCHAR2 (100);
    rtnValue    VARCHAR2 (10);

  BEGIN
    IF p_source = 'HTTP_ACCEPT_LANGUAGE' AND p_output = 'FSP_LANGUAGE_PREFERENCE' THEN
      intValue      := INSTR (p_sourceValue, ',');

      IF intValue = 0 THEN
        testValue   := p_sourceValue;
      ELSE
        testValue   := SUBSTR (p_sourceValue, 1, intValue - 1);
      END IF;

      FOR RS IN (
        SELECT FSP_LANGUAGE_PREFERENCE
          FROM A2E_LANG_MAPPING
         WHERE lower(HTTP_ACCEPT_LANGUAGE) = lower(testValue)
      ) LOOP

        rtnValue   := rs.FSP_LANGUAGE_PREFERENCE;

      END LOOP;

      IF rtnValue IS NULL THEN
        SELECT APPLICATION_PRIMARY_LANGUAGE
          INTO rtnValue
          FROM APEX_APPLICATIONS
         WHERE APPLICATION_ID = p_appID;
      END IF;

      RETURN rtnValue;
    END IF;

    IF p_source = 'FSP_LANGUAGE_PREFERENCE' AND p_output = 'EBS_LANG' THEN

      FOR RS IN (
        SELECT map.EBS_LANG
          FROM A2E_LANG_MAPPING map
         WHERE lower(map.FSP_LANGUAGE_PREFERENCE) = lower(p_sourceValue)
           AND EXISTS (SELECT 1 FROM A2E_LANGUAGES lang
                        WHERE lang.language_code = map.ebs_lang)
      ) LOOP
        rtnValue   := rs.EBS_LANG;
      END LOOP;

      IF rtnValue IS NULL THEN
        SELECT LANGUAGE_CODE
          INTO rtnValue
          FROM A2E_LANGUAGES
         WHERE INSTALLED_FLAG = 'B';
      END IF;

      RETURN rtnValue;

    END IF;

    IF p_source = 'EBS_LANG' AND p_output = 'FSP_LANGUAGE_PREFERENCE' THEN
      FOR rs IN (SELECT FSP_LANGUAGE_PREFERENCE
                   FROM A2E_LANG_MAPPING
                  WHERE EBS_LANG = p_sourceValue
                    AND DEFAULT_MAPPING = 'Y') LOOP

        rtnValue   := rs.FSP_LANGUAGE_PREFERENCE;
      END LOOP;

      IF rtnValue IS NULL THEN
        SELECT APPLICATION_PRIMARY_LANGUAGE
          INTO rtnValue
          FROM APEX_APPLICATIONS
         WHERE APPLICATION_ID=p_appID;
      END IF;

      RETURN rtnValue;
    END IF;
  END A2E_LANG;
/

CREATE OR REPLACE FUNCTION A2E_PAGE_AUTHORIZATION (
                               p_userID        NUMBER
                             , p_respID        NUMBER
                             , p_appID         NUMBER
                             , p_pageID        NUMBER)

    RETURN VARCHAR2 IS
    isValid     VARCHAR2 (1) := 'N';
    pageGrpID   NUMBER;

  BEGIN

    IF p_pageID < 200 THEN
       RETURN 'Y';
    END IF;

    -- ALLOW
    -- single page level
    FOR rs IN (SELECT 'X'
                 FROM A2E_RESP_PAGE_MAPPING
                WHERE resp_id       = p_respID
                  AND page_id       = p_pageID
                  AND app_id        = p_appID
                  AND enabled       = 'Y'
                  AND mapping_type  = 'RESP'
                  AND page_type     = 'PAGE'
                  AND allow_or_deny = 'A') LOOP
      isValid   := 'Y';
    END LOOP;

    FOR rs IN (SELECT 'X'
                 FROM A2E_RESP_PAGE_MAPPING
                WHERE resp_id       = p_respID
                  AND user_id       = p_userID
                  AND page_id       = p_pageID
                  AND app_id        = p_appID
                  AND enabled       = 'Y'
                  AND mapping_type  = 'USER'
                  AND page_type     = 'PAGE'
                  AND allow_or_deny = 'A') LOOP
      isValid   := 'Y';
    END LOOP;

    -- page group level
    SELECT page_group_id
      INTO pageGrpID
      FROM apex_application_pages
     WHERE page_id        = p_pageID
       AND application_id = p_appID;

    IF pageGrpID IS NOT NULL THEN
      FOR rs IN (SELECT 'X'
                   FROM A2E_RESP_PAGE_MAPPING
                  WHERE resp_id       = p_respID
                    AND app_id        = p_appID
                    AND page_group_id = pageGrpID
                    AND enabled       = 'Y'
                    AND mapping_type  = 'RESP'
                    AND page_type     = 'GROUP'
                    AND allow_or_deny = 'A') LOOP
        isValid   := 'Y';
      END LOOP;

      FOR rs IN (SELECT 'X'
                   FROM A2E_RESP_PAGE_MAPPING
                  WHERE resp_id       = p_respID
                    AND user_id       = p_userID
                    AND app_id        = p_appID
                    AND page_group_id = pageGrpID
                    AND enabled       = 'Y'
                    AND mapping_type  = 'USER'
                    AND page_type     = 'GROUP'
                    AND allow_or_deny = 'A') LOOP
        isValid   := 'Y';
      END LOOP;
    END IF;

    -- DENIAL
    -- single page level
    FOR rs IN (SELECT 'X'
                 FROM A2E_RESP_PAGE_MAPPING
                WHERE resp_id       = p_respID
                  AND page_id       = p_pageID
                  AND app_id        = p_appID
                  AND enabled       = 'Y'
                  AND mapping_type  = 'RESP'
                  AND page_type     = 'PAGE'
                  AND allow_or_deny = 'D') LOOP
      isValid   := 'N';
    END LOOP;

    FOR rs IN (SELECT 'X'
                 FROM A2E_RESP_PAGE_MAPPING
                WHERE resp_id       = p_respID
                  AND user_id       = p_userID
                  AND page_id       = p_pageID
                  AND app_id        = p_appID
                  AND enabled       = 'Y'
                  AND mapping_type  = 'USER'
                  AND page_type     = 'PAGE'
                  AND allow_or_deny = 'D') LOOP
      isValid   := 'N';
    END LOOP;

    -- page group level
    SELECT page_group_id
      INTO pageGrpID
      FROM apex_application_pages
     WHERE page_id        = p_pageID
       AND application_id = p_appID;

    IF pageGrpID IS NOT NULL THEN
      FOR rs IN (SELECT 'X'
                   FROM A2E_RESP_PAGE_MAPPING
                  WHERE resp_id       = p_respID
                    AND app_id        = p_appID
                    AND page_group_id = pageGrpID
                    AND enabled       = 'Y'
                    AND mapping_type  = 'RESP'
                    AND page_type     = 'GROUP'
                    AND allow_or_deny = 'D') LOOP
        isValid   := 'N';
      END LOOP;

      FOR rs IN (SELECT 'X'
                   FROM A2E_RESP_PAGE_MAPPING
                  WHERE resp_id       = p_respID
                    AND user_id       = p_userID
                    AND app_id        = p_appID
                    AND page_group_id = pageGrpID
                    AND enabled       = 'Y'
                    AND mapping_type  = 'USER'
                    AND page_type     = 'GROUP'
                    AND allow_or_deny = 'D') LOOP
        isValid   := 'N';
      END LOOP;
    END IF;

    RETURN isValid;

    EXCEPTION
    WHEN OTHERS THEN RETURN 'N';
  END A2E_PAGE_AUTHORIZATION;
/

