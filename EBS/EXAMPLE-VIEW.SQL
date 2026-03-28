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
	   AND fpov.last_updated_by = fu3.user_id
/	   

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
   and fu5.user_id = furgd.last_updated_by
/   
   --and fu1.user_id=       1002926
   --and resp.RESPONSIBILITY_KEY = 'BIS_FIS'
   --and resptl.responsibility_name like 'Vision%Payable%'
   --and fu1.user_name = 'MFG'


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
   and paaf.ASSIGNMENT_NUMBER is not null
/


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
   --AND A.LIST_HEADER_ID     = 1021  
   --AND C.INVENTORY_ITEM_ID  = DECODE(NVL(:P211_ITEM,-1), -1, C.INVENTORY_ITEM_ID, :P211_ITEM)  
   --AND ((NVL(:P211_PRICE_LIST,-1) <> -1) OR (NVL(:P211_ITEM,-1) <> -1))  
   --AND C.ORGANIZATION_ID    = 204  
   AND A.PRICE_BREAK_TYPE_CODE IS NULL  
   AND B.LIST_LINE_ID       = A.LIST_LINE_ID  
   AND B.PRODUCT_ATTR_VALUE = TO_CHAR(C.INVENTORY_ITEM_ID)  
   AND B.PRODUCT_ATTRIBUTE_CONTEXT = 'ITEM'   
   AND A.LIST_HEADER_ID     = D.LIST_HEADER_ID  
   AND D.LIST_HEADER_ID     = E.LIST_HEADER_ID  
   AND E.LANGUAGE           = 'US'
   AND A.ARITHMETIC_OPERATOR = 'UNIT_PRICE'  
   AND A.PRICE_BY_FORMULA_ID IS NULL
   AND F.ORGANIZATION_ID = C.ORGANIZATION_ID
   /
--order by E.NAME, C.SEGMENT1, NVL(A.START_DATE_ACTIVE, '01-JAN-1900');