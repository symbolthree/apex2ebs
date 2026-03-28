SET DEFINE '^'
SET CONCAT ON
SET CONCAT .
SET VERIFY OFF
SET TERMOUT OFF
SPOOL OFF
SET TERMOUT ON

COLUMN foo3 new_val logfile

select 'ebs-core-grant-sql-'||to_char(sysdate,'yyyy-mm-dd_hh24-mi-ss')||'.log' foo3 from dual;

spool ^logfile

prompt .
prompt .
accept APEX char prompt '. APEX2EBS Connection Schema: '
prompt .

WHENEVER SQLERROR EXIT FAILURE;

DECLARE
    v_user VARCHAR2(30);
	v_apexUser VARCHAR2(30) := '^APEX';
	v_msg VARCHAR2(100);
	
BEGIN
    SELECT USER INTO v_user FROM dual;

    IF v_user <> 'APPS' THEN
        raise_application_error(-20001, 'ERROR: This script must be run as APPS user. Current user: ' || v_user);
    END IF;
	
	IF v_apexUser IS NULL THEN
        raise_application_error(-20001, 'APEX2EBS Connection Schema is needed');
    END IF;
	
    SELECT 1 INTO v_msg FROM ALL_USERS WHERE USERNAME=upper(v_apexUser);

    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        raise_application_error(-20001, 'Schema ' || v_apexUser || ' not found');
END;
/

GRANT SELECT ON A2E_EBS_INSTANCE_INFO TO ^APEX;
GRANT SELECT ON A2E_FND_LANGUAGES TO ^APEX;
GRANT SELECT ON A2E_USER_RESP TO ^APEX;
GRANT SELECT ON A2E_USERS TO ^APEX;
GRANT SELECT ON A2E_RESPONSIBILITY TO ^APEX;
GRANT SELECT ON A2E_PROFILE_OPTION_VALUES TO ^APEX;
GRANT SELECT ON A2E_SESSION_INFO TO ^APEX;
GRANT SELECT ON A2E_ALL_ORGANIZATION_UNITS TO ^APEX;
GRANT SELECT ON ORG_ORGANIZATION_DEFINITIONS TO ^APEX;
GRANT SELECT ON A2E_USER_RESPS_V TO ^APEX;
GRANT SELECT ON A2E_EMPLOYEE_DETAILS_V TO ^APEX;
GRANT SELECT ON A2E_PRICE_LIST_LINES TO ^APEX;
GRANT EXECUTE ON A2E_AUTHENTICATION_WRAPPER TO ^APEX WITH GRANT OPTION;

SPOOL OFF
EXIT;  