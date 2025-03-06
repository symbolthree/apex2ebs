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

CREATE OR REPLACE PACKAGE BODY APEX2EBS.APEX2EBS_PKG IS

  PROCEDURE DEBUG(p_msg IN VARCHAR2) IS
  PRAGMA AUTONOMOUS_TRANSACTION;
  BEGIN
    INSERT INTO A2E_DEBUG (message) VALUES (SUBSTR(p_msg, 1, 1000));
    COMMIT;
  END;

  FUNCTION LOGIN_AUTHENTICATION (p_username    VARCHAR2
                               , p_password    VARCHAR2)
    RETURN BOOLEAN IS
  BEGIN
    IF p_password IS NULL THEN
      RETURN TRUE;
    ELSE
      RETURN fnd_user_pkg.validatelogin@APEX_TO_EBS(p_username, p_password);
    END IF;

    RETURN FALSE;
  END LOGIN_AUTHENTICATION;

  PROCEDURE SETUP(p_appID IN NUMBER, p_name IN VARCHAR2, p_keepMapping IN VARCHAR2) IS
  p_instanceName varchar2(30);
  p_url          varchar2(200);
  p_groupID      NUMBER;
  p_respID       NUMBER;
  p_respAppID    NUMBER;
  p_debugMsg     varchar2(100);

  BEGIN

  DEBUG('SETUP -- p_appID = ' || p_appID || ', p_keepMapping = ' || p_keepMapping);

  INSERT INTO A2E_INSTANCE_INFO (
      A2E_NAME
    , A2E_APP_ID
    , EBS_INSTANCE
    , EBS_RELEASE_NAME
    , EBS_DB_VERSION)
  select p_name
       , p_appID
       , fpg.applications_system_name
       , fpg.release_name
       , vi.version
    from FND_PRODUCT_GROUPS@APEX_TO_EBS fpg
       , v$instance@APEX_TO_EBS         vi
   WHERE upper(fpg.applications_system_name) = upper(vi.INSTANCE_NAME);

  p_debugMsg := 'Instance info inserted';
  DEBUG(p_debugMsg);

  UPDATE A2E_INSTANCE_INFO
     SET A2E_APP_NAME =
       (SELECT APPLICATION_NAME
          FROM APEX_APPLICATIONS WHERE APPLICATION_ID = p_appID);

  p_debugMsg := 'Instance info updated 1';
  DEBUG(p_debugMsg);


  UPDATE A2E_INSTANCE_INFO
     SET (EBS_DB_NODE_NAME
        , EBS_DB_HOST
        , EBS_DB_DOMAIN
        , EBS_DB_PLATFORM
        , EBS_SERVER_ADDRESS
        , EBS_SERVER_ID) =
     (select a.node_name
           , a.host
           , a.domain
           , b.platform_name
           , NVL(a.server_address, VIRTUAL_IP) server_address
           , a.server_id
        from FND_NODES@APEX_TO_EBS a
           , V$DATABASE@APEX_TO_EBS b
       where a.support_db='Y');

  p_debugMsg := 'Instance info updated 2';
  DEBUG(p_debugMsg);

  UPDATE A2E_INSTANCE_INFO
     SET A2E_SUCCESS_LOGIN='N'
       , EBS_SUCCESS_LOGIN='N';

  p_debugMsg := 'Instance info updated 3';
  DEBUG(p_debugMsg);

  select a.profile_option_value
    into p_url
    from fnd_profile_option_values@APEX_TO_EBS a
       , fnd_profile_options@APEX_TO_EBS b
   where b.profile_option_name = 'APPS_JSP_AGENT'
     and a.profile_option_id=b.profile_option_id;

  UPDATE A2E_INSTANCE_INFO
     SET EBS_URL       = p_url
       , CREATION_DATE = SYSDATE;

  p_debugMsg := 'Instance info updated 4';
  DEBUG(p_debugMsg);

  select EBS_INSTANCE
    into p_instanceName
    from A2E_INSTANCE_INFO;

  INSERT INTO A2E_LANGUAGES
  select p_instanceName
       , a.language_id
       , a.language_code
       , a.nls_language
       , a.nls_territory
       , a.iso_language
       , a.iso_territory
       , a.installed_flag
       , b.language
       , b.description
       , sysdate
    from FND_LANGUAGES@APEX_TO_EBS a
       , FND_LANGUAGES_TL@APEX_TO_EBS b
  where a.language_code = b.language_code
    and a.installed_flag in ('B', 'I')
    and b.language = a.language_code
    order by language_id;

  p_debugMsg := 'A2E_LANGUAGES inserted';
  DEBUG(p_debugMsg);

  IF NVL(p_keepMapping, 'N') = 'N' THEN

    SELECT GROUP_ID
      INTO p_groupID
      FROM APEX_APPLICATION_PAGE_GROUPS
     WHERE APPLICATION_ID = p_appID
       AND PAGE_GROUP_NAME = 'APEX2EBS Admin';

    SELECT RESPONSIBILITY_ID
         , APPLICATION_ID
      INTO p_respID
         , p_respAppID
      FROM FND_RESPONSIBILITY@APEX_TO_EBS
     WHERE RESPONSIBILITY_KEY = 'SYSTEM_ADMINISTRATOR'
       AND ROWNUM < 2;

  INSERT INTO A2E_RESP_PAGE_MAPPING (
       MAPPING_TYPE
     , USER_ID
     , RESP_ID
     , RESP_APP_ID
     , APP_ID
     , PAGE_TYPE
     , PAGE_ID
     , PAGE_GROUP_ID
     , ENABLED
     , ALLOW_OR_DENY
     , CREATED_BY
     , LAST_UPDATED_BY) VALUES (
      'RESP'
     , NULL
     , p_respID
     , p_respAppID
     , p_appID
     , 'GROUP'
     , NULL
     , p_groupID
     , 'Y'
     , 'A'
     , 0
     , 0);

  p_debugMsg := 'A2E_RESP_PAGE_MAPPING inserted';
  DEBUG(p_debugMsg);

  /*  Hide Drop Setup page */
  INSERT INTO A2E_PAGE_EXTENDED (
    APPLICATION_ID
  , PAGE_ID
  , HIDDEN
  , CREATED_BY) VALUES (
    p_appID
  , 300
  , 'Y'
  , 0
  );

  p_debugMsg := 'A2E_PAGE_EXTENDED inserted';
  DEBUG(p_debugMsg);

  END IF;

  COMMIT;
  EXCEPTION
    WHEN OTHERS THEN
      DEBUG('ERROR  - ' || SUBSTR(SQLERRM,1,100));
      DEBUG('Last debug message = ' || p_debugMsg);
      COMMIT;
  END;

  PROCEDURE CLEANUP(p_appID IN NUMBER) IS
  BEGIN
  DELETE FROM A2E_SESSIONS;
  DELETE FROM A2E_LANGUAGES;
  DELETE FROM A2E_RESP_PAGE_MAPPING;
  DELETE FROM A2E_INSTANCE_INFO;
  DELETE FROM A2E_PAGE_EXTENDED;

  FOR RS IN (SELECT 1 FROM ALL_DB_LINKS WHERE DB_LINK='APEX_TO_EBS') LOOP
    EXECUTE IMMEDIATE 'DROP DATABASE LINK APEX_TO_EBS';
  END LOOP;
  DEBUG('CLEANUP done');

  COMMIT;
  END;

  PROCEDURE EBS_CONNECTOR(p_ebsSessionID     IN NUMBER,
                          p_ebsCookie        IN VARCHAR2,
                          p_apexSessionID    IN NUMBER,
                          p_appID            IN VARCHAR2,
                          p_LoginOrRedirect OUT VARCHAR2,
                          p_errMsg          OUT VARCHAR2) IS

  isValid     NUMBER;
  isEbsExist  NUMBER;
  isApexExist NUMBER;
  num_appID   NUMBER;

  BEGIN

  SELECT COUNT(*)
  INTO   isValid
  FROM   ICX_SESSIONS@APEX_TO_EBS
  WHERE  session_id    = p_ebsSessionID
  AND    XSID          = p_ebsCookie
  AND    guest         = 'N'
  AND    disabled_flag = 'N';

  IF isValid = 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Invalid EBS Session');
  END IF;

  SELECT COUNT(*)
    INTO isValid
    FROM APEX_APPLICATIONS
   WHERE ALIAS = p_appID
      OR TO_CHAR(APPLICATION_ID) = p_appID;

  IF isValid = 0 OR isValid > 1 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Invalid APEX app ID or Alias');
  END IF;

  SELECT APPLICATION_ID
    INTO num_appID
    FROM APEX_APPLICATIONS
   WHERE ALIAS = p_appID
      OR TO_CHAR(APPLICATION_ID) = p_appID;

  SELECT COUNT(*) INTO isEbsExist
   FROM A2E_SESSIONS
  WHERE EBS_SESSION_ID  = p_ebsSessionID;

  SELECT COUNT(*) INTO isApexExist
   FROM A2E_SESSIONS
  WHERE APEX_SESSION_ID  = p_apexSessionID;

  IF isEbsExist = 0 AND isApexExist = 0 THEN

    INSERT into A2E_SESSIONS (
       ebs_session_id
     , ebs_user_id
     , ebs_user_name
     , ebs_employee_name
     , ebs_resp_id
     , ebs_resp_name
     , ebs_resp_app_id
     , ebs_org_id
     , ebs_xsid
     , ebs_lang_code
     , ebs_creation_date
     , ebs_last_update_date
     , apex_session_id
     , apex_lang_code
     , apex_session_created)
            SELECT t1.session_id
                 , t1.user_id
                 , t4.user_name
                 , t5.full_name
                 , t1.responsibility_id
                 , t3.responsibility_name
                 , t2.application_id
                 , t1.org_id
                 , t1.xsid
                 , t1.language_code
                 , SYSDATE
                 , SYSDATE
                 , p_apexSessionID
                 , A2E_LANG('EBS_LANG', t1.language_code, 'FSP_LANGUAGE_PREFERENCE', num_appID)
                 , SYSDATE
              FROM icx_sessions@APEX_TO_EBS          t1
                 , fnd_responsibility@APEX_TO_EBS    t2
                 , fnd_responsibility_tl@APEX_TO_EBS t3
                 , fnd_user@APEX_TO_EBS              t4
                 , per_all_people_f@APEX_TO_EBS      t5
            WHERE  t1.responsibility_id = t2.responsibility_id
            AND    t1.responsibility_id = t3.responsibility_id
            AND    t3.language          = t1.LANGUAGE_CODE
            AND    t1.user_id           = t4.user_id
            AND    t4.employee_id       = t5.person_id(+)
            and    sysdate between t5.effective_start_date(+) and t5.effective_end_date(+)
            AND    t1.session_id        = p_ebsSessionID;

    p_LoginOrRedirect := 'L';

  END IF;

  IF isEbsExist = 1 AND isApexExist = 0 THEN

    UPDATE A2E_SESSIONS
       SET (ebs_xsid
          , ebs_lang_code
          , ebs_last_update_date
          , apex_session_id
          , apex_lang_code) = (
           SELECT t1.xsid
                , t1.language_code
                , SYSDATE
                , p_apexSessionID
                , A2E_LANG('EBS_LANG', t1.language_code, 'FSP_LANGUAGE_PREFERENCE')
             FROM icx_sessions@APEX_TO_EBS          t1
            WHERE 1=1
              AND t1.session_id        = p_ebsSessionID)
     WHERE 1=1
       AND EBS_SESSION_ID  = p_ebsSessionID;

    p_LoginOrRedirect := 'L';

  END IF;

  EXCEPTION
    WHEN OTHERS THEN
      p_errMsg := SUBSTR(SQLERRM, 1,100);

  END;

END;
/

