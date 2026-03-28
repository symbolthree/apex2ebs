SET DEFINE '^'
SET CONCAT ON
SET CONCAT .
SET VERIFY OFF
SET TERMOUT OFF
SPOOL OFF
SET TERMOUT ON

COLUMN foo3 new_val logfile

select 'ebs-core-view-sql-'||to_char(sysdate,'yyyy-mm-dd_hh24-mi-ss')||'.log' foo3 from dual;

spool ^logfile

WHENEVER SQLERROR EXIT FAILURE;

DECLARE
    v_user VARCHAR2(30);
BEGIN
    SELECT USER INTO v_user FROM dual;

    IF v_user <> 'APPS' THEN
        raise_application_error(-20001, 'ERROR: This script must be run as APPS user. Current user: ' || v_user);
    END IF;
END;
/


PROMPT .
PROMPT ... CREATE OBJECTS FOR USE IN APEX APPLICATIONS
PROMPT .

CREATE OR REPLACE VIEW A2E_EBS_INSTANCE_INFO (
INSTANCE_NAME,
RELEASE_NAME,
DB_NODE_NAME,
DB_HOST,
DB_VERSION,
DB_PLATFORM_NAME,
DB_DOMAIN,
DB_ADDRESS,
SERVER_ID
) AS
  SELECT UPPER(VI.INSTANCE_NAME) INSTANCE_NAME
       , FPG.RELEASE_NAME
       , FN.NODE_NAME
       , VI.HOST_NAME
       , VI.VERSION DB_VERSION
	   , VD.PLATFORM_NAME
	   , FN.DOMAIN
	   , NVL(FN.SERVER_ADDRESS, FN.VIRTUAL_IP) SERVER_ADDRESS
	   , FN.SERVER_ID
    FROM FND_PRODUCT_GROUPS FPG
       , V$INSTANCE         VI
       , V$DATABASE         VD
       , FND_NODES          FN
   WHERE UPPER(FPG.APPLICATIONS_SYSTEM_NAME) = UPPER(VI.INSTANCE_NAME)
     AND UPPER(VD.NAME) = UPPER(VI.INSTANCE_NAME)
     AND FN.SUPPORT_DB='Y';

CREATE OR REPLACE VIEW A2E_FND_LANGUAGES AS
  SELECT A.LANGUAGE_ID
       , A.LANGUAGE_CODE
       , A.NLS_LANGUAGE
       , A.NLS_TERRITORY
       , A.ISO_LANGUAGE
       , A.ISO_TERRITORY
       , A.INSTALLED_FLAG
       , B.LANGUAGE
       , B.DESCRIPTION
    FROM FND_LANGUAGES A
       , FND_LANGUAGES_TL B
  WHERE A.LANGUAGE_CODE = B.LANGUAGE_CODE
    AND A.INSTALLED_FLAG IN ('B', 'I')
    AND B.LANGUAGE = A.LANGUAGE_CODE;


CREATE OR REPLACE VIEW A2E_SESSION_INFO AS
	SELECT iss.SESSION_ID
    , iss.USER_ID
    , fu.USER_NAME
    , iss.MODE_CODE
    , iss.HOME_URL
    , iss.RESPONSIBILITY_ID
    , frt.RESPONSIBILITY_NAME
    , iss.RESPONSIBILITY_APPLICATION_ID application_id
    , fu.employee_id
    , papf.full_name
    , iss.ORG_ID
    , haou.NAME ORG_NAME
    , iss.MENU_ID
    , iss.FUNCTION_ID
    , ffft.USER_FUNCTION_NAME
    , iss.NLS_LANGUAGE
    , iss.DATE_FORMAT_MASK
    , iss.COUNTER
    , iss.FIRST_CONNECT
    , iss.LAST_CONNECT
    , iss.LIMIT_TIME
    , iss.LIMIT_CONNECTS
    , iss.DISABLED_FLAG
    , iss.PSEUDO_FLAG
    , iss.CREATED_BY
    , iss.CREATION_DATE
    , iss.LAST_UPDATED_BY
    , iss.LAST_UPDATE_DATE
    , iss.LAST_UPDATE_LOGIN
    , iss.WINDOW_ID
    , iss.SECURITY_GROUP_ID
    , iss.FUNCTION_TYPE
    , iss.LANGUAGE_CODE
    , iss.NLS_DATE_LANGUAGE
    , iss.NLS_NUMERIC_CHARACTERS
    , iss.NLS_SORT
    , iss.NLS_TERRITORY
    , iss.PAGE_ID
    , iss.LOGIN_ID
    , iss.NODE_ID
    , iss.MAC_KEY
    , iss.ENC_KEY
    , iss.XSID
    , iss.TIME_OUT
    , iss.GUEST
    , iss.DISTRIBUTED
    , iss.PROXY_USER_ID
    , isa.NAME   attribute_name
    , isa.VALUE  attribute_value
  FROM ICX_SESSIONS iss
     , ICX_SESSION_ATTRIBUTES isa
     , FND_RESPONSIBILITY fr
     , FND_RESPONSIBILITY_TL frt
     , FND_USER fu
     , FND_FORM_FUNCTIONS_TL ffft
     , HR_ALL_ORGANIZATION_UNITS haou
     , PER_ALL_PEOPLE_F papf
 WHERE 1=1
   AND iss.SESSION_ID = isa.SESSION_ID
   AND isa.NAME = '_USERORSSWAPORTALURL'
   AND fu.USER_ID = iss.USER_ID
   AND decode(iss.RESPONSIBILITY_ID,-1, null, iss.RESPONSIBILITY_ID) = fr.RESPONSIBILITY_ID(+)
   AND fr.RESPONSIBILITY_ID  = frt.RESPONSIBILITY_ID(+)
   AND iss.LANGUAGE_CODE     = frt.LANGUAGE(+)
   AND iss.FUNCTION_ID       = ffft.FUNCTION_ID(+)
   AND iss.LANGUAGE_CODE     = ffft.LANGUAGE(+)
   AND fu.EMPLOYEE_ID        = papf.person_id(+)
   AND sysdate between papf.EFFECTIVE_START_DATE(+) and papf.EFFECTIVE_END_DATE(+)
   AND iss.ORG_ID = haou.ORGANIZATION_ID(+);

CREATE OR REPLACE VIEW A2E_USER_RESP AS
  SELECT tab1.user_id
       , tab1.user_name
       , tab4.responsibility_name
       , tab3.responsibility_key
       , tab5.application_short_name
       , tab4.language
       , tab3.responsibility_id
       , tab3.application_id
    FROM fnd_user                tab1
       , fnd_user_resp_groups_all tab2
       , fnd_responsibility   tab3
       , fnd_responsibility_tl tab4
       , fnd_application tab5
   WHERE 1=1
     AND tab1.user_id = tab2.user_id
     AND tab3.application_id = tab2.responsibility_application_id
     and tab3.responsibility_id = tab4.responsibility_id
     and tab3.application_id = tab4.application_id
     and tab4.language='US'
     AND tab3.responsibility_id = tab2.responsibility_id
     AND tab1.start_date <= SYSDATE AND NVL (tab1.end_date, SYSDATE + 1) > SYSDATE     
     AND tab2.start_date <= SYSDATE AND NVL (tab2.end_date, SYSDATE + 1) > SYSDATE
     AND tab3.start_date <= SYSDATE AND NVL (tab3.end_date, SYSDATE + 1) > SYSDATE
     AND tab3.version IN ('4', 'W', 'M')
     AND tab4.application_id = tab5.application_id;

CREATE OR REPLACE VIEW A2E_USERS AS
 SELECT fu.USER_ID
      , fu.USER_NAME
      , fu.EMPLOYEE_ID
      , fu.EMAIL_ADDRESS
      , v1.FULL_NAME
   FROM FND_USER fu
      , (SELECT PERSON_ID, FULL_NAME 
	       FROM PER_ALL_PEOPLE_F papf
		   WHERE EFFECTIVE_START_DATE = (
		     SELECT MAX(EFFECTIVE_START_DATE) 
			   FROM PER_ALL_PEOPLE_F 
		      WHERE PERSON_ID = papf.PERSON_ID)
		) v1
  WHERE fu.EMPLOYEE_ID = v1.PERSON_ID(+);
  
