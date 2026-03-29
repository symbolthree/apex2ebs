CREATE OR REPLACE package body APPS.fnd_apex as
   /* $Header: AFAPXAUB.pls 120.0.12020000.5 2024/11/08 15:01:32 jvalenti noship $ */


     l_user_id         NUMBER;
      l_user_name varchar2(100);
      l_resp_id         NUMBER;
      l_resp_appl_id    NUMBER;
      l_sec_group_id    NUMBER;
      l_org_id          NUMBER;
      l_time_out        NUMBER;
      l_appl_name       VARCHAR2(240);
      l_ebs_lang varchar2(10);
      l_function_id number;
      c_ebs_user_id varchar2(20) := 'EBS_USER_ID';
      c_ebs_lang varchar2(20) := 'EBS_LANG';
      c_application varchar2(20) := 'APPLICATION';

  /*
        This procedure is called to initialize the global security context for a database session_id
  */

  PROCEDURE apps_initialize(
        user_id IN NUMBER,
        resp_id IN NUMBER,
        resp_appl_id IN NUMBER,
        security_group_id IN NUMBER DEFAULT 0,
        server_id IN NUMBER DEFAULT -1) IS
   BEGIN
        fnd_global.apps_initialize(user_id, resp_id, resp_appl_id,security_group_id, server_id);
   END;

   /*
        This function is required to test whether the function id is accessible under current responsibility
   */

   FUNCTION function_test(function_id in number)
    RETURN BOOLEAN
   IS
    BEGIN
        RETURN fnd_function.TEST_ID(function_id);
    END;

  /*
        This function implements an APEX authentication scheme that can be used to validate a session based on a pre-existing EBS session available in icx_sessions.
   */


   FUNCTION authentication
      RETURN BOOLEAN
   IS
      return_value boolean;

      CURSOR get_session_context
      IS
         SELECT iss.user_id
         ,      iss.responsibility_id
         ,      iss.responsibility_application_id
         ,      iss.security_group_id
         ,      iss.org_id
         ,      iss.time_out
         , iss.language_code
         , iss.function_id
         FROM  icx_sessions iss
         ,     icx_session_attributes isa
         WHERE iss.session_id = icx_sec.getsessioncookie
         AND   isa.session_id = iss.session_id
         AND   isa.name = '_USERORSSWAPORTALURL';

   BEGIN
      OPEN get_session_context;
      FETCH get_session_context
      INTO l_user_id
      ,    l_resp_id
      ,    l_resp_appl_id
      ,    l_sec_group_id
      ,    l_org_id
      ,    l_time_out
      , l_ebs_lang
      , l_function_id;

      IF get_session_context%NOTFOUND THEN
         return_value:= FALSE;
      ELSE

        if l_resp_id <> 0 then
           apps_initialize(l_user_id, l_resp_id,l_resp_appl_id, l_sec_group_id);

           select user_name into l_user_name
           from fnd_user
           where user_id = l_user_id;

           EXECUTE IMMEDIATE 'BEGIN APEX_CUSTOM_AUTH.SET_USER(:1); END;' using in l_user_name;

           return_value:= TRUE;


        else
           return_value:= FALSE;
        end if;

      END IF;

      IF get_session_context%ISOPEN THEN
         CLOSE get_session_context;
      END IF;
      return return_value;

     EXCEPTION
      WHEN OTHERS THEN
         IF get_session_context%ISOPEN THEN
           CLOSE get_session_context;
         END IF;
         RETURN FALSE;

   END;

  /*
        This function implements an APEX authorization scheme that can be used to verify if a an authenticated user has authorization to access the function being invoked.
   */


   FUNCTION authorization
      RETURN BOOLEAN
   IS
   BEGIN

      if authentication then
        EXECUTE IMMEDIATE 'BEGIN apex_util.set_session_max_idle_seconds(LEAST(:1*60,28800),:2); END;' USING IN l_time_out,c_application;
        return function_test(l_function_id);
      else
        return FALSE;
      end if;

   EXCEPTION
    WHEN OTHERS THEN
       RETURN FALSE;

   END;
end fnd_apex;

/

