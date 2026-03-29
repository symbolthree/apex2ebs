REM $Header: ADAPEXSCHREG.sql 120.0.12020000.7 2025/04/01 02:19:57 vpalakur noship $
REM dbdrv: none
REM +=============================================================================+
REM | Copyright (c) 2013, 2025 Oracle Corporation Redwood Shores, California, USA |
REM | All rights reserved.                                                        |
REM +=============================================================================+
REM | FILENAME
REM |   ADAPEXSCHREG.sql
REM |
REM | DESCRIPTION
REM |   This script allows the registration of a custom APEX schema associated with
REM |    an APEX workspace with EBS.
REM |
REM |  It performs the following actions:
REM |   - Validates if the schema exists and is associated with an APEX workspace.
REM |   - Editions enable the schema if it has not already been editioned.
REM |   - Adds the schema to fnd_oracle_users table with a flag (K),
REM |      identifying it as an external schema.
REM |   - Grant basic permissions to this schema to support the integration.
REM |
REM | ARGUMENTS
REM |    The name of the schema to be registered must be passed as the first
REM |     parameter to this script. If not passed, you will be prompted for this
REM |     first required parameter.
REM |
REM | Usage:
REM |  sqlplus /nolog @$AD_TOP/patch/115/sql/ADAPEXSCHREG.sql <APEX_Schema_Name>
REM |
REM +=============================================================================+

SET VERIFY OFF;
WHENEVER SQLERROR EXIT FAILURE ROLLBACK;
WHENEVER OSERROR EXIT FAILURE ROLLBACK;

prompt The name of the schema to be registered must be  passed  as  the  first
prompt  parameter to this script. If not passed, you will be prompted for this
prompt  first required parameter.

define SchemaToRegister = '&&1';

prompt
prompt Begin Registration of &SchemaToRegister schema in EBS .....
prompt
prompt Need to connect as EBS_SYSTEM user to perform the initial registration of the schema in EBS ...
prompt
accept pswd char prompt 'Enter EBS_SYSTEM password: ' HIDE
connect EBS_SYSTEM/&pswd

prompt
prompt Validating the existence of the schema &SchemaToRegister in database ...
declare
  l_count number;
begin

  select count(1) into l_count from APEX_Workspace_Schemas where schema = upper('&SchemaToRegister');
  if(l_count < 1) then
    select count(1) into l_count from dba_users where username = upper('&SchemaToRegister');
    if(l_count < 1) then
      raise_application_error(-20001,'Validation Error: Schema <&SchemaToRegister> is not found. Cannot Proceed! '||sqlerrm||' ');
    end if;
  end if;
exception
  when others then
     raise_application_error(-20001,'Error occurred while validating schema name : '||sqlerrm||' ');
end;
/

prompt
prompt Schema &SchemaToRegister must be enabled with editions in EBS Release 12.2 or later. Enabling the schema ...
alter user &SchemaToRegister enable editions
/

prompt
prompt Need to connect to APPS user to complete the registration of the schema in EBS ...
prompt
accept apps_user char prompt 'Enter APPS username : '
accept apps_pswd char prompt 'Enter APPS  password: ' HIDE
Connect &apps_user/&apps_pswd

prompt
prompt Registering the schema &SchemaToRegister in fnd_oracle_userid ...

declare
  l_var varchar2(30);
begin
  fnd_oracle_user_pkg.load_row('&SchemaToRegister','CUSTOM','INVALID','Apex Schema Description 1','N','K');
  fnd_oracle_user_pkg.load_row('APEX_PUBLIC_USER','CUSTOM','INVALID','Apex runtime user','N','K');
exception
   when others then
     raise_application_error(-20001,'Error while executing ADAPEXSCHREG script : '||sqlerrm||' ');
end;
/

prompt
prompt Granting privilege to execute fnd_apex package code for Schema &SchemaToRegister ...
grant execute on fnd_apex to &SchemaToRegister
/

prompt Registration of &SchemaToRegister schema in EBS is completed successfully.
COMMIT;
/
prompt
EXIT;