CREATE OR REPLACE VIEW A2E_RESPONSIBILITY AS
select fr.APPLICATION_ID  
     , fa.APPLICATION_SHORT_NAME
     , fr.RESPONSIBILITY_ID
     , fr.RESPONSIBILITY_KEY
     , frt.RESPONSIBILITY_NAME
     , frt.LANGUAGE
     , fr.MENU_ID
     , fm.MENU_NAME
     , fmt.USER_MENU_NAME
  from FND_RESPONSIBILITY fr
     , FND_RESPONSIBILITY_TL frt
     , FND_APPLICATION fa
     , FND_MENUS fm
     , FND_MENUS_TL fmt
 WHERE fr.responsibility_id = frt.responsibility_id
   AND fr.MENU_ID = fm.MENU_ID
   AND fm.MENU_ID = fmt.MENU_ID
   AND fr.APPLICATION_ID = fa.APPLICATION_ID
   AND fmt.LANGUAGE = frt.LANGUAGE;
   
   
CREATE OR REPLACE VIEW A2E_PROFILE_OPTIONS AS
	 SELECT fpo.profile_option_id,
		   fpo.profile_option_name           profile_option,
		   fpot.user_profile_option_name     profile_option_name,
		   fpov.level_id                     level_id,
		   'SITE'                            level_name,
		   NULL                              level_value_id,
		   ''                                level_value,               
		   fpov.profile_option_value         option_value,
		   fpov.creation_date                creation_date,
		   fu2.user_name                     created_by,
		   fpov.last_update_date             last_update_date,
		   fu2.user_name                     last_updated_by
	  FROM FND_PROFILE_OPTIONS_TL     fpot,
		   FND_PROFILE_OPTIONS        fpo,
		   FND_PROFILE_OPTION_VALUES  fpov,
		   FND_USER                   fu,
		   FND_USER                   fu2
	 WHERE     1 = 1
		   AND fpot.profile_option_name = fpo.profile_option_name
		   AND fpo.application_id = fpov.application_id
		   AND fpo.profile_option_id = fpov.profile_option_id
		   AND fpov.created_by = fu.user_id
		   AND fpot.language = 'US'
		   AND fpov.level_id = 10001
		   AND fpov.last_updated_by = fu2.user_id
	UNION ALL
	SELECT fpo.profile_option_id,
		   fpo.profile_option_name           profile_option,
		   fpot.user_profile_option_name     profile_option_name,
		   fpov.level_id                     level_id,               
		   'APPLICATION'                     level_name,
		   fa.application_id                 level_value_id,
		   fa.application_name               level_value,
		   fpov.profile_option_value         option_value,
		   fpov.creation_date                creation_date,
		   fu2.user_name                     created_by,
		   fpov.last_update_date             last_update_date,
		   fu2.user_name                     last_updated_by
	  FROM FND_PROFILE_OPTIONS_TL     fpot,
		   FND_PROFILE_OPTIONS        fpo,
		   FND_PROFILE_OPTION_VALUES  fpov,
		   FND_USER                   fu,
		   FND_USER                   fu2,
		   FND_APPLICATION_TL         fa
	 WHERE     1 = 1
		   AND fpot.profile_option_name = fpo.profile_option_name
		   AND fpo.profile_option_id = fpov.profile_option_id
		   AND fpov.created_by = fu.user_id
		   AND fpot.language = 'US'
		   AND fa.language = 'US'
		   AND fpov.level_id = 10002
		   AND fpov.level_value = fa.application_id
		   AND fpov.last_updated_by = fu2.user_id
	UNION ALL
	SELECT fpo.profile_option_id,
		   fpo.profile_option_name           profile_option,
		   fpot.user_profile_option_name     profile_option_name,
		   fpov.level_id                     level_id,                  
		   'RESPONSIBILITY'                  level_name,
   		   frt.responsibility_id             level_value_id,
		   frt.responsibility_name           level_value,               
		   fpov.profile_option_value         option_value,
		   fpov.creation_date                creation_date,
		   fu2.user_name                     created_by,
		   fpov.last_update_date             last_update_date,
		   fu2.user_name                     last_updated_by
	  FROM FND_PROFILE_OPTIONS_TL     fpot,
		   FND_PROFILE_OPTIONS        fpo,
		   FND_PROFILE_OPTION_VALUES  fpov,
		   FND_USER                   fu,
		   FND_USER                   fu2,
		   FND_RESPONSIBILITY_TL      frt
	 WHERE     1 = 1
		   AND fpot.profile_option_name = fpo.profile_option_name
		   AND fpo.profile_option_id = fpov.profile_option_id
		   AND fpov.created_by = fu.user_id
		   AND frt.language = 'US'
		   AND fpot.language = 'US'
		   AND fpov.level_id = 10003
		   AND fpov.level_value = frt.responsibility_id
		   AND fpov.level_value_application_id = frt.application_id
		   AND fpov.last_updated_by = fu2.user_id
	UNION ALL
	SELECT fpo.profile_option_id,
		   fpo.profile_option_name           profile_option,
		   fpot.user_profile_option_name     profile_option_name,
		   fpov.level_id                     level_id,
		   'USER'                            level_name,
   		   fu.user_id                        level_value_id,		   
		   fu.user_name                      level_value,               
		   fpov.profile_option_value         option_value,
		   fpov.creation_date                creation_date,
		   fu2.user_name                     created_by,
		   fpov.last_update_date             last_update_date,
		   fu3.user_name                     last_updated_by
	  FROM FND_PROFILE_OPTIONS_TL     fpot,
		   FND_PROFILE_OPTIONS        fpo,
		   FND_PROFILE_OPTION_VALUES  fpov,
		   FND_USER                   fu,
		   FND_USER                   fu2,
		   FND_USER                   fu3
	 WHERE     1 = 1
		   AND fpot.profile_option_name = fpo.profile_option_name
		   AND fpo.profile_option_id = fpov.profile_option_id
		   AND fpov.created_by = fu.user_id
		   AND fpov.level_id = 10004
		   AND fpov.level_value = fu2.user_id
		   AND fpov.last_updated_by = fu3.user_id
		   AND fpot.language = 'US';

create or replace view A2E_ALL_ORGANIZATION_UNITS AS
select haou.organization_id
     , haou.NAME org_name
     , haou.BUSINESS_GROUP_ID
     , haou.LOCATION_ID
     , hl.LOCATION_CODE
     , haou.DATE_FROM
     , haou.DATE_TO
     , haou.INTERNAL_EXTERNAL_FLAG
     , haou.TYPE
     , ood.ORGANIZATION_CODE
     , ood.OPERATING_UNIT OPERATING_UNIT_ID
     , haou2.name OPERATING_UNIT
     , ood.LEGAL_ENTITY LEGAL_ENTITY_ID
     , haou3.name LEGAL_ENTITY
     , gl.ledger_id
     , gl.name ledger_name 
from hr_all_organization_units haou
   , hr_locations hl
   , ORG_ORGANIZATION_DEFINITIONS ood
   , gl_ledgers gl   
   , hr_all_organization_units haou2
   , hr_all_organization_units haou3
where 1=1
  and hl.location_id = haou.LOCATION_ID
  and ood.SET_OF_BOOKS_ID = gl.ledger_id(+) 
  and haou.organization_id = ood.organization_id(+)
  and ood.OPERATING_UNIT = haou2.organization_id(+)
  and ood.OPERATING_UNIT = haou2.organization_id(+) 
  and ood.LEGAL_ENTITY = haou3.organization_id(+);

CREATE OR REPLACE VIEW A2E_PROFILE_OPTION_VALUES AS
SELECT fpo.profile_option_id,
	   fpo.profile_option_name           profile_option,
	   fpot.user_profile_option_name     profile_option_name,
	   fpot.language                     language,
	   fpov.level_id                     level_id,
	   'SITE'                            level_name,
	   NULL                              level_value_id,			   
	   ''                                level_value,
	   fpov.profile_option_value         option_value,
	   fpov.creation_date                creation_date,
	   fu2.user_name                     created_by,
	   fpov.last_update_date             last_update_date,
	   fu2.user_name                     last_updated_by
  FROM FND_PROFILE_OPTIONS_TL     fpot,
	   FND_PROFILE_OPTIONS        fpo,
	   FND_PROFILE_OPTION_VALUES  fpov,
	   FND_USER                   fu,
	   FND_USER                   fu2
 WHERE     1 = 1
	   AND fpot.profile_option_name = fpo.profile_option_name
	   AND fpo.application_id = fpov.application_id
	   AND fpo.profile_option_id = fpov.profile_option_id
	   AND decode(fpov.created_by,1,0,fpov.created_by) = fu.user_id
	   --AND fpot.language = 'US'
	   AND fpov.level_id = 10001
	   AND fpov.last_updated_by = fu2.user_id
UNION ALL
SELECT fpo.profile_option_id,
	   fpo.profile_option_name           profile_option,
	   fpot.user_profile_option_name     profile_option_name,
	   fpot.language                     language,
	   fpov.level_id                     level_id,
	   'APPLICATION'                     level_name,
	   fa.application_id                 level_value_id,			   
	   fa.application_name               level_value,
	   fpov.profile_option_value         option_value,
	   fpov.creation_date                creation_date,
	   fu2.user_name                     created_by,
	   fpov.last_update_date             last_update_date,
	   fu2.user_name                     last_updated_by
  FROM FND_PROFILE_OPTIONS_TL     fpot,
	   FND_PROFILE_OPTIONS        fpo,
	   FND_PROFILE_OPTION_VALUES  fpov,
	   FND_USER                   fu,
	   FND_USER                   fu2,
	   FND_APPLICATION_TL         fa
 WHERE     1 = 1
	   AND fpot.profile_option_name = fpo.profile_option_name
	   AND fpo.profile_option_id = fpov.profile_option_id
	   AND fpov.created_by = fu.user_id
	   --AND fpot.language = 'US'
	   AND fa.language = fpot.language
	   AND fpov.level_id = 10002
	   AND fpov.level_value = fa.application_id
	   AND fpov.last_updated_by = fu2.user_id
UNION ALL
SELECT fpo.profile_option_id,
	   fpo.profile_option_name           profile_option,
	   fpot.user_profile_option_name     profile_option_name,
	   fpot.language                     language,
	   fpov.level_id                     level_id,
	   'RESPONSIBILITY'                  level_name,
	   frt.responsibility_id             level_value_id,			   			   
	   frt.responsibility_name           level_value,
	   fpov.profile_option_value         option_value,
	   fpov.creation_date                creation_date,
	   fu2.user_name                     created_by,
	   fpov.last_update_date             last_update_date,
	   fu2.user_name                     last_updated_by
  FROM FND_PROFILE_OPTIONS_TL     fpot,
	   FND_PROFILE_OPTIONS        fpo,
	   FND_PROFILE_OPTION_VALUES  fpov,
	   FND_USER                   fu,
	   FND_USER                   fu2,
	   FND_RESPONSIBILITY_TL      frt
 WHERE     1 = 1
	   AND fpot.profile_option_name = fpo.profile_option_name
	   AND fpo.profile_option_id = fpov.profile_option_id
	   AND fpov.created_by = fu.user_id
	   --AND frt.language = 'US'
	   AND fpot.language = frt.language
	   AND fpov.level_id = 10003
	   AND fpov.level_value = frt.responsibility_id
	   AND fpov.level_value_application_id = frt.application_id
	   AND fpov.last_updated_by = fu2.user_id
