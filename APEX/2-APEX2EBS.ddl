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

CREATE TABLE A2E_SESSIONS (
  APEX_SESSION_ID       NUMBER,
  APEX_SESSION_CREATED  DATE,
  APEX_LANG_CODE        VARCHAR2(30),
  EBS_SESSION_ID        NUMBER,
  EBS_USER_ID           NUMBER,
  EBS_USER_NAME         VARCHAR2(100),
  EBS_EMPLOYEE_NAME     VARCHAR2(240),
  EBS_RESP_NAME         VARCHAR2(100),
  EBS_RESP_ID           NUMBER,
  EBS_RESP_APP_ID       NUMBER,
  EBS_ORG_ID            NUMBER,
  EBS_XSID              VARCHAR2(32),
  EBS_LANG_CODE         VARCHAR2(30),
  EBS_CREATION_DATE     DATE,
  EBS_LAST_UPDATE_DATE  DATE,
  IP_ADDRESS            VARCHAR2(100)
);

CREATE INDEX A2E_SESSIONS_IDX1 ON A2E_SESSIONS(APEX_SESSION_ID);
CREATE INDEX A2E_SESSIONS_IDX2 ON A2E_SESSIONS(APEX_SESSION_CREATED);
CREATE INDEX A2E_SESSIONS_IDX3 ON A2E_SESSIONS(EBS_USER_NAME);

CREATE TABLE A2E_ACCESS_LOG (
  APEX_SESSION_ID   NUMBER,
  APEX_ACCESS_DATE  DATE,
  EBS_RESP_ID       NUMBER,
  EBS_RESP_NAME     VARCHAR2(100),
  EBS_RESP_APP_ID   NUMBER,
  EBS_ORG_ID        NUMBER,
  APEX_APP_ID       NUMBER,
  APEX_PAGE_ID      NUMBER
);

CREATE INDEX A2E_ACCESS_LOG_IDX1 ON A2E_ACCESS_LOG(APEX_SESSION_ID);

CREATE TABLE A2E_LANGUAGES (
  INSTANCE_NAME   VARCHAR2(30),
  LANGUAGE_ID     NUMBER,
  LANGUAGE_CODE   VARCHAR2(12),
  NLS_LANGUAGE    VARCHAR2(90),
  NLS_TERRITORY   VARCHAR2(90),
  ISO_LANGUAGE    VARCHAR2(6),
  ISO_TERRITORY   VARCHAR2(6),
  INSTALLED_FLAG  VARCHAR2(3),
  LANGUAGE        VARCHAR2(12),
  DESCRIPTION     VARCHAR2(765)
);

CREATE TABLE A2E_INSTANCE_INFO  (
A2E_APP_NAME       VARCHAR2(30),
A2E_APP_ID         NUMBER, 
EBS_INSTANCE       VARCHAR2(30),
EBS_DB_NODE_NAME   VARCHAR2(30),
EBS_DB_HOST        VARCHAR2(256),
EBS_DB_DOMAIN      VARCHAR2(256), 
EBS_DB_PLATFORM    VARCHAR2(40), 
EBS_DB_VERSION     VARCHAR2(20), 
EBS_SERVER_ADDRESS VARCHAR2(30),
EBS_SERVER_ID      VARCHAR2(64), 
EBS_RELEASE_NAME   VARCHAR2(50),
EBS_URL            VARCHAR2(200),
A2E_SUCCESS_LOGIN  VARCHAR2(1),
EBS_SUCCESS_LOGIN  VARCHAR2(1)
);

CREATE TABLE A2E_RESP_PAGE_MAPPING (
  RESP_PAGE_MAPPING_ID  NUMBER    PRIMARY KEY,
  MAPPING_TYPE          VARCHAR2(10) NOT NULL,
  USER_ID               NUMBER,
  RESP_ID               NUMBER       NOT NULL,
  RESP_APP_ID           NUMBER       NOT NULL,
  APP_ID                NUMBER       NOT NULL,
  PAGE_TYPE             VARCHAR2(10) NOT NULL,
  PAGE_ID               NUMBER,
  PAGE_GROUP_ID         NUMBER,
  ALLOW_OR_DENY         VARCHAR2(1)  NOT NULL,
  ENABLED               VARCHAR2(1)  NOT NULL,
  CREATION_DATE         DATE         NOT NULL,
  CREATED_BY            NUMBER       NOT NULL,
  LAST_UPDATE_DATE      DATE         NOT NULL,
  LAST_UPDATED_BY       NUMBER       NOT NULL
);

CREATE INDEX A2E_RESP_PAGE_MAPPING_IDX1 ON 
A2E_RESP_PAGE_MAPPING(RESP_ID, RESP_APP_ID);

CREATE SEQUENCE A2E_RESP_PAGE_SEQ;

CREATE OR REPLACE TRIGGER A2E_RESP_PAGE_MAPPING_TRI
BEFORE INSERT OR UPDATE
ON A2E_RESP_PAGE_MAPPING
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
DECLARE
tmpVar NUMBER;

BEGIN
   tmpVar := 0;

IF INSERTING THEN
   SELECT A2E_RESP_PAGE_SEQ.NEXTVAL INTO tmpVar FROM dual;
   :NEW.RESP_PAGE_MAPPING_ID := tmpVar;
   :NEW.CREATION_DATE        := SYSDATE;
   :NEW.LAST_UPDATE_DATE     := SYSDATE;
END IF;

IF UPDATING THEN
   :NEW.LAST_UPDATE_DATE := SYSDATE;
END IF;

  EXCEPTION
  WHEN OTHERS THEN
    RAISE;
END ;
/

CREATE TABLE A2E_DEBUG (
  DEBUG_ID    NUMBER,
  DEBUG_TIME  DATE,
  MESSAGE     VARCHAR2(1000 BYTE)
);

CREATE TABLE A2E_PAGE_EXTENDED (
  APPLICATION_ID    NUMBER           NOT NULL,
  PAGE_ID           NUMBER           NOT NULL,
  USER_PAGE_NAME    VARCHAR2(200),  
  HIDDEN            VARCHAR2(1),
  PAGE_ORDER        NUMBER, 
  CREATION_DATE     DATE             NOT NULL,
  CREATED_BY        NUMBER           NOT NULL,
  LAST_UPDATE_DATE  DATE             NOT NULL,
  LAST_UPDATED_BY   NUMBER           NOT NULL
);

CREATE OR REPLACE TRIGGER A2E_PAGE_EXTENDED_TRI
BEFORE INSERT OR UPDATE
ON A2E_PAGE_EXTENDED
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
BEGIN
IF INSERTING THEN
   :NEW.CREATION_DATE    := SYSDATE;
   :NEW.LAST_UPDATE_DATE := SYSDATE;
   :NEW.LAST_UPDATED_BY  := :NEW.CREATED_BY; 
END IF;

IF UPDATING THEN
   :NEW.LAST_UPDATE_DATE := SYSDATE;
END IF;

   EXCEPTION
     WHEN OTHERS THEN
       RAISE;
END A2E_PAGE_EXTENDED_TRI;
/
CREATE SEQUENCE A2E_DEBUG_SEQ;

CREATE OR REPLACE TRIGGER A2E_DEBUG_TRI
BEFORE INSERT ON A2E_DEBUG
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
DECLARE
tmpVar NUMBER;

BEGIN
  tmpVar := 0;

  SELECT A2E_DEBUG_SEQ.NEXTVAL INTO tmpVar FROM dual;
  :NEW.DEBUG_ID   := tmpVar;
  :NEW.DEBUG_TIME   := SYSDATE;

  EXCEPTION
  WHEN OTHERS THEN
    NULL;
END;
/


CREATE TABLE A2E_LANG_MAPPING (
  LANG_ID                  NUMBER PRIMARY KEY,
  DISPLAY_NAME             VARCHAR2(50),
  HTTP_ACCEPT_LANGUAGE     VARCHAR2(5) UNIQUE,
  FSP_LANGUAGE_PREFERENCE  VARCHAR2(5),
  EBS_LANG                 VARCHAR2(5),
  DEFAULT_MAPPING          VARCHAR2(1),
  CREATION_DATE            DATE          NOT NULL,
  CREATED_BY               NUMBER        NOT NULL,
  LAST_UPDATE_DATE         DATE          NOT NULL,
  LAST_UPDATED_BY          NUMBER        NOT NULL
);

CREATE SEQUENCE A2E_LANG_MAPPING_SEQ;

CREATE OR REPLACE TRIGGER A2E_LANG_MAPPING_TRI
BEFORE INSERT OR UPDATE ON A2E_LANG_MAPPING
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN

  IF :NEW.CREATED_BY IS NULL THEN 
  :NEW.CREATED_BY := 0;
  END IF;
  
  IF INSERTING THEN
  SELECT A2E_LANG_MAPPING_SEQ.NEXTVAL INTO tmpVar FROM dual;
  :NEW.LANG_ID    := tmpVar;
  :NEW.CREATION_DATE  := SYSDATE;
  :NEW.LAST_UPDATE_DATE := SYSDATE;
  :NEW.LAST_UPDATED_BY  := :NEW.CREATED_BY;
  END IF;

  IF UPDATING THEN
  :NEW.LAST_UPDATE_DATE := SYSDATE;
  END IF;

  EXCEPTION
  WHEN OTHERS THEN
   NULL;
END;
/

CREATE OR REPLACE FORCE VIEW APEX2EBS.A2E_HOME_NAVIGATOR_V (
  APEX_SESSION_ID
, MAP_TYPE, APP_ID
, USER_ID
, RESP_ID
, RESP_APP_ID
, PAGE_GROUP_ID
, PAGE_ID
, PAGE_MODE
, ENABLED
, ALLOW_OR_DENY
, HIDDEN
, PAGE_ORDER
, WORKSPACE
, APPLICATION_NAME
, PAGE_GROUP
, PAGE_NAME
, EBS_USER_NAME
, EBS_RESP_NAME)
AS 
SELECT ses.apex_session_id  
     , 'USER-PAGE' MAP_TYPE
     , map.app_id
     , map.user_id
     , map.resp_id
     , map.resp_app_id
     , aap.page_group_id
     , aap.page_id
     , aap.page_mode
     , map.enabled
     , map.allow_or_deny
     , NVL(ape.hidden, 'N') hidden
     , NVL(ape.page_order, aap.page_id) page_order             
     , aap.workspace
     , aap.application_name
     , aap.page_group
     , NVL (ape.user_page_name, aap.page_name) page_name
     , ses.ebs_user_name
     , ses.ebs_resp_name
  FROM APEX_APPLICATION_PAGES aap
     , A2E_RESP_PAGE_MAPPING  map
     , A2E_SESSIONS           ses
     , A2E_PAGE_EXTENDED      ape
 WHERE aap.application_id    = map.app_id
   AND aap.page_id           = map.page_id
   AND map.mapping_type      = 'USER'
   AND map.page_type         = 'PAGE'
   AND map.user_id           = ses.ebs_user_id
   AND map.resp_id           = ses.ebs_resp_id
   AND ape.page_id(+)        = map.page_id
   AND ape.application_id(+) = map.app_id
UNION
SELECT ses.apex_session_id
     , 'RESP-PAGE' MAP_TYPE
     , map.app_id
     , map.user_id
     , map.resp_id
     , map.resp_app_id
     , aap.page_group_id
     , map.page_id
     , aap.page_mode
     , map.enabled
     , map.allow_or_deny
     , NVL (ape.hidden, 'N') hidden
     , NVL (ape.page_order, aap.page_id) page_order
     , aap.workspace
     , aap.application_name
     , aap.page_group
     , NVL (ape.user_page_name, aap.page_name) page_name
     , ses.ebs_user_name
     , ses.ebs_resp_name
  FROM APEX_APPLICATION_PAGES  aap
     , A2E_RESP_PAGE_MAPPING   map
     , A2E_SESSIONS            ses
     , A2E_PAGE_EXTENDED       ape
 WHERE aap.application_id    = map.app_id
   AND aap.page_id           = map.page_id
   AND map.mapping_type      = 'RESP'
   AND map.page_type         = 'PAGE'
   AND map.resp_id           = ses.ebs_resp_id
   AND ape.page_id(+)        = map.page_id
   AND ape.application_id(+) = map.app_id
UNION
    /* user+resp - page group level*/
SELECT ses.apex_session_id,
      'USER-GROUP'  MAP_TYPE
     , map.app_id
     , map.user_id
     , map.resp_id
     , map.resp_app_id
     , map.page_group_id
     , aap.page_id
     , aap.page_mode
     , map.enabled
     , map.allow_or_deny
     , NVL (ape.hidden, 'N') hidden
     , NVL (ape.page_order, aap.page_id) page_order
     , aap.workspace
     , aap.application_name
     , aap.page_group
     , NVL (ape.user_page_name, aap.page_name) page_name
     , ses.ebs_user_name
     , ses.ebs_resp_name
  FROM APEX_APPLICATION_PAGES  aap
     , A2E_RESP_PAGE_MAPPING   map
     , A2E_SESSIONS            ses
     , A2E_PAGE_EXTENDED       ape
 WHERE aap.application_id    = map.APP_ID
   AND aap.page_group_id     = map.PAGE_GROUP_ID
   AND map.mapping_type      = 'USER'
   AND map.page_type         = 'GROUP'
   AND map.user_id           = ses.ebs_user_id
   AND map.resp_id           = ses.ebs_resp_id
   AND ape.page_id(+)        = aap.page_id
   AND ape.application_id(+) = aap.application_id
UNION
    /* resp - page group level*/
SELECT ses.apex_session_id,
       'RESP-GROUP'  MAP_TYPE
     , map.app_id
     , map.user_id
     , map.resp_id
     , map.resp_app_id
     , map.page_group_id
     , aap.page_id
     , aap.page_mode
     , map.enabled
     , map.allow_or_deny
     , NVL (ape.hidden, 'N')  hidden
     , NVL (ape.page_order, aap.page_id) page_order
     , aap.workspace
     , aap.application_name
     , aap.page_group
     , NVL (ape.user_page_name, aap.page_name) page_name
     , ses.ebs_user_name
     , ses.ebs_resp_name
  FROM APEX_APPLICATION_PAGES  aap
     , A2E_RESP_PAGE_MAPPING   map
     , A2E_SESSIONS            ses
     , A2E_PAGE_EXTENDED       ape
 WHERE aap.application_id    = map.app_id
   AND aap.page_group_id     = map.PAGE_GROUP_ID
   AND map.mapping_type      = 'RESP'
   AND map.page_type         = 'GROUP'
   AND map.resp_id           = ses.ebs_resp_id
   AND ape.page_id(+)        = aap.page_id
   AND ape.application_id(+) = aap.application_id;


CREATE OR REPLACE FORCE VIEW A2E_SESSIONS_V (
  APEX_SESSION_ID
  , APEX_SESSION_CREATED
  , APEX_LANG_CODE
  , EBS_SESSION_ID
  , EBS_USER_ID
  , EBS_USER_NAME
  , EBS_EMPLOYEE_NAME
  , EBS_RESP_NAME
  , EBS_RESP_ID
  , EBS_RESP_APP_ID
  , EBS_ORG_ID
  , EBS_XSID
  , EBS_LANG_CODE
  , EBS_CREATION_DATE
  , EBS_LAST_UPDATE_DATE
  , IP_ADDRESS
  , APEX_ACCESS_DATE
  , APPLICATION_NAME
  , APEX_APP_ID
  , PAGE_NAME
  , APEX_PAGE_ID)
AS 
select ae.apex_session_id
  , ae.apex_session_created
  , ae.apex_lang_code
  , ae.ebs_session_id
  , ae.ebs_user_id
  , ae.ebs_user_name
  , ae.ebs_employee_name
  , aal.ebs_resp_name
  , aal.ebs_resp_id
  , aal.ebs_resp_app_id
  , aal.ebs_org_id
  , ae.ebs_xsid
  , ae.ebs_lang_code
  , ae.ebs_creation_date
  , ae.ebs_last_update_date
  , ae.ip_address
  , aal.apex_access_date
  , aap.application_name  
  , aal.apex_app_id
  , aap.page_name
  , aal.apex_page_id
  from a2e_sessions ae
  , a2e_access_log aal
  , apex_application_pages aap
 where 1=1
  and ae.apex_session_id = aal.apex_session_id(+)
  and aal.apex_app_id  = aap.application_id(+)
  and aal.apex_page_id = aap.page_id(+);