UNION ALL
SELECT fpo.profile_option_id,
	   fpo.profile_option_name           profile_option,
	   fpot.user_profile_option_name     profile_option_name,
	   fpot.language                     language,
	   fpov.level_id                     level_id,
	   'USER'                            level_name,
	   fu.user_id                        level_value_id,		   			   
	   fu.user_name                      level_value,
	   fpov.profile_option_value         option_value,
	   fpov.creation_date                creation_date,
	   fu2.user_name                     created_by,
	   fpov.last_update_date             last_update_date,
	   fu3.user_name                     last_updated_by
  FROM FND_PROFILE_OPTIONS_TL     fpot,
	   FND_PROFILE_OPTIONS        fpo,
	   FND_PROFILE_OPTION_VALUES  fpov,
	   FND_USER                   fu,
	   FND_USER                   fu2,
	   FND_USER                   fu3
 WHERE     1 = 1
	   AND fpot.profile_option_name = fpo.profile_option_name
	   AND fpo.profile_option_id = fpov.profile_option_id
	   AND fpov.created_by = fu.user_id
	   AND fpov.level_id = 10004
	   AND fpov.level_value = fu2.user_id
	   AND fpov.last_updated_by = fu3.user_id;

CREATE OR REPLACE VIEW A2E_USER_RESPS_V AS
select
   fu1.user_id
     , fu1.employee_id
     , papf2.employee_number EMPLOYEE_NUMBER
     , fu1.user_name USER_NAME
     , fu1.description USER_DESCRIPTION
     , papf2.full_name EMPLOYEE_NAME
     , papf2.business_group
     , fu1.email_address EMAIL_ADDRESS
     , fu1.start_date "USER_START_DATE"
     , fu1.end_date "USER_END_DATE"
     , fu1.password_date "PASSWORD_RESET_DATE"
     , fu1.creation_date "USER_CREATION_DATE"
     , fu2.user_name "USER_CREATED_BY"
     , fu1.last_update_date "USER_LAST_UPDATE_DATE"
     , fu1.last_logon_date "USER_LAST_LOGON_DATE"
     , fu1.password_date "USER_PASSWORD_DATE"
     , fu3.user_name USER_LAST_UPDATED_BY
     , resp.RESPONSIBILITY_KEY RESPONSIBILITY_KEY
     , resptl.responsibility_name RESPONSIBILITY_NAME
     , furgd.start_date "RESP_START_DATE"
     , furgd.end_date "RESP_END_DATE"
     , furgd.creation_date "RESP_CREATION_DATE"
     , fu4.user_name "RESP_CREATED_BY"
     , furgd.last_update_date "RESP_LAST_UPDATE_DATE"
     , fu5.user_name  "RESP_LAST_UPDATD_BY"
	 , resptl.language LANGUAGE
  from fnd_user fu1
     , (select max(papf.full_name) full_name
             , papf.person_id
             , haou.name business_group
             , max(papf.employee_number) employee_number
             , max(papf.effective_start_date)
         from per_all_people_f papf
            , hr_all_organization_units haou
        where papf.BUSINESS_GROUP_ID = haou.organization_id
        group by person_id, haou.name) papf2
     , fnd_user fu2
     , fnd_user fu3
     , fnd_user_resp_groups_direct furgd
     , fnd_responsibility resp
     , fnd_responsibility_tl resptl
     , fnd_user fu4
     , fnd_user fu5
 where 1=1
   and fu1.employee_id = papf2.person_id(+)
   and fu2.user_id = fu1.created_by
   and fu3.user_id = fu1.last_updated_by
   and furgd.user_id = fu1.user_id
   and resp.responsibility_id = furgd.responsibility_id
   and resp.application_id = furgd.responsibility_application_id
   and resptl.responsibility_id = resp.responsibility_id
   and resptl.application_id = resp.application_id
   --and resptl.language = 'US'
   and fu4.user_id = furgd.created_by
   and fu5.user_id = furgd.last_updated_by;


create or replace VIEW A2E_EMPLOYEE_DETAILS_V AS
select papf1.person_id
     , haou.name business_group
     , papf1.employee_number
     , papf1.first_name
     , papf1.middle_names
     , papf1.last_name
     , papf1.start_date
     , papf1.email_address
     , papf1.sex
     , floor((sysdate-papf1.DATE_OF_BIRTH)/365) age
     , ( select PHONE_NUMBER from per_phones 
         where parent_id=papf1.person_id 
           and parent_table='PER_ALL_PEOPLE_F' 
           and phone_type='W1'
           and rownum < 2) phone_no,
      (SELECT name FROM per_jobs WHERE job_id = paaf.job_id) job_name,
      (SELECT name FROM per_all_positions WHERE position_id = paaf.position_id) position_name,
      (SELECT location_code FROM hr_locations_all WHERE location_id = paaf.location_id) employee_location,
      mgr.employee_number supervisior_number,
      mgr.full_name supervisior_name           
     from per_all_people_f papf1
        , hr_all_organization_units haou
        , per_all_assignments_f paaf
        , (select person_id, employee_number, full_name
                  from per_all_people_f papf2
                  where 1=1
                    and effective_start_date = (select max(effective_start_date) from per_all_people_f where person_id = papf2.person_id)) mgr        
 where 1=1
   --and papf1.person_id=12
   and papf1.effective_start_date = (select max(effective_start_date) from per_all_people_f where person_id=papf1.person_id)
   and paaf.effective_start_date = (select max(effective_start_date) from per_all_assignments_f where person_id=paaf.person_id)
   and haou.organization_id = papf1.business_group_id
   and papf1.person_id = paaf.person_id
   and paaf.supervisor_id=mgr.person_id(+)
   and paaf.ASSIGNMENT_NUMBER is not null;


CREATE OR REPLACE VIEW A2E_PRICE_LIST_LINES AS
SELECT F.OPERATING_UNIT
      , C.ORGANIZATION_ID
	 , F.ORGANIZATION_CODE
	 , F.ORGANIZATION_NAME
     , A.LIST_HEADER_ID
     , D.GLOBAL_FLAG
     , D.ORIG_ORG_ID
     , E.NAME PRICE_LIST
     , C.INVENTORY_ITEM_ID
     , C.SEGMENT1
     , B.PRODUCT_UOM_CODE UOM
     , C.DESCRIPTION
     , D.CURRENCY_CODE
     , A.OPERAND
     , A.START_DATE_ACTIVE
     , A.END_DATE_ACTIVE
     , A.LIST_LINE_ID
	 , E.LANGUAGE 
  FROM QP_LIST_LINES         A
     , QP_PRICING_ATTRIBUTES B
     , MTL_SYSTEM_ITEMS_B    C
     , QP_LIST_HEADERS_B     D
     , QP_LIST_HEADERS_TL    E
	 , ORG_ORGANIZATION_DEFINITIONS F
 WHERE 1=1
   AND A.PRICE_BREAK_TYPE_CODE IS NULL  
   AND B.LIST_LINE_ID       = A.LIST_LINE_ID  
   AND B.PRODUCT_ATTR_VALUE = TO_CHAR(C.INVENTORY_ITEM_ID)  
   AND B.PRODUCT_ATTRIBUTE_CONTEXT = 'ITEM'   
   AND A.LIST_HEADER_ID     = D.LIST_HEADER_ID  
   AND D.LIST_HEADER_ID     = E.LIST_HEADER_ID  
   AND E.LANGUAGE           = 'US'
   AND A.ARITHMETIC_OPERATOR = 'UNIT_PRICE'  
   AND A.PRICE_BY_FORMULA_ID IS NULL
   AND F.ORGANIZATION_ID = C.ORGANIZATION_ID;

CREATE OR REPLACE function APPS.A2E_AUTHENTICATION_WRAPPER(
  in_username varchar2
, in_password varchar2) return varchar2 is

p_sqlStmt varchar2(100);
p_rtnVal  boolean := FALSE;

BEGIN
 p_sqlStmt := 'BEGIN :rtnVal := APPS.FND_USER_PKG.VALIDATELOGIN(:user, :pass); END;';

EXECUTE IMMEDIATE p_sqlStmt
   USING OUT p_rtnVal, IN in_username, in_password;

IF p_rtnVal THEN
RETURN 'Y';
ELSE
RETURN 'N';
END IF;
END;
/

spool off
exit;


  