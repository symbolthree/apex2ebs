prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>6656221143255473
,p_default_application_id=>101
,p_default_id_offset=>6658180855347832
,p_default_owner=>'APEX2EBS'
);
end;
/
 
prompt APPLICATION 101 - APEX2EBS
--
-- Application Export:
--   Application:     101
--   Name:            APEX2EBS
--   Date and Time:   19:42 Wednesday February 26, 2025
--   Exported By:     APEXADMIN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     13
--       Items:                   72
--       Validations:              6
--       Processes:               25
--       Regions:                 34
--       Buttons:                 11
--       Dynamic Actions:          3
--     Shared Components:
--       Logic:
--         Items:                  8
--         Processes:              1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 1
--         LOVs:                   2
--         Shortcuts:              1
--       PWA:
--       Globalization:
--         Messages:               6
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.0
--   Instance ID:     2255019920212809
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX2EBS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'APEX2EBS')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'APEX2EBS')
,p_application_group=>wwv_flow_imp.id(22737923776840099)
,p_application_group_name=>'APEX2EBS Group'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'9E8BFC13A7B741F3DA700DBFD4FC195FDDDC0959F5B8C094D764167A7D55007A'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_accessible_read_only=>'N'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'ITEM_PREFERENCE'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2020.11.14.'
,p_authentication_id=>wwv_flow_imp.id(19236025088723917)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'APEX2EBS'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'2.0.1.20210202'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_pass_ecid=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_friendly_url=>'N'
,p_substitution_string_01=>'GLOBAL_APP_NAME'
,p_substitution_value_01=>'APEX2EBS'
,p_substitution_string_02=>'GLOBAL_COPYRIGHT'
,p_substitution_value_02=>unistr('<a href="http://www.symbolthree.com">Copyright \00A9 symbolthree.com 2021</a>')
,p_substitution_string_03=>'GLOBAL_SUPPORT_PHONE'
,p_substitution_value_03=>'1-800-APEX2EBS'
,p_substitution_string_04=>'GLOBAL_SUPPORT_EMAIL'
,p_substitution_value_04=>'admin@symbolthree.com'
,p_substitution_string_05=>'LOGIN_COOKIE_NAME'
,p_substitution_value_05=>'APEX2EBS_LOGIN_COOKIE'
,p_substitution_string_06=>'LANG_COOKIE_NAME'
,p_substitution_value_06=>'APEX2EBS_LANG_COOKIE'
,p_substitution_string_07=>'APEX2EBS_BUILD_NO'
,p_substitution_value_07=>'2.0.1.20210202'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_version_scn=>10132988275627
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(101)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:101:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:101:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_navigation_list_id=>wwv_flow_imp.id(14450772109703353)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--classic'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(14450772109703353)
,p_nav_bar_list_template_id=>2526754704087354841
,p_nav_bar_template_options=>'#DEFAULT#:js-tabLike'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14450772109703353)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14600467253703446)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24337307351605757)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Back to EBS'
,p_list_item_link_target=>'f?p=&APP_ID.:198:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-redo-arrow'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select * from a2e_sessions where apex_session_id = :APP_SESSION AND EBS_SESSION_ID IS NOT NULL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24337589079606722)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14590238142703417)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14601943568703453)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14602471865703453)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(14601943568703453)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14602791330703453)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_imp.id(14601943568703453)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203634203634222077696474683D22363422206865696768743D223634223E3C726563742077696474683D2231303025';
wwv_flow_imp.g_varchar2_table(2) := '22206865696768743D2231303025222066696C6C3D222343413538394422202F3E3C67206F7061636974793D222E32223E3C7061746820643D224D333220323661322E3520322E3520302031203020322E3520322E3541322E35303320322E3530332030';
wwv_flow_imp.g_varchar2_table(3) := '203020302033322032367A6D30203461312E3520312E3520302031203120312E352D312E3541312E35303220312E3530322030203020312033322033307A222F3E3C7061746820643D224D34322E3533362033362E3832386C2D322E3637332D322E3637';
wwv_flow_imp.g_varchar2_table(4) := '324131382E3937332031382E39373320302030203020343020333263302D352E3835352D322E3732332D31312E3439332D372E3636382D31352E383734612E352E352030203020302D2E36363420304332362E3732332032302E3530372032342032362E';
wwv_flow_imp.g_varchar2_table(5) := '3134352032342033326131382E3937332031382E393733203020302030202E31333720322E3135366C2D322E36373320322E36373341342E39363720342E3936372030203020302032302034302E3336345634372E35612E352E35203020302030202E35';
wwv_flow_imp.g_varchar2_table(6) := '2E3568312E30373561332E30303220332E30303220302030203020312E3935322D2E3732326C342E332D332E363835632E3431312E3538322E38343720312E31353520312E33323220312E37313261322E30303120322E30303120302030203020312E35';
wwv_flow_imp.g_varchar2_table(7) := '32372E363935682E38323476312E35612E352E3520302030203020312030563436682E38323461322E30303120322E30303120302030203020312E3532372D2E3639352032332E37382032332E373820302030203020312E3332332D312E3731326C342E';
wwv_flow_imp.g_varchar2_table(8) := '32393820332E36383461332E30303220332E30303220302030203020312E3935332E3732334834332E35612E352E35203020302030202E352D2E35762D372E31333661342E393720342E39372030203020302D312E3436342D332E3533367A4D33322031';
wwv_flow_imp.g_varchar2_table(9) := '372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E3839372030203020312033322031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E33';
wwv_flow_imp.g_varchar2_table(10) := '2E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E33303120302030203020322E39353920372E3335377A6D31312E3231342D312E383633';
wwv_flow_imp.g_varchar2_table(11) := '61312E30313420312E3031342030203020312D2E3736362E3334344833322E35762D392E35612E352E352030203020302D312030563435682D2E38323461312E30313420312E3031342030203020312D2E3736362D2E3334344131392E342031392E3420';
wwv_flow_imp.g_varchar2_table(12) := '30203020312032352033326131382E3434362031382E34343620302030203120312E3835382D386831302E3238344131382E3434362031382E3434362030203020312033392033326131392E342031392E342030203020312D342E39312031322E363536';
wwv_flow_imp.g_varchar2_table(13) := '7A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E313420322E313441332E39373520332E393735203020';
wwv_flow_imp.g_varchar2_table(14) := '3020312034332034302E3336347A222F3E3C2F673E3C7061746820643D224D33322031372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E383937203020302031203332';
wwv_flow_imp.g_varchar2_table(15) := '2031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E332E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E';
wwv_flow_imp.g_varchar2_table(16) := '33303120302030203020322E39353920372E3335377A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E31';
wwv_flow_imp.g_varchar2_table(17) := '3420322E313441332E39373520332E3937352030203020312034332034302E3336347A222066696C6C3D222366636662666122206F7061636974793D222E34222F3E3C7061746820643D224D33372E3134322032344832362E3835384131382E34343620';
wwv_flow_imp.g_varchar2_table(18) := '31382E3434362030203020302032352033326131392E342031392E3420302030203020342E39312031322E36353620312E30313420312E303134203020302030202E3736362E333434682E383234762D392E35612E352E35203020302031203120305634';
wwv_flow_imp.g_varchar2_table(19) := '35682E38323461312E30313420312E303134203020302030202E3736362D2E3334344131392E342031392E342030203020302033392033326131382E3434362031382E3434362030203020302D312E3835382D387A4D333220333161322E3520322E3520';
wwv_flow_imp.g_varchar2_table(20) := '302031203120322E352D322E3541322E35303320322E3530332030203020312033322033317A222066696C6C3D222366666622206F7061636974793D222E3935222F3E3C7061746820643D224D333220333061312E3520312E3520302031203120312E35';
wwv_flow_imp.g_varchar2_table(21) := '2D312E3541312E35303220312E3530322030203020312033322033307A222066696C6C3D222366636662666122206F7061636974793D222E36222F3E3C2F7376673E';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(14591511526703425)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234341353839443B0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(14591808340703427)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6658709403347979)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>2356411
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7459647178385649)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8127829979290563)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>10132925498554
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8145371720395574)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8148422196404394)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>10132964684739
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8150266357404394)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>10132964684739
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8152065178404394)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>10132964684739
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8672171313897092)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14447496805703350)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14448088859703352)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14448455707703352)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14448726396703352)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14449350748703352)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(14449641427703352)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/security/authorizations/apex2ebs_page_auth
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(26338141275946913)
,p_name=>'APEX2EBS Page Auth'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'  IF A2E_PAGE_AUTHORIZATION(',
'      :EBS_USER_ID, :EBS_RESP_ID, :APP_ID, :APP_PAGE_ID',
'    )=''Y'' THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;',
'',
''))
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Responsibility &EBS_RESP_NAME. or user &APP_USER. does not have permission to access this page.',
'(&EBS_USER_ID. / &EBS_RESP_ID. / &APP_ID. / &APP_PAGE_ID.)'))
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/update_session_info
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(26435774236061428)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Session Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'p_count NUMBER;',
'',
'BEGIN ',
'    SELECT COUNT(*)',
'     INTO p_count',
'     FROM A2E_ACCESS_LOG ',
'    WHERE APEX_SESSION_ID = :APP_SESSION',
'      AND EBS_RESP_ID     = :EBS_RESP_ID',
'      AND EBS_RESP_APP_ID = :EBS_RESP_APP_ID',
'      AND APEX_APP_ID     = :APP_ID',
'      AND APEX_PAGE_ID    = :APP_PAGE_ID; ',
'',
'    IF p_count = 0 THEN',
'      INSERT INTO A2E_ACCESS_LOG (',
'          APEX_SESSION_ID',
'        , APEX_ACCESS_DATE',
'        , EBS_RESP_ID',
'        , EBS_RESP_NAME',
'        , EBS_RESP_APP_ID',
'        , EBS_ORG_ID',
'        , APEX_APP_ID',
'        , APEX_PAGE_ID',
'      ) VALUES (',
'          :APP_SESSION',
'        , SYSDATE',
'        , :EBS_RESP_ID',
'        , :EBS_RESP_NAME',
'        , :EBS_RESP_APP_ID',
'        , :EBS_ORG_ID',
'        , :APP_ID',
'        , :APP_PAGE_ID',
'      );',
'',
'    ELSE',
'',
'      UPDATE A2E_ACCESS_LOG',
'         SET APEX_ACCESS_DATE = SYSDATE',
'       WHERE APEX_SESSION_ID = :APP_SESSION',
'         AND EBS_RESP_ID     = :EBS_RESP_ID',
'         AND EBS_RESP_APP_ID = :EBS_RESP_APP_ID',
'         AND APEX_APP_ID     = :APP_ID',
'         AND APEX_PAGE_ID    = :APP_PAGE_ID; ',
'         ',
'    END IF;    ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>':APP_PAGE_ID > 200'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(26338141275946913)
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_lang
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(19238047047766222)
,p_name=>'EBS_LANG'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_org_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(26235668480779685)
,p_name=>'EBS_ORG_ID'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_resp_app_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(19035979196676916)
,p_name=>'EBS_RESP_APP_ID'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_resp_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(19036142534678378)
,p_name=>'EBS_RESP_ID'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_resp_name
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(19036325604679517)
,p_name=>'EBS_RESP_NAME'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_url
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(19035723540675541)
,p_name=>'EBS_URL'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_user_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(19036513580680405)
,p_name=>'EBS_USER_ID'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_items/fsp_language_preference
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(29735963123727041)
,p_name=>'FSP_LANGUAGE_PREFERENCE'
,p_protection_level=>'N'
,p_escape_on_http_output=>'N'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(14595712118703436)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_imp.id(14595712118703436)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14596131907703438)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/yes_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(14617131155895541)
,p_lov_name=>'YES_NO'
,p_lov_query=>'.'||wwv_flow_imp.id(14617131155895541)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14617473694895550)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14617873297895550)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(14593729871703428)
,p_group_name=>'APEX2EBS Admin'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(14604482408797477)
,p_group_name=>'APEX2EBS Core'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(14450266396703353)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14450418171703353)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/a2e_standard
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(24737196089674713)
,p_theme_id=>42
,p_name=>'A2E Standard'
,p_internal_name=>'A2E_STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="f?p=&APP_ID.:102:&APP_SESSION.:::::" class="t-Header-logo-link">#LOGO#</a>',
'    </div>  ',
'    <div style="color:white;">',
'      <span class="t-Icon fa fa-user"></span>',
'      <span style="padding-right: 20px;">&APP_USER.</span>',
'      <span class="t-Icon fa fa-folder-open-o"></span>',
'      <span style="padding-right: 20px;">&EBS_RESP_NAME.</span>',
'      <!--',
'      <a style="color: #ffffff !important;" href="f?p=&APP_ID.:LOGOUT:&APP_SESSION.:::::">',
'        <span class="t-Icon fa fa-sign-out"></span>',
'        <span style="padding-right: 20px;">Sign Out</span>',
'      </a>',
'      -->',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(24737660117674719)
,p_page_template_id=>wwv_flow_imp.id(24737196089674713)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(24738133628674721)
,p_page_template_id=>wwv_flow_imp.id(24737196089674713)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(24738638762674721)
,p_page_template_id=>wwv_flow_imp.id(24737196089674713)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(24739173034674721)
,p_page_template_id=>wwv_flow_imp.id(24737196089674713)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(24739672003674721)
,p_page_template_id=>wwv_flow_imp.id(24737196089674713)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(24740107985674721)
,p_page_template_id=>wwv_flow_imp.id(24737196089674713)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(24740629392674721)
,p_page_template_id=>wwv_flow_imp.id(24737196089674713)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(14570711387703408)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(14569697936703405)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(24741164750674722)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(24737196089674713)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(32257287796614213)
,p_name=>'P102.NO_DISPLAY_ITEM'
,p_message_text=>'This responsibility does not have any item.'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(32257730464627291)
,p_name=>'P102.NO_DISPLAY_ITEM'
,p_message_language=>'fr-ca'
,p_message_text=>unistr('Cette responsabilit\00E9 n''a aucun article.')
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(32331684165062480)
,p_name=>'P102.NO_DISPLAY_ITEM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\8077\8CAC\6C92\6709\4EFB\4F55\9805\76EE\3002')
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(32258290195653303)
,p_name=>'P102.SELECT_RESP'
,p_message_text=>'Please select a responsibility.'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(32258549410657071)
,p_name=>'P102.SELECT_RESP'
,p_message_language=>'fr-ca'
,p_message_text=>unistr('Veuillez s\00E9lectionner une responsabilit\00E9')
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(32331819968062480)
,p_name=>'P102.SELECT_RESP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\9078\53D6\8077\8CAC')
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(14593563455703427)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/apex2ebs_authentication
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(19236025088723917)
,p_name=>'APEX2EBS Authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'APEX2EBS_PKG.LOGIN_AUTHENTICATION'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_cookie_name=>'&WORKSPACE_COOKIE.'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'EBS Connector'
,p_alias=>'CONNECTOR'
,p_step_title=>'&GLOBAL_APP_NAME. | EBS Connector'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14604482408797477)
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14605384711812637)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14606067350812643)
,p_plug_name=>'Debug Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'EBS_SESSION_ID = &EBS_SESSION_ID.',
'EBS_COOKIE = &EBS_COOKIE.',
'EBS_DB_ID  = &EBS_DB_ID.',
'TARGET_APP = &TARGET_APP.',
'TARGET_PAGE = &TARGET_PAGE.',
'DEBUG_MSG = &DEBUG_MSG.',
'ERROR_MSG = &ERROR_MSG.',
'</pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(21842299964285065)
,p_branch_name=>'Invalid Parameters Redirect'
,p_branch_action=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:101::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :EBS_SESSION_ID IS NULL ',
'OR :EBS_DB_ID IS NULL',
'OR :EBS_COOKIE IS NULL',
'OR :TARGET_APP IS NULL',
'OR :TARGET_PAGE IS NULL THEN',
'    RETURN TRUE;',
'ELSE',
'  RETURN FALSE;',
'END IF;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14605578971812638)
,p_name=>'EBS_SESSION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14605384711812637)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14605651445812639)
,p_name=>'EBS_COOKIE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14605384711812637)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14605694191812640)
,p_name=>'EBS_DB_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14605384711812637)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14605874509812641)
,p_name=>'TARGET_APP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14605384711812637)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14605911267812642)
,p_name=>'TARGET_PAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14605384711812637)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14606198297812645)
,p_name=>'DEBUG_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14606067350812643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30837841368595144)
,p_name=>'ERROR_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14606067350812643)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14606165599812644)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Parameters'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'sessionID   NUMBER;',
'cookie      VARCHAR2(50);',
'appID       VARCHAR2(30);',
'pageID      VARCHAR2(30);',
'instance    VARCHAR2(30);',
'username    VARCHAR2(100);',
'debugMsg    VARCHAR2(1000);',
'loginOrRedirect  VARCHAR2(1);',
'e_error exception;',
'begin',
'',
'sessionID := TO_NUMBER(:EBS_SESSION_ID);',
'cookie    := REPLACE(:EBS_COOKIE, ''^'', '':'');',
'appID     := :TARGET_APP;',
'pageID    := :TARGET_PAGE;',
'',
':DEBUG_MSG := ''Check DB Name'';',
'',
'SELECT EBS_INSTANCE INTO instance FROM A2E_INSTANCE_INFO;',
'',
'IF upper(instance) <> upper(NVL(:EBS_DB_ID, ''-99999'')) THEN',
'  apex_util.set_session_state(''ERROR_MSG'', ''This APEX2EBS instance can be used by EBS instance '' || instance || '' only.'');',
'  raise e_error;',
'END IF;',
'',
':DEBUG_MSG := ''Before call EBS_CONNECTOR'';   ',
'',
'  BEGIN',
'    APEX2EBS_PKG.EBS_CONNECTOR(sessionID, cookie, :APP_SESSION, appID, loginOrRedirect, debugMsg);',
'  EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_util.set_session_state(''ERROR_MSG'', sqlerrm);',
'    raise e_error;',
'  END;  ',
'',
':DEBUG_MSG := ''After call EBS_CONNECTOR - ['' || loginOrRedirect || '','' || debugMsg || '']'';',
'',
'SELECT EBS_USER_NAME',
'     , EBS_USER_ID',
'     , EBS_RESP_ID',
'     , EBS_RESP_APP_ID',
'     , EBS_RESP_NAME',
'     , EBS_LANG_CODE',
'  INTO userName',
'     , :EBS_USER_ID',
'     , :EBS_RESP_ID',
'     , :EBS_RESP_APP_ID',
'     , :EBS_RESP_NAME',
'     , :EBS_LANG',
'  FROM A2E_SESSIONS',
' WHERE APEX_SESSION_ID = :APP_SESSION',
'   AND EBS_SESSION_ID  = sessionID;',
'',
' UPDATE A2E_SESSIONS',
'    SET IP_ADDRESS = owa_util.get_cgi_env (''REMOTE_ADDR'')',
' WHERE APEX_SESSION_ID = :APP_SESSION',
'   AND EBS_SESSION_ID  = sessionID;',
'   ',
':DEBUG_MSG := ''After set application items, ready for login ['' || loginOrRedirect || '']'';',
'',
'IF loginOrRedirect  = ''L'' THEN',
'',
'    wwv_flow_custom_auth_std.post_login (',
'    P_UNAME      => userName,',
'    P_PASSWORD   => '''', ',
'    P_SESSION_ID => :APP_SESSION, ',
'    P_FLOW_PAGE  => appID || '':'' || pageID);',
'    ',
'END IF;',
'',
'IF loginOrRedirect  = ''R'' THEN',
'  owa_util.redirect_url(''f?p='' || appID || '':'' || pageID || '':'' || :APP_SESSION);',
'END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&ERROR_MSG.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7947984744464812
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>'APEX2EBS Setup'
,p_alias=>'SETUP'
,p_step_title=>'A2E Setup | &GLOBAL_APP_NAME.'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14604482408797477)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body {',
'    background-image: url(/i/apex_ui/img/rw/textures/texture-11.png) !important;',
'    background-color: #f1efed !important;',
'}'))
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14607704480812660)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P100_DB_LINK_VALID = ''N'' or :P100_DB_LINK_EXIST = ''N'''
,p_plug_display_when_cond2=>'SQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22558940010305784)
,p_plug_name=>'Title'
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>&GLOBAL_APP_NAME. Setup</h2></center>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22559054768305785)
,p_plug_name=>'<data>'
,p_icon_css_classes=>'fa-wrench'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--success:t-Alert--removeHeading'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P100_DB_LINK_VALID = ''N'' or :P100_DB_LINK_EXIST = ''N'''
,p_plug_display_when_cond2=>'SQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30836933225595135)
,p_plug_name=>'Language Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P100_DB_LINK_VALID = ''Y'' and :P100_DB_LINK_EXIST = ''Y'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(29738655984763457)
,p_name=>'Installed Languages'
,p_parent_plug_id=>wwv_flow_imp.id(30836933225595135)
,p_template=>4501440665235496320
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>1
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select instance_name',
'     , language_code',
'     , description',
'     , decode(installed_flag, ''B'', ''Base'', ''I'', ''Installed'') installed_type ',
'  from A2E_LANGUAGES',
' order by 4, 2'))
,p_header=>'Languages installed in EBS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29738715781763458)
,p_query_column_id=>1
,p_column_alias=>'INSTANCE_NAME'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29738849511763459)
,p_query_column_id=>2
,p_column_alias=>'LANGUAGE_CODE'
,p_column_display_sequence=>20
,p_column_heading=>'Language Code'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29738960058763460)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Description'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29739039509763461)
,p_query_column_id=>4
,p_column_alias=>'INSTALLED_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Type'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(30837055938595136)
,p_name=>'Translated Languages'
,p_parent_plug_id=>wwv_flow_imp.id(30836933225595135)
,p_template=>4501440665235496320
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_column=>7
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select translated_app_language ',
'     , ''Translated'' lang_type',
'  from APEX_APPLICATION_TRANS_MAP ',
'where primary_application_id=:APP_ID',
'union',
'select application_primary_language ',
'     , ''Primary'' lang_type',
'  from apex_applications',
' where application_id=:APP_ID',
'order by 2'))
,p_header=>'APEX2EBS translated languages'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30837158888595137)
,p_query_column_id=>1
,p_column_alias=>'TRANSLATED_APP_LANGUAGE'
,p_column_display_sequence=>10
,p_column_heading=>'Translated Language'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(30837220701595138)
,p_query_column_id=>2
,p_column_alias=>'LANG_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Type'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30837328649595139)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47033337473608279)
,p_plug_name=>'EBS Instance Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_column_width=>'style="width:800px"'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P100_DB_LINK_VALID = ''Y'' and :P100_DB_LINK_EXIST = ''Y'''
,p_plug_display_when_cond2=>'SQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14608011861812663)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14607704480812660)
,p_button_name=>'P100_RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:100::'
,p_icon_css_classes=>'fa-times'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14607949371812662)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14607704480812660)
,p_button_name=>'P100_CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47033487003608281)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30837328649595139)
,p_button_name=>'LOGIN_PAGE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'To &GLOBAL_APP_NAME. Login'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_button_condition=>':P100_DB_LINK_VALID = ''Y'' and :P100_DB_LINK_EXIST = ''Y'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'Y'
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(47032479958608270)
,p_branch_name=>'Reset'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:100::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14608011861812663)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14606337679812646)
,p_name=>'P100_TNS_ENTRY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_prompt=>'Use TNS Entry'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(14617131155895541)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14606466660812647)
,p_name=>'P100_SID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_prompt=>'TNS Entry Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_display_when=>'P100_TNS_ENTRY'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14606491064812648)
,p_name=>'P100_DB_HOST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_prompt=>'Hostname / IP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_display_when=>'P100_TNS_ENTRY'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14606592161812649)
,p_name=>'P100_DB_PORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_prompt=>'Port'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_display_when=>'P100_TNS_ENTRY'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14606696032812650)
,p_name=>'P100_DB_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_prompt=>'Service Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_display_when=>'P100_TNS_ENTRY'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14607029710812653)
,p_name=>'P100_CONNECT_SCHEMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_item_default=>'APPS'
,p_prompt=>'Connect User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14607081251812654)
,p_name=>'P100_SCHEMA_PWD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_prompt=>'User Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14607223299812655)
,p_name=>'P100_KEEP_MAPPING'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_prompt=>'Keep Mappings'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(14617131155895541)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT ONE --'
,p_cHeight=>1
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_display_when=>'select 1 from A2E_RESP_PAGE_MAPPING'
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14607355574812656)
,p_name=>'P100_KEEP_SESSION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_prompt=>'Keep Session Data'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(14617131155895541)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT ONE --'
,p_cHeight=>1
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_display_when=>'select 1 from A2E_SESSIONS'
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14607454071812657)
,p_name=>'P100_DB_LINK'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_item_default=>'APEX_TO_EBS'
,p_prompt=>'DB Link Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14607574223812658)
,p_name=>'P100_DB_LINK_EXIST'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14607658680812659)
,p_name=>'P100_DB_LINK_VALID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17870990337300864)
,p_name=>'P100_A2E_APP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(47033337473608279)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17871084451300865)
,p_name=>'P100_EBS_INSTANCE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47033337473608279)
,p_prompt=>'EBS Instance'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17871361253300867)
,p_name=>'P100_EBS_DB_HOST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47033337473608279)
,p_prompt=>'Host'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17871444487300868)
,p_name=>'P100_EBS_DB_DOMAIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(47033337473608279)
,p_prompt=>'DB Domain'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17871573306300869)
,p_name=>'P100_EBS_DB_PLATFORM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(47033337473608279)
,p_prompt=>'DB Platform'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17871670439300870)
,p_name=>'P100_EBS_DB_VERSION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(47033337473608279)
,p_prompt=>'DB Version'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17871714155300871)
,p_name=>'P100_EBS_SERVER_ADDRESS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(47033337473608279)
,p_prompt=>'DB Address'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17871826446300872)
,p_name=>'P100_EBS_RELEASE_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(47033337473608279)
,p_prompt=>'EBS Release'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17871935151300873)
,p_name=>'P100_EBS_URL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(47033337473608279)
,p_prompt=>'EBS URL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML_UNSAFE',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30839024675595156)
,p_name=>'P100_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22559054768305785)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_colspan=>12
,p_grid_column=>1
,p_grid_label_column_span=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36061234920573533)
,p_name=>'P100_A2E_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47033337473608279)
,p_prompt=>'A2E Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(47032579440608271)
,p_validation_name=>'Check Parameters'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P100_NAME IS NULL THEN',
'  RETURN FALSE;',
'END IF;',
'',
'IF :P100_TNS_ENTRY=''Y'' THEN',
'  IF :P100_SID IS NULL THEN',
'    RETURN FALSE;',
'  END IF;',
'END IF;',
'',
'IF :P100_TNS_ENTRY=''N'' THEN',
'  IF :P100_DB_HOST IS NULL OR ',
'     :P100_DB_PORT IS NULL OR ',
'     :P100_DB_NAME IS NULL THEN',
'    RETURN FALSE;',
'  END IF;',
'END IF;',
'',
'IF :P100_CONNECT_SCHEMA IS NULL OR',
'   :P100_SCHEMA_PWD IS NULL THEN',
'  RETURN FALSE;',
'END IF;',
'',
'RETURN TRUE;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'All fields are required'
,p_when_button_pressed=>wwv_flow_imp.id(14607949371812662)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47032860541608274)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Previous Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'IF NVL(:P100_KEEP_SESSION,''N'') <> ''Y'' THEN',
'  DELETE FROM A2E_SESSIONS;	',
'  INSERT INTO A2E_DEBUG(message) values (''Clean up A2E_SESSIONS'');',
'END IF;',
'',
'IF NVL(:P100_KEEP_MAPPING,''N'') <> ''Y'' THEN',
'  DELETE FROM A2E_RESP_PAGE_MAPPING;',
'  INSERT INTO A2E_DEBUG(message) values (''Clean up A2E_RESP_PAGE_MAPPING'');',
'END IF;',
'',
'DELETE FROM A2E_LANGUAGES;',
'INSERT INTO A2E_DEBUG(message) values (''Clean up A2E_LANGUAGES'');',
'',
'DELETE FROM A2E_INSTANCE_INFO;',
'INSERT INTO A2E_DEBUG(message) values (''Clean up A2E_INSTANCE_INFO'');',
'  ',
'FOR RS IN (SELECT 1 FROM ALL_DB_LINKS WHERE DB_LINK=''APEX_TO_EBS'') LOOP',
'  EXECUTE IMMEDIATE ''DROP DATABASE LINK APEX_TO_EBS'';',
'  INSERT INTO A2E_DEBUG(message) values (''Drop DB Link'');',
'END LOOP;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14607949371812662)
,p_internal_uid=>40374679686260442
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47032963388608275)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create DB Link'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  p_sql varchar2(1000);',
'',
'BEGIN',
'',
'IF :P100_TNS_ENTRY = ''Y'' THEN',
'p_sql := ''CREATE DATABASE LINK APEX_TO_EBS'' ||',
'         '' CONNECT TO '' || :P100_CONNECT_SCHEMA ||',
'         '' IDENTIFIED BY '' || :P100_SCHEMA_PWD || ',
'         '' USING '' || chr(39) || :P100_SID || chr(39);',
'END IF;',
'',
'IF :P100_TNS_ENTRY = ''N'' THEN',
'p_sql := ''CREATE DATABASE LINK APEX_TO_EBS'' ||',
'         '' CONNECT TO '' || :P100_CONNECT_SCHEMA ||',
'         '' IDENTIFIED BY '' || :P100_SCHEMA_PWD || ',
'         '' USING '' || chr(39) || ',
'         ''(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)'' ||',
'         ''(HOST='' || :P100_DB_HOST || '')'' || ',
'         ''(PORT='' || :P100_DB_PORT || ''))'' || ',
'         ''(CONNECT_DATA=(SERVER=DEDICATED)'' ||',
'         ''(SERVICE_NAME='' || :P100_DB_NAME || '')))'' || chr(39);',
'END IF;',
'',
'EXECUTE IMMEDIATE p_sql;',
'',
'INSERT INTO A2E_DEBUG(message) VALUES (''DB Link created'');',
'',
'p_sql := ''ALTER PACKAGE APEX2EBS_PKG COMPILE'';',
'EXECUTE IMMEDIATE p_sql;',
'',
'INSERT INTO A2E_DEBUG(message) VALUES (''APEX2EBS_PKG package complied'');',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14607949371812662)
,p_internal_uid=>40374782533260443
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47033055592608276)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Instance Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'APEX2EBS_PKG.SETUP(p_appID => :APP_ID,',
'                   p_keepMapping => :P100_KEEP_MAPPING,',
'                   p_name => :P100_NAME);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14607949371812662)
,p_internal_uid=>40374874737260444
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47032716258608273)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Check DB Link'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'p_exist number;',
'p_sql varchar2(500);',
'p_valid_link number;',
'',
'BEGIN',
'SELECT count(*) ',
'  INTO p_exist ',
'  FROM user_db_links ',
' WHERE db_link = ''APEX_TO_EBS'';',
'',
'IF p_exist = 1 THEN',
'  :P100_DB_LINK_EXIST := ''Y'';',
'ELSE',
'  :P100_DB_LINK_EXIST := ''N'';',
'END IF;',
'',
'p_sql := ''SELECT COUNT(*) FROM FND_PRODUCT_GROUPS@APEX_TO_EBS'';',
':P100_DB_LINK_VALID := ''N'';',
'',
'BEGIN',
'  IF p_exist = 1 THEN',
'    EXECUTE IMMEDIATE p_sql INTO p_valid_link;',
'    IF p_valid_link > 0 THEN',
'      :P100_DB_LINK_VALID := ''Y'';',
'    END IF;',
'  END IF;',
'  EXCEPTION',
'  WHEN OTHERS THEN',
'    :P100_DB_LINK_VALID := ''N'';',
'  END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>40374535403260441
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18004605117473135)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Show Instance Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF :P100_DB_LINK_VALID = ''Y'' and :P100_DB_LINK_EXIST = ''Y'' THEN',
'',
'FOR RS IN (',
'SELECT A2E_APP_ID',
'     , A2E_NAME',
'     , EBS_INSTANCE',
'     , EBS_DB_NODE_NAME',
'     , EBS_DB_HOST',
'     , EBS_DB_DOMAIN',
'     , EBS_DB_PLATFORM',
'     , EBS_DB_VERSION',
'     , EBS_SERVER_ADDRESS',
'     , EBS_RELEASE_NAME',
'     , EBS_URL ',
' FROM A2E_INSTANCE_INFO) LOOP',
'  :P100_A2E_NAME        := RS.A2E_NAME;',
'  :P100_A2E_APP_ID      := RS.A2E_APP_ID;',
'  :P100_EBS_INSTANCE    := RS.EBS_INSTANCE;',
'  :P100_EBS_DB_HOST     := RS.EBS_DB_HOST;',
'  :P100_EBS_DB_DOMAIN   := RS.EBS_DB_DOMAIN;',
'  :P100_EBS_DB_PLATFORM := RS.EBS_DB_PLATFORM;',
'  :P100_EBS_DB_VERSION  := RS.EBS_DB_VERSION;',
'  :P100_EBS_SERVER_ADDRESS := RS.EBS_SERVER_ADDRESS;',
'  :P100_EBS_RELEASE_NAME := RS.EBS_RELEASE_NAME;',
'  :P100_EBS_URL          := ''<a href="'' || RS.EBS_URL || ''" target="_new">'' || RS.EBS_URL || ''</a>'';',
'',
' END LOOP;',
'',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11346424262125303
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_step_title=>'&GLOBAL_APP_NAME. | Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14604482408797477)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body {',
'    background-image: url(/i/apex_ui/img/rw/textures/texture-11.png) !important;',
'    background-color: #f1efed !important;',
'}'))
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18004954712473138)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size:200%;color:#555555;text-align: center;">&GLOBAL_APP_NAME.</div>',
'<div style="padding:10px;color:brown;text-align:center;">Please enter the username and password for the <a href="&EBS_URL./OA_HTML/AppsLocalLogin.jsp" target="_new">Oracle E-Business Suite.</a></div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18005192407473141)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18005848995473147)
,p_plug_name=>'Button'
,p_parent_plug_id=>wwv_flow_imp.id(18005192407473141)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30837576456595141)
,p_plug_name=>'Remember'
,p_parent_plug_id=>wwv_flow_imp.id(18005192407473141)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18005688800473146)
,p_plug_name=>'Support'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>'<div style="text-align:center;">Please call &GLOBAL_SUPPORT_PHONE. or email <a href="mailto:&GLOBAL_SUPPORT_EMAIL.">&GLOBAL_SUPPORT_EMAIL.</a> for any assistance.</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29739918907763470)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right;">APEX2EBS Build ',
' &APEX2EBS_BUILD_NO.<div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18005906456473148)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18005848995473147)
,p_button_name=>'P101_CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18005618337473145)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18005848995473147)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN_BUTTON_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-arrow-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14608590466812669)
,p_name=>'P101_LANGUAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18005192407473141)
,p_prompt=>'Language'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, LANGUAGE_CODE FROM A2E_LANGUAGES ',
'ORDER BY INSTALLED_FLAG, DESCRIPTION'))
,p_cHeight=>1
,p_display_when=>'select 1 from a2e_languages where installed_flag=''I'''
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18005344565473142)
,p_name=>'P101_CONNECT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18005192407473141)
,p_prompt=>'Connect'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18005475097473143)
,p_name=>'P101_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18005192407473141)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_field_template=>2318601014859922299
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18005505461473144)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18005192407473141)
,p_prompt=>'Password'
,p_source=>'wwv_flow_utilities.get_un_from_cookie'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>50
,p_field_template=>2318601014859922299
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21843861878285080)
,p_name=>'P101_REMEMBER_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30837576456595141)
,p_prompt=>'User name'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  cookie      OWA_COOKIE.cookie;  ',
'BEGIN',
'   cookie := OWA_COOKIE.get(:LOGIN_COOKIE_NAME);',
'   if cookie.vals.First is not null then',
'      return ''Y'';',
'   else',
'     return ''N'';',
'   end if;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29739843019763469)
,p_name=>'P101_FSP_LANG_PREF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18005192407473141)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30837419869595140)
,p_name=>'P101_REMEMBER_LANG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30837576456595141)
,p_prompt=>'Language'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  cookie      OWA_COOKIE.cookie;  ',
'BEGIN',
'   cookie := OWA_COOKIE.get(:LOGIN_COOKIE_NAME);',
'   if cookie.vals.First is not null then',
'      return ''Y'';',
'   else',
'     return ''N'';',
'   end if;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>0
,p_display_when=>'select 1 from a2e_languages where installed_flag=''I'''
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30837725291595143)
,p_name=>'P101_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30837576456595141)
,p_prompt=>'Remember'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(18006080068473149)
,p_validation_name=>'P101_USERNAME'
,p_validation_sequence=>10
,p_validation=>'P101_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please enter your login name.'
,p_when_button_pressed=>wwv_flow_imp.id(18005618337473145)
,p_associated_item=>wwv_flow_imp.id(18005475097473143)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(18006131456473150)
,p_validation_name=>'P101_PASSWORD'
,p_validation_sequence=>20
,p_validation=>'P101_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please enter your password.'
,p_when_button_pressed=>wwv_flow_imp.id(18005618337473145)
,p_associated_item=>wwv_flow_imp.id(18005505461473144)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13495314113479137)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_PASSWORD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13495438122479138)
,p_event_id=>wwv_flow_imp.id(13495314113479137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(event.which == 13)',
'{',
'$(''#P101_LOGIN_BUTTON_ID'').click(); ',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18006242275473151)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Cookies'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'owa_util.mime_header(''text/html'', FALSE);',
'IF :P101_REMEMBER_USER = ''Y'' THEN',
'  owa_cookie.send(',
'    name    => :LOGIN_COOKIE_NAME,',
'    value   => upper(:P101_USERNAME),',
'    expires => add_months(sysdate, 12)',
'  );',
'ELSE',
'  owa_cookie.remove(',
'    name    => :LOGIN_COOKIE_NAME,',
'    val     => null',
'  );',
'END IF;  ',
'',
'IF :P101_REMEMBER_LANG = ''Y'' THEN',
'  owa_cookie.send(',
'    name    => :LANG_COOKIE_NAME,',
'    value   => upper(:P101_LANGUAGE),',
'    expires => add_months(sysdate, 12)',
'  );',
'ELSE',
'  owa_cookie.remove(',
'    name    => :LANG_COOKIE_NAME,',
'    val     => null',
'  );',
'END IF;  ',
'',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18005618337473145)
,p_internal_uid=>11348061420125319
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18006301511473152)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
':EBS_RESP_NAME := ''N/A'';',
':EBS_LANG      := :P101_LANGUAGE;',
'',
'-- create session info to track all login',
'INSERT INTO A2E_SESSIONS (',
'      APEX_SESSION_ID',
'    , APEX_SESSION_CREATED',
'    , APEX_LANG_CODE',
'    , EBS_USER_NAME',
'    , EBS_LANG_CODE',
'    , IP_ADDRESS',
') VALUES (',
'      :APP_SESSION',
'    , SYSDATE',
'    , :FSP_LANGUAGE_PERFERENCE',
'    , UPPER(:P101_USERNAME)',
'    , :P101_LANGUAGE',
'    , owa_util.get_cgi_env(''REMOTE_ADDR'')',
');',
'',
'wwv_flow_custom_auth_std.login(',
'    P_UNAME       => :P101_USERNAME,',
'    P_PASSWORD    => :P101_PASSWORD,',
'    P_SESSION_ID  => :APP_SESSION,',
'    P_FLOW_PAGE   => :APP_ID||'':102''',
'    );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18005618337473145)
,p_internal_uid=>11348120656125320
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18006398664473153)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18005618337473145)
,p_internal_uid=>11348217809125321
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18004998039473139)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Check Setup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'p_dbLink  number := 0;',
'p_instance varchar2(30);',
'p_ebsURL   varchar2(200);',
'',
'BEGIN',
'',
'SELECT count(*) INTO p_dbLink',
'  FROM user_db_links ',
' WHERE db_link=''APEX_TO_EBS'';',
'',
'FOR rs IN (SELECT a2e_name, ebs_url FROM a2e_instance_info) LOOP',
'  p_instance := rs.a2e_name;',
'  p_ebsURL   := rs.ebs_url;',
'END LOOP;',
'',
'IF p_dbLink = 0 OR p_instance IS NULL THEN',
'  owa_util.redirect_url(''f?p=''|| :APP_ID || '':SETUP:'' || :APP_SESSION);',
'ELSE',
'  :P101_CONNECT := p_instance;',
'  :EBS_URL      := p_ebsURL;',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11346817184125307
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18005096255473140)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Cookies'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    cookie owa_cookie.cookie;',
'    ',
'BEGIN',
'   cookie := owa_cookie.get(:LOGIN_COOKIE_NAME);',
'   :P101_USERNAME := cookie.vals(1);',
'',
'   IF :P101_LANGUAGE IS NULL THEN',
'     cookie := owa_cookie.get(:LANG_COOKIE_NAME);',
'     :P101_LANGUAGE := cookie.vals(1);',
'   END IF;  ',
'',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11346915400125308
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29739761786763468)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize lang'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'httpLang  VARCHAR2(100);',
'fspLang   VARCHAR2(100);',
'ebsLang   VARCHAR2(100);',
'num_count number;',
'begin',
'',
'-- lang stored in cookie',
'IF :P101_LANGUAGE IS NOT NULL AND :FSP_LANGUAGE_PREFERENCE IS NULL THEN',
'  fspLang := A2E_LANG(''EBS_LANG'', :P101_LANGUAGE, ''FSP_LANGUAGE_PREFERENCE'');',
'  :FSP_LANGUAGE_PREFERENCE := fspLang; ',
'  :P101_FSP_LANG_PREF      := fspLang;',
'   owa_util.redirect_url(''f?p=&APP_ID.:101:&APP_SESSION.''); ',
'END IF;',
'',
'-- language selected from user',
'IF :P101_LANGUAGE IS NOT NULL AND :FSP_LANGUAGE_PREFERENCE IS NOT NULL THEN',
'  fspLang := A2E_LANG(''EBS_LANG'', :P101_LANGUAGE, ''FSP_LANGUAGE_PREFERENCE'');',
'  :FSP_LANGUAGE_PREFERENCE := fspLang; ',
'  :P101_FSP_LANG_PREF      := fspLang;',
'END IF;',
'',
'IF :P101_LANGUAGE IS NULL AND :FSP_LANGUAGE_PREFERENCE IS NULL THEN',
'  SELECT COUNT(*)',
'    INTO num_count',
'    FROM a2e_languages WHERE installed_flag=''I'';',
'',
'  IF num_count = 0 then',
'    select language_code ',
'      into :P101_LANGUAGE',
'      from a2e_languages',
'     where installed_flag=''B'';',
'  ELSE',
'    httpLang := owa_util.get_cgi_env (''HTTP_ACCEPT_LANGUAGE'');',
'    fspLang  := A2E_LANG(''HTTP_ACCEPT_LANGUAGE'', httpLang, ''FSP_LANGUAGE_PREFERENCE'');',
'    ebsLang  := A2E_LANG(''FSP_LANGUAGE_PREFERENCE'', fspLang, ''EBS_LANG'');',
'    :FSP_LANGUAGE_PREFERENCE := fspLang;',
'    :P101_LANGUAGE           := ebsLang;  ',
'    :P101_FSP_LANG_PREF      := httpLang || ''/'' || fspLang;',
'  END IF;',
'',
'END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23081580931415636
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29739645830763467)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Language'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'p_testVal VARCHAR2(100);',
'BEGIN',
'',
'p_testVal := A2E_LANG(''EBS_LANG'', :P101_LANGUAGE, ''FSP_LANGUAGE_PREFERENCE'');',
'',
':FSP_LANGUAGE_PREFERENCE := p_testVal;',
':P101_FSP_LANG_PREF      := p_testVal;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P101_LANGUAGE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>23081464975415635
);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_imp_page.create_page(
 p_id=>102
,p_name=>'Navigator'
,p_alias=>'NAVIGATOR'
,p_step_title=>'&GLOBAL_APP_NAME. | Home'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14604482408797477)
,p_step_template=>wwv_flow_imp.id(24737196089674713)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27539231495055765)
,p_plug_name=>'Navigator'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>'<h3>Navigator</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18006562701473154)
,p_name=>'Responsibilities'
,p_parent_plug_id=>wwv_flow_imp.id(27539231495055765)
,p_template=>4501440665235496320
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>4
,p_display_column=>1
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT tab3.responsibility_name',
'       , tab2.responsibility_id',
'       , tab2.application_id',
'    FROM fnd_user@APEX_TO_EBS              tab1',
'       , fnd_responsibility@APEX_TO_EBS    tab2',
'       , fnd_responsibility_tl@APEX_TO_EBS tab3',
'       , wf_local_user_roles@APEX_TO_EBS   tab4',
'   WHERE tab1.user_name             = tab4.user_name',
'     AND tab2.responsibility_id     = tab3.responsibility_id',
'     AND tab2.application_id        = tab3.application_id',
'     AND tab4.parent_orig_system_id = tab2.responsibility_id',
'     AND TRUNC (',
'           NVL (tab4.effective_end_date, TO_DATE (''31-12-9999'', ''DD-MM-RRRR''))) >',
'           TRUNC (SYSDATE)',
'     AND TRUNC (tab4.effective_start_date) <= TRUNC (SYSDATE+1)',
'     AND TRUNC (',
'           NVL (tab4.expiration_date, TO_DATE (''31-12-9999'', ''DD-MM-RRRR''))) >',
'           TRUNC (SYSDATE)',
'     AND tab3.language = :EBS_LANG',
'     AND tab4.parent_orig_system = ''FND_RESP''',
'     AND tab4.user_name = :APP_USER',
'ORDER BY UPPER (responsibility_name)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29740450663763475)
,p_query_column_id=>1
,p_column_alias=>'RESPONSIBILITY_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Responsibility'
,p_column_link=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::P102_RESP_ID,P102_RESP_APP_ID:#RESPONSIBILITY_ID#,#APPLICATION_ID#'
,p_column_linktext=>'#RESPONSIBILITY_NAME#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29740556731763476)
,p_query_column_id=>2
,p_column_alias=>'RESPONSIBILITY_ID'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29740599344763477)
,p_query_column_id=>3
,p_column_alias=>'APPLICATION_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18006656604473155)
,p_plug_name=>'Items'
,p_parent_plug_id=>wwv_flow_imp.id(27539231495055765)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'p_count     NUMBER        := 0;',
'p_url       VARCHAR2(100);',
'p_pageGrp   VARCHAR2(100) := null;',
'',
'BEGIN',
'',
'IF (:EBS_RESP_ID IS NULL) THEN',
'  htp.p(''<h5>'' || APEX_LANG.MESSAGE(''P102.SELECT_RESP'') || ''</h5>'');',
'  RETURN;',
'END IF;',
'',
'htp.p(''<h4>'' || :EBS_RESP_NAME || ''</h4>'');',
'htp.p(''<table>'');',
'',
'FOR RS IN (',
'SELECT * ',
'  FROM A2E_HOME_NAVIGATOR_V',
' WHERE ENABLED = ''Y''',
'   AND HIDDEN  = ''N''',
'   AND PAGE_MODE = ''Normal''',
'   AND APEX_SESSION_ID = :APP_SESSION',
' ORDER BY PAGE_GROUP NULLS FIRST',
'        , PAGE_ORDER',
') LOOP',
'  p_url := ''<a href="'' || ',
'           OWA_UTIL.get_cgi_env(''SCRIPT_NAME'') || ',
'           ''/f?p='' || ',
'           RS.APP_ID || '':'' || ',
'           RS.page_ID || '':'' || ',
'           :APP_SESSION || '':::'' || ',
'           RS.page_ID || ''">'' || ',
'           RS.PAGE_NAME || ''</a>'';',
'',
'  if NVL(p_pageGrp, ''X'') <> rs.page_group then',
'    htp.p(''<tr><td><h5>'' || rs.page_group || ''</h5></td></tr>'');',
'  end if;',
'  htp.p(''<tr><td><span style="padding-left:30px;">'' || p_url || ''</span></td></tr>'');',
'  p_count := p_count + 1;',
'  p_pageGrp := rs.page_group;',
'END LOOP;',
'',
'IF (:EBS_RESP_NAME IS NOT NULL AND p_count = 0) THEN',
'htp.p(''<tr><td>'' || APEX_LANG.MESSAGE(''P102.NO_DISPLAY_ITEM'') || ''</td></tr>'');',
'END IF;',
'',
'htp.p(''</table>'');',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14609108395812674)
,p_name=>'P102_RESP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18006562701473154)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14609232086812675)
,p_name=>'P102_RESP_APP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18006562701473154)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14609289555812676)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Session Table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'p_apexSession  NUMBER;',
'p_count        NUMBER;',
'p_userID       NUMBER;',
'p_employeeName VARCHAR2(300);',
'',
'BEGIN',
'',
'	p_apexSession := :APP_SESSION;',
'',
'	SELECT a.user_id ',
'	     , b.full_name',
'	  INTO p_userID',
'	     , p_employeeName',
'	  FROM fnd_user@APEX_TO_EBS a',
'	     , per_all_people_f@APEX_TO_EBS b',
'	 WHERE a.user_name    = :APP_USER',
'	   AND a.employee_id  = b.person_id(+)',
'	   AND SYSDATE BETWEEN b.effective_start_date(+) ',
'	       AND b.effective_end_date(+);',
'',
'	SELECT count(*) ',
'	  INTO p_count ',
'	  FROM A2E_SESSIONS ',
'	 WHERE APEX_SESSION_ID = p_apexSession;',
'	',
'	IF p_count = 0 THEN',
'	',
'        INSERT INTO A2E_SESSIONS (',
'            APEX_SESSION_ID,',
'            APEX_SESSION_CREATED,',
'            APEX_LANG_CODE,',
'            EBS_USER_ID,',
'            EBS_USER_NAME,',
'            EBS_EMPLOYEE_NAME,',
'            EBS_LANG_CODE,',
'            IP_ADDRESS',
'        ) VALUES (',
'            p_apexSession,',
'            SYSDATE,',
'            :FSP_LANGUAGE_PREFERENCE,',
'            p_userID,',
'            :APP_USER,',
'            p_employeeName,',
'            :EBS_LANG,',
'            owa_util.get_cgi_env(''X-FORWARDED-FOR'')',
'        );',
'	',
'    ELSE',
'        UPDATE A2E_SESSIONS ',
'           SET EBS_USER_ID       = p_userID',
'             , EBS_EMPLOYEE_NAME = p_employeeName',
'         WHERE APEX_SESSION_ID = p_apexSession;',
'	END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7951108700464844
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14608890281812672)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set application item values'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'ebsUserID   NUMBER;',
'ebsOrgID    NUMBER;',
'ebsRespID   NUMBER;',
'ebsRespName VARCHAR2(100);',
'ebsAppID    NUMBER;',
'',
'BEGIN',
'',
'IF (:P102_RESP_ID IS NOT NULL AND :P102_RESP_APP_ID IS NOT NULL) THEN',
'',
'    SELECT EBS_USER_ID ',
'      INTO :EBS_USER_ID ',
'      FROM A2E_SESSIONS ',
'     WHERE APEX_SESSION_ID = :APP_SESSION;',
'',
'    :EBS_RESP_ID      := :P102_RESP_ID;',
'    :EBS_RESP_APP_ID  := :P102_RESP_APP_ID;',
'',
'    SELECT b.RESPONSIBILITY_NAME',
'      INTO :EBS_RESP_NAME',
'      FROM FND_RESPONSIBILITY_TL@APEX_TO_EBS b',
'     WHERE b.RESPONSIBILITY_ID = :EBS_RESP_ID',
'       AND b.APPLICATION_ID    = :EBS_RESP_APP_ID',
'       AND b.LANGUAGE          = :EBS_LANG;',
'',
'    :EBS_ORG_ID := FND_PROFILE.VALUE_SPECIFIC@APEX_TO_EBS(',
'                ''ORG_ID'', :EBS_USER_ID, :EBS_RESP_ID, :EBS_RESP_APP_ID);',
'',
'    UPDATE A2E_SESSIONS ',
'       SET EBS_RESP_ID     = :EBS_RESP_ID',
'         , EBS_RESP_NAME   = :EBS_RESP_NAME',
'         , EBS_RESP_APP_ID = :EBS_RESP_APP_ID',
'         , EBS_ORG_ID      = :EBS_ORG_ID',
'     WHERE APEX_SESSION_ID = :APP_SESSION;',
'',
'END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7950709426464840
);
end;
/
prompt --application/pages/page_00198
begin
wwv_flow_imp_page.create_page(
 p_id=>198
,p_name=>'To EBS'
,p_alias=>'TO-EBS'
,p_step_title=>'To EBS | &GLOBAL_APP_NAME.'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14604482408797477)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21841852339285060)
,p_plug_name=>'Message'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>'<h3>Please wait...</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21841918545285061)
,p_process_sequence=>10
,p_process_point=>'AFTER_FOOTER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Redirect to EBS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :EBS_URL IS NULL THEN',
'     SELECT EBS_URL INTO :EBS_URL FROM A2E_INSTANCE_INFO;',
'   END IF;',
'   htp.p(''<script language="javascript">'');',
'   htp.p(''window.location="'' || :EBS_URL || ''/OA_HTML/OA.jsp?OAFunc=OAHomePage"'');',
'   htp.p(''</script>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>15183737689937229
);
end;
/
prompt --application/pages/page_00199
begin
wwv_flow_imp_page.create_page(
 p_id=>199
,p_name=>'Logout'
,p_alias=>'LOGOUT'
,p_step_title=>'Logout'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14604482408797477)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14608714615812670)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Logout'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID      NUMBER;',
'',
'BEGIN',
'  SELECT A2E_APP_ID INTO appID FROM A2E_INSTANCE_INFO;',
'',
'  APEX_AUTHENTICATION.LOGOUT ( ',
'    p_session_id => :APP_SESSION, ',
'    p_app_id     => appID',
'  );',
'  APEX_APPLICATION.STOP_APEX_ENGINE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7950533760464838
);
end;
/
prompt --application/pages/page_00201
begin
wwv_flow_imp_page.create_page(
 p_id=>201
,p_name=>'Page Assignment'
,p_page_mode=>'MODAL'
,p_step_title=>'&201_ACTION. Page Assignment'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14593729871703428)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26338141275946913)
,p_dialog_attributes=>'close: function(event, ui) {apex.navigation.dialog.close(true,{dialogPageId:201});}'
,p_dialog_chained=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18006770110473156)
,p_plug_name=>'Assignment Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18008274878473171)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18008338833473172)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18008274878473171)
,p_button_name=>'P201_ADD_ASSIGNMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P201_RESP_PAGE_MAPPING_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18008432141473173)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18008274878473171)
,p_button_name=>'P201_DELETE_ASSIGNMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P201_RESP_PAGE_MAPPING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18008500964473174)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18008274878473171)
,p_button_name=>'P201_SAVE_ASSIGNMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P201_RESP_PAGE_MAPPING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18006838205473157)
,p_name=>'P201_ACTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18006919054473158)
,p_name=>'P201_RESP_PAGE_MAPPING_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'Assignment ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P201_RESP_PAGE_MAPPING_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18007066705473159)
,p_name=>'P201_ASSIGN_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'Assignment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APEX_LANG.LANG(''Responsibility'') value, ''RESP'' key from dual',
'union',
'select APEX_LANG.LANG(''User and Resp.'') value, ''USER'' key from dual'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT ONE --'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18007134451473160)
,p_name=>'P201_PLACE_HOLDER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'User / Responsibility'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P201_ASSIGN_TYPE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18007195109473161)
,p_name=>'P201_USER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'User'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   USER_NAME,',
'         USER_ID',
'FROM     FND_USER@APEX_TO_EBS',
'WHERE    NVL(END_DATE, TRUNC(SYSDATE)) >= TRUNC(SYSDATE)',
'ORDER BY USER_NAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT ONE --'
,p_cSize=>30
,p_display_when=>'P201_ASSIGN_TYPE'
,p_display_when2=>'USER'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'N',
  'initial_fetch', 'NO_FETCH',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18007336184473162)
,p_name=>'P201_RESP_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'Responsibility'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   tab2.responsibility_name,',
'         tab1.responsibility_id || '':'' || tab1.application_id responsibility_id',
'FROM     FND_RESPONSIBILITY@APEX_TO_EBS    tab1,',
'         FND_RESPONSIBILITY_TL@APEX_TO_EBS tab2',
'WHERE    tab1.responsibility_id              = tab2.responsibility_id',
'AND      tab2.language                       = :EBS_LANG',
'AND      NVL(tab1.end_date, TRUNC(SYSDATE)) >= TRUNC(SYSDATE)',
'order by tab2.responsibility_name',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT ONE --'
,p_cSize=>30
,p_display_when=>'P201_ASSIGN_TYPE'
,p_display_when2=>'RESP'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'N',
  'initial_fetch', 'NO_FETCH',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18007466139473163)
,p_name=>'P201_USER_RESP_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'User Resonsibility'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT tab3.responsibility_name',
'       , tab2.responsibility_id || '':'' || tab2.application_id responsibility_id',
'    FROM fnd_user@APEX_TO_EBS              tab1',
'       , fnd_responsibility@APEX_TO_EBS    tab2',
'       , fnd_responsibility_tl@APEX_TO_EBS tab3',
'       , wf_local_user_roles@APEX_TO_EBS   tab4',
'   WHERE tab1.user_name             = tab4.user_name',
'     AND tab2.responsibility_id     = tab3.responsibility_id',
'     AND tab2.application_id        = tab3.application_id',
'     AND tab4.parent_orig_system_id = tab2.responsibility_id',
'     AND TRUNC (',
'           NVL (tab4.effective_end_date, TO_DATE (''31-12-9999'', ''DD-MM-RRRR''))) >',
'           TRUNC (SYSDATE)',
'     AND TRUNC (tab4.effective_start_date) <= TRUNC (SYSDATE)',
'     AND TRUNC (',
'           NVL (tab4.expiration_date, TO_DATE (''31-12-9999'', ''DD-MM-RRRR''))) >',
'           TRUNC (SYSDATE)',
'     AND tab3.language = :EBS_LANG',
'     AND tab4.parent_orig_system = ''FND_RESP''',
'     AND tab1.user_id = :P201_USER_ID',
'ORDER BY tab3.responsibility_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT ONE --'
,p_lov_cascade_parent_items=>'P201_USER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_display_when=>'P201_ASSIGN_TYPE'
,p_display_when2=>'USER'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'N',
  'initial_fetch', 'NO_FETCH',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18007502060473164)
,p_name=>'P201_APP_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'Application'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_name, application_id ',
'  from APEX_APPLICATIONS',
' order by application_name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18007638294473165)
,p_name=>'P201_PAGE_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'Page Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APEX_LANG.LANG(''Page'') value, ''PAGE'' key from dual',
'union',
'select APEX_LANG.LANG(''Page Group'') value, ''GROUP'' key from dual'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18007762177473166)
,p_name=>'P201_PLACE_HOLDER_2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'Page / Page Group'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P201_PAGE_TYPE'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18007832340473167)
,p_name=>'P201_APEX_PAGE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'Apex Page'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   PAGE_ID',
'                  || '' - ''',
'                  || PAGE_NAME || '' ('' ',
'                  || NVL(PAGE_GROUP, ''N/A'') || '')'' PAGE_NAME,',
'         PAGE_ID',
'FROM     APEX_APPLICATION_PAGES',
'WHERE    APPLICATION_ID=:P201_APP_ID',
'AND      PAGE_ID > 200',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT ONE --'
,p_cHeight=>1
,p_display_when=>'P201_PAGE_TYPE'
,p_display_when2=>'PAGE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18007923443473168)
,p_name=>'P201_PAGE_GROUP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'Page Group'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NVL(PAGE_GROUP_DESCRIPTION, PAGE_GROUP_NAME) PAGE_GROUP_NAME',
'     , GROUP_ID ',
'  from APEX_APPLICATION_PAGE_GROUPS ',
' WHERE APPLICATION_ID=:P201_APP_ID',
'   AND PAGE_GROUP_NAME <> ''Core''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT ONE --'
,p_cHeight=>1
,p_display_when=>'P201_PAGE_TYPE'
,p_display_when2=>'GROUP'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18008020697473169)
,p_name=>'P201_ENABLED'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'Enabled'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(14617131155895541)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT ONE --'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18008090352473170)
,p_name=>'P201_ALLOW_DENY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(18006770110473156)
,p_prompt=>'Allow /  Deny'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Allow;A,Deny;D'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT ONE --'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(22739800468944133)
,p_validation_name=>'Page Validation'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'IF :P201_ASSIGN_TYPE  IS NULL THEN',
'        RETURN FALSE;',
'END IF;',
'IF :P201_ASSIGN_TYPE  = ''USER'' THEN',
'        IF :P201_USER_ID IS NULL OR ',
'           :P201_USER_RESP_ID IS NULL THEN',
'                RETURN FALSE;',
'        END IF;',
'END IF;',
'',
'IF :P201_ASSIGN_TYPE  = ''RESP'' THEN',
'        IF :P201_RESP_ID IS NULL THEN',
'                RETURN FALSE;',
'        END IF;',
'END IF;',
'',
'IF :P201_APP_ID  IS NULL THEN',
'    RETURN FALSE;',
'END IF;',
'',
'IF :P201_PAGE_TYPE  IS NULL THEN',
'    RETURN FALSE;',
'END IF;',
'',
'IF :P201_PAGE_TYPE = ''PAGE'' THEN',
'  IF :P201_APEX_PAGE IS NULL THEN',
'    RETURN FALSE;',
'  END IF;',
'END IF;',
'',
'IF :P201_PAGE_TYPE = ''GROUP'' THEN',
'  IF :P201_PAGE_GROUP IS NULL THEN',
'    RETURN FALSE;',
'  END IF;',
'END IF;',
'',
'',
'IF :P201_ALLOW_DENY IS NULL THEN',
'        RETURN FALSE;',
'END IF;',
'',
'RETURN TRUE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please enter all values.'
,p_validation_condition=>'P201_CANCEL, P201_ASSIGN_TYPE, P201_PAGE_TYPE'
,p_validation_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(22739913941944134)
,p_validation_name=>'Duplicate Check'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'p_count number := 0;',
'',
'BEGIN',
'IF :P201_RESP_PAGE_MAPPING_ID IS NULL THEN',
'    select count(*) into p_count',
'    from A2E_RESP_PAGE_MAPPING',
'    where 1=1',
'    and mapping_type            = :P201_ASSIGN_TYPE',
'    and NVL(user_id, -99)       = NVL(:P201_USER_ID, -99)',
'    and resp_id || '':'' || resp_app_id = ',
'        NVL(:P201_RESP_ID, :P201_USER_RESP_ID)',
'    and app_id                  = :P201_APP_ID',
'    and NVL(page_id, -99)       = NVL(:P201_APEX_PAGE, -99)',
'    and NVL(page_group_id, -99) = NVL(:P201_PAGE_GROUP, -99);',
'',
'    if p_count > 0 then',
'    return false;',
'    else',
'    return true;',
'    end if;',
'ELSE',
'    return true;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This combination exists.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(22743513012944170)
,p_validation_name=>'Internal Rule'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'  FROM A2E_RESP_PAGE_MAPPING ',
' WHERE RESP_PAGE_MAPPING_ID=:P201_RESP_PAGE_MAPPING_ID ',
'   AND CREATED_BY=0'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'You cannot delete this mapping. Make it inactive instead.'
,p_when_button_pressed=>wwv_flow_imp.id(18008432141473173)
,p_associated_item=>wwv_flow_imp.id(18006919054473158)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14609649804812679)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD ASSIGNMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'objectID  NUMBER;',
'respID    NUMBER;',
'respAppID NUMBER;',
'userID    NUMBER;',
'l_vc_arr2 APEX_APPLICATION_GLOBAL.VC_ARR2;',
'BEGIN',
'',
'SELECT EBS_USER_ID INTO userID FROM A2E_SESSIONS WHERE APEX_SESSION_ID = :APP_SESSION;',
'',
'IF :P201_ASSIGN_TYPE=''RESP'' THEN',
'  :P201_USER_ID := NULL;',
'  l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(:P201_RESP_ID);',
'  respID    := l_vc_arr2(1);',
'  respAppID := l_vc_arr2(2);',
'END IF;',
'',
'IF :P201_ASSIGN_TYPE=''USER'' THEN',
'  l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(:P201_USER_RESP_ID);',
'  respID    := l_vc_arr2(1);',
'  respAppID := l_vc_arr2(2);',
'',
'END IF;',
'',
'IF :P201_PAGE_TYPE=''PAGE'' THEN',
'  :P201_PAGE_GROUP := NULL;',
'END IF;',
'',
'IF :P201_PAGE_TYPE=''GROUP'' THEN',
'  :P201_APEX_PAGE := NULL;  ',
'END IF;',
'',
'',
'INSERT INTO A2E_RESP_PAGE_MAPPING (',
'   MAPPING_TYPE',
' , USER_ID',
' , RESP_ID',
' , RESP_APP_ID',
' , APP_ID',
' , PAGE_TYPE',
' , PAGE_ID',
' , PAGE_GROUP_ID',
' , ENABLED',
' , ALLOW_OR_DENY',
' , CREATED_BY',
' , LAST_UPDATED_BY) values (',
'   :P201_ASSIGN_TYPE',
' , :P201_USER_ID',
' , respID',
' , respAppID',
' , :P201_APP_ID',
' , :P201_PAGE_TYPE',
' , :P201_APEX_PAGE',
' , :P201_PAGE_GROUP',
' , NVL(:P201_ENABLED,''N'')',
' , :P201_ALLOW_DENY',
' , userID ',
' , userID ',
') RETURNING RESP_PAGE_MAPPING_ID INTO :P201_RESP_PAGE_MAPPING_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(18008338833473172)
,p_process_success_message=>'Assignment added.'
,p_internal_uid=>7951468949464847
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14609683476812680)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE ASSIGNMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'IF :P201_RESP_PAGE_MAPPING_ID IS NOT NULL THEN',
'  DELETE FROM A2E_RESP_PAGE_MAPPING',
'    WHERE RESP_PAGE_MAPPING_ID = :P201_RESP_PAGE_MAPPING_ID;',
'END IF;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18008432141473173)
,p_process_success_message=>'Assignment deleted.'
,p_internal_uid=>7951502621464848
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14609870868812681)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_ASSIGNMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'userID    NUMBER;',
'respID    NUMBER;',
'respAppID NUMBER;',
'l_vc_arr2 APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'BEGIN',
'',
'  SELECT EBS_USER_ID INTO userID FROM A2E_SESSIONS WHERE APEX_SESSION_ID=:APP_SESSION;',
'',
'  IF :P201_ASSIGN_TYPE = ''USER'' THEN',
'    l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(:P201_USER_RESP_ID);',
'    respID    := l_vc_arr2(1);',
'    respAppID := l_vc_arr2(2);',
'  ELSIF :P201_ASSIGN_TYPE = ''RESP'' THEN',
'    l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(:P201_RESP_ID);',
'    respID    := l_vc_arr2(1);',
'    respAppID := l_vc_arr2(2); ',
'  END IF;',
'',
'  IF :P201_RESP_PAGE_MAPPING_ID IS NOT NULL THEN',
'    UPDATE A2E_RESP_PAGE_MAPPING SET ',
'           MAPPING_TYPE  = :P201_ASSIGN_TYPE',
'         , USER_ID       = DECODE(:P201_ASSIGN_TYPE, ''USER'', :P201_USER_ID, NULL)',
'         , RESP_ID       = respID',
'         , RESP_APP_ID   = respAppID',
'         , PAGE_TYPE     = :P201_PAGE_TYPE',
'         , PAGE_ID       = DECODE(:P201_PAGE_TYPE, ''PAGE'', :P201_APEX_PAGE, NULL)',
'         , PAGE_GROUP_ID = DECODE(:P201_PAGE_TYPE, ''GROUP'', :P201_PAGE_GROUP, NULL)',
'         , ENABLED       = NVL(:P201_ENABLED,''N'')',
'         , ALLOW_OR_DENY = :P201_ALLOW_DENY',
'         , LAST_UPDATED_BY  = userID',
'         , LAST_UPDATE_DATE = SYSDATE',
'     WHERE RESP_PAGE_MAPPING_ID = :P201_RESP_PAGE_MAPPING_ID;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18008500964473174)
,p_process_success_message=>'Assignment Saved.'
,p_internal_uid=>7951690013464849
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14609959918812682)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF APEX_APPLICATION.G_REQUEST = ''P201_DELETE_ASSIGNMENT'' THEN',
'  RETURN TRUE;',
'END IF;',
'/*',
'IF APEX_APPLICATION.G_REQUEST = ''P201_SAVE_ASSIGNMENT'' THEN',
'  RETURN TRUE;',
'END IF;',
'IF APEX_APPLICATION.G_REQUEST = ''P201_ADD_ASSIGNMENT'' THEN',
'  RETURN TRUE;',
'END IF;',
'*/',
'RETURN FALSE;',
'END;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>7951779063464850
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14609565439812678)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EDIT_COPY_ASSIGNMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'        respID    NUMBER;',
'        respAppID NUMBER;',
'        userID    NUMBER;',
'        appID     NUMBER;',
'        pageID    NUMBER;',
'        pageGrpID NUMBER;',
'        mapType   VARCHAR2(10);',
'        pageType  VARCHAR2(10);',
'        enabled   VARCHAR2(1);',
'        allowDeny VARCHAR2(1);',
'        mappingID NUMBER;',
'',
'BEGIN',
'        mappingID   := NVL(:P201_RESP_PAGE_MAPPING_ID,-1);',
'        IF :P201_ACTION=''EDIT'' OR :P201_ACTION=''COPY'' THEN',
'          IF mappingID > 0 THEN',
'                SELECT MAPPING_TYPE,',
'                       USER_ID,',
'                       RESP_ID,',
'                       RESP_APP_ID,',
'                       APP_ID,',
'                       PAGE_TYPE,',
'                       PAGE_ID,',
'                       PAGE_GROUP_ID,',
'                       ENABLED,',
'                       ALLOW_OR_DENY',
'                INTO   mapType,',
'                       userID,',
'                       respID,',
'                       respAppID,',
'                       appID,',
'                       pageType,',
'                       pageID,',
'                       pageGrpID,',
'                       enabled,',
'                       allowDeny',
'                FROM   A2E_RESP_PAGE_MAPPING',
'                WHERE  RESP_PAGE_MAPPING_ID = :P201_RESP_PAGE_MAPPING_ID;',
'',
'                :P201_ASSIGN_TYPE     := mapType;',
'',
'                IF mapType             = ''RESP'' THEN',
'                        :P201_RESP_ID := respID || '':'' || respAppID;',
'                ELSIF mapType          = ''USER'' THEN',
'                        :P201_USER_ID := userID;',
'                        :P201_USER_RESP_ID := respID || '':'' || respAppID;',
'                END IF;',
'',
'                :P201_APP_ID := appID;',
'',
'                :P201_PAGE_TYPE := pageType;',
'                IF pageType             = ''PAGE'' THEN',
'                      :P201_APEX_PAGE  := pageID;',
'                ELSIF pageType          = ''GROUP'' THEN',
'                      :P201_PAGE_GROUP := pageGrpID;',
'                END IF;',
'',
'               :P201_ENABLED   := enabled;',
'',
'               :P201_ALLOW_DENY := allowDeny;',
'',
'               IF :P201_ACTION=''COPY'' THEN',
'                :P201_RESP_PAGE_MAPPING_ID := NULL;',
'               END IF;',
'',
'               :P201_ACTION := NULL;',
'',
'           END IF;',
'        END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7951384584464846
);
end;
/
prompt --application/pages/page_00202
begin
wwv_flow_imp_page.create_page(
 p_id=>202
,p_name=>'Page Assignments'
,p_step_title=>'Page Assignments'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14593729871703428)
,p_step_template=>wwv_flow_imp.id(24737196089674713)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26338141275946913)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22135508843036647)
,p_plug_name=>'Page Assignments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t1.RESP_PAGE_MAPPING_ID EDIT_MAPPING',
'     , t1.RESP_PAGE_MAPPING_ID COPY_MAPPING',
'     , decode(t1.mapping_type, ''RESP'', ''Responsibility'', ''USER'', ''User and Resp.'') mapping_type',
'     , t2.user_name',
'     , t3.responsibility_name',
'     , t4.application_name',
'     , t1.page_type',
'     , NVL2(t5.page_id,  t5.page_id || '' - '', '''') || t5.PAGE_NAME page_name',
'     , t6.page_group_name',
'     , DECODE(t1.enabled,',
'              ''Y'', ''<span class="fa fa-check" />'',',
'              ''N'', ''<span class="fa fa-times" />'') enabled     ',
'     , decode(t1.allow_or_deny,''A'',APEX_LANG.LANG(''Allow''),''D'',APEX_LANG.LANG(''Deny'')) allow_or_deny',
'  from A2E_RESP_PAGE_MAPPING t1',
'     , FND_USER@APEX_TO_EBS t2',
'     , fnd_responsibility_tl@APEX_TO_EBS t3',
'     , APEX_APPLICATIONS t4',
'     , APEX_APPLICATION_PAGES t5',
'     , APEX_APPLICATION_PAGE_GROUPS t6 ',
' where 1=1',
'   and t1.user_id        = t2.user_id(+)',
'   and t1.resp_id        = t3.responsibility_id ',
'   and t3.language       = :EBS_LANG',
'   and t1.app_id         = t4.application_id',
'   and t1.page_id        = t5.page_id(+)',
'   and t1.app_id         = t5.application_id(+)',
'   and t1.page_group_id  = t6.group_id(+)',
'   and t1.app_id         = t6.application_id(+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Page Assignments'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22740096771944136)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APEX2EBS'
,p_internal_uid=>16081915916596304
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22740254886944137)
,p_db_column_name=>'EDIT_MAPPING'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.::P201_RESP_PAGE_MAPPING_ID,P201_ACTION:#EDIT_MAPPING#,EDIT'
,p_column_linktext=>'<span class="fa fa-edit"></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22740372875944138)
,p_db_column_name=>'COPY_MAPPING'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Copy'
,p_column_link=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.::P201_RESP_PAGE_MAPPING_ID,P201_ACTION:#COPY_MAPPING#,COPY'
,p_column_linktext=>'<span class="fa fa-copy"></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22740393271944139)
,p_db_column_name=>'MAPPING_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Mapping Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22740503531944140)
,p_db_column_name=>'USER_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22740619118944141)
,p_db_column_name=>'RESPONSIBILITY_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Responsibility Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22740688743944142)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22740843789944143)
,p_db_column_name=>'PAGE_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Page Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22740893995944144)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22741025372944145)
,p_db_column_name=>'PAGE_GROUP_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Page Group Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22741106397944146)
,p_db_column_name=>'ENABLED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Enabled'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22741234235944147)
,p_db_column_name=>'ALLOW_OR_DENY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Allow Or Deny'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22753046725995771)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'160949'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT_MAPPING:COPY_MAPPING:MAPPING_TYPE:USER_NAME:RESPONSIBILITY_NAME:APPLICATION_NAME:PAGE_TYPE:PAGE_NAME:PAGE_GROUP_NAME:ENABLED:ALLOW_OR_DENY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22740065045944135)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22135508843036647)
,p_button_name=>'Add'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:201:P201_ACTION:CREATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21843222379285074)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22135508843036647)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21843288212285075)
,p_event_id=>wwv_flow_imp.id(21843222379285074)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22135508843036647)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00203
begin
wwv_flow_imp_page.create_page(
 p_id=>203
,p_name=>'Page Property'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Property'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14593729871703428)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26338141275946913)
,p_dialog_attributes=>'close: function(event, ui) {apex.navigation.dialog.close(true,{dialogPageId:204});}'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22741345663944148)
,p_plug_name=>'Page Property Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22743260950944167)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22743338260944168)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22743260950944167)
,p_button_name=>'P203_SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SAVE'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22741512296944150)
,p_name=>'P203_APP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22741345663944148)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22741608642944151)
,p_name=>'P203_APP_NAME'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(22741345663944148)
,p_prompt=>'App Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22741681256944152)
,p_name=>'P203_PAGE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22741345663944148)
,p_prompt=>'Page ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22741814650944153)
,p_name=>'P203_PAGE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22741345663944148)
,p_prompt=>'Page Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22741980791944154)
,p_name=>'P203_HIDDEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22741345663944148)
,p_prompt=>'Hidden'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(14617131155895541)||'.'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22742010450944155)
,p_name=>'P203_PAGE_ORDER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22741345663944148)
,p_prompt=>'Page Order'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29740930803763480)
,p_name=>'P203_USER_PAGE_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22741345663944148)
,p_prompt=>'User Page Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21843583376285078)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'rowExist NUMBER;',
'BEGIN',
'IF :P203_PAGE_ID IS NOT NULL OR ',
'   :P203_APP_ID IS NOT NULL OR ',
'   :P203_USER_PAGE_NAME IS NOT NULL THEN',
'    ',
'    SELECT count(*) INTO rowExist ',
'        FROM A2E_PAGE_EXTENDED ',
'       WHERE PAGE_ID        = :P203_PAGE_ID ',
'         AND APPLICATION_ID = :P203_APP_ID;',
'',
'    IF rowExist > 0 THEN',
'        UPDATE A2E_PAGE_EXTENDED ',
'        SET HIDDEN           = :P203_HIDDEN',
'          , PAGE_ORDER       = :P203_PAGE_ORDER',
'          , USER_PAGE_NAME   = :P203_USER_PAGE_NAME',
'          , LAST_UPDATED_BY  = :EBS_USER_ID',
'        WHERE PAGE_ID        = :P203_PAGE_ID ',
'        AND APPLICATION_ID   = :P203_APP_ID;',
'    ELSE',
'        INSERT INTO A2E_PAGE_EXTENDED (',
'              APPLICATION_ID',
'            , PAGE_ID',
'            , HIDDEN',
'            , PAGE_ORDER',
'            , USER_PAGE_NAME',
'            , CREATED_BY) VALUES (',
'              :P203_APP_ID',
'            , :P203_PAGE_ID',
'            , :P203_HIDDEN',
'            , :P203_PAGE_ORDER',
'            , :P203_USER_PAGE_NAME',
'            , :EBS_USER_ID);',
'            ',
'    END IF;',
'END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22743338260944168)
,p_process_success_message=>'Page property saved.'
,p_internal_uid=>15185402520937246
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22743153205944166)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Show data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'num_count NUMBER;',
'',
'BEGIN',
'IF :P203_PAGE_ID IS NOT NULL AND :P203_APP_ID IS NOT NULL THEN',
'  ',
'  FOR rs IN (',
'    SELECT PAGE_NAME ',
'      FROM APEX_APPLICATION_PAGES ',
'     WHERE PAGE_ID        = :P203_PAGE_ID ',
'       AND APPLICATION_ID = :P203_APP_ID) LOOP',
'    ',
'    :P203_PAGE_NAME := rs.PAGE_NAME;',
'  END LOOP;',
'',
'  SELECT COUNT(*)',
'    INTO num_Count',
'    FROM A2E_PAGE_EXTENDED ',
'   WHERE PAGE_ID        = :P203_PAGE_ID ',
'     AND APPLICATION_ID = :P203_APP_ID;',
'',
'  :P203_HIDDEN     := NULL;',
'  :P203_PAGE_ORDER := NULL;',
'  :P203_USER_PAGE_NAME := :203_PAGE_NAME;',
'',
'  IF num_Count = 1 THEN',
'    FOR RS IN (',
'      SELECT HIDDEN',
'           , PAGE_ORDER',
'           , USER_PAGE_NAME',
'        FROM A2E_PAGE_EXTENDED ',
'       WHERE PAGE_ID        = :P203_PAGE_ID ',
'         AND APPLICATION_ID = :P203_APP_ID) LOOP',
'',
'    :P203_HIDDEN     := rs.HIDDEN;',
'    :P203_PAGE_ORDER := rs.PAGE_ORDER;',
'    :P203_USER_PAGE_NAME := RS.USER_PAGE_NAME;',
'',
'  END LOOP;',
'  ELSE',
'    :P203_HIDDEN     := ''N'';',
'  END IF;',
'  ',
'  FOR RS IN (',
'    SELECT APPLICATION_NAME ',
'      FROM APEX_APPLICATIONS ',
'      WHERE APPLICATION_ID = :P203_APP_ID) LOOP',
'    ',
'    :P203_APP_NAME := rs.APPLICATION_NAME;',
'  END LOOP;',
'',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>16084972350596334
);
end;
/
prompt --application/pages/page_00204
begin
wwv_flow_imp_page.create_page(
 p_id=>204
,p_name=>'Page Properties'
,p_step_title=>'Page Properties'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14593729871703428)
,p_step_template=>wwv_flow_imp.id(24737196089674713)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26338141275946913)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22742162401944156)
,p_plug_name=>'Page Properties'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT aa.application_id',
'     , aa.application_name',
'     , aap.PAGE_ID',
'     , aap.PAGE_NAME',
'     , aapg.PAGE_GROUP_NAME',
'     , NVL (ape.hidden, ''N'') hidden',
'     , ape.page_order',
'     , NVL(ape.user_page_name, aap.PAGE_NAME) user_page_name',
'     , aap.PAGE_ID EDIT',
'  FROM apex_applications aa,',
'       apex_application_pages aap,',
'       apex_application_page_groups aapg,',
'       A2E_PAGE_EXTENDED ape',
' WHERE aa.application_id = aap.application_id',
'   AND aa.application_group like ''APEX2EBS%''',
'   AND aap.PAGE_GROUP_ID = aapg.GROUP_ID(+)',
'   AND aap.application_id = aapg.application_id(+)',
'   AND aap.page_id = ape.page_id(+)',
'   AND aap.application_id = ape.application_id(+)',
'   AND aap.page_id > 200',
'   AND aap.page_mode = ''Normal''',
'order by aa.application_name, aap.page_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Page Properties'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22742191124944157)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APEX2EBS'
,p_internal_uid=>16084010269596325
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22742310647944158)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'App ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22742418708944159)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'App Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22742529475944160)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Page ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22742669884944161)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22742753500944162)
,p_db_column_name=>'PAGE_GROUP_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Page Group'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22742816348944163)
,p_db_column_name=>'HIDDEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Hidden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22742962077944164)
,p_db_column_name=>'PAGE_ORDER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Page Order'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29741040664763481)
,p_db_column_name=>'USER_PAGE_NAME'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'User Page Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22743024403944165)
,p_db_column_name=>'EDIT'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.::P203_APP_ID,P203_PAGE_ID:#APPLICATION_ID#,#PAGE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22942399764316938)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'162843'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_ID:APPLICATION_NAME:PAGE_ID:PAGE_NAME:PAGE_GROUP_NAME:HIDDEN:PAGE_ORDER:EDIT:USER_PAGE_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21843457543285076)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22742162401944156)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21843536137285077)
,p_event_id=>wwv_flow_imp.id(21843457543285076)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22742162401944156)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00205
begin
wwv_flow_imp_page.create_page(
 p_id=>205
,p_name=>'Session Info'
,p_step_title=>'&GLOBAL_APP_NAME. | &EBS_RESP_NAME. | Session Info'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14593729871703428)
,p_step_template=>wwv_flow_imp.id(24737196089674713)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26338141275946913)
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27539363691055766)
,p_plug_name=>'Session Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25248871340524097)
,p_plug_name=>'Sessions'
,p_parent_plug_id=>wwv_flow_imp.id(27539363691055766)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ses.apex_session_created LOGON_DATE',
'     , ses.apex_session_id     ',
'     , ses.ebs_user_name',
'     , ses.ebs_resp_name',
'     , ses.apex_app_id  || '' - '' || ses.application_name app_name',
'     , ses.apex_page_id || '' - '' || ses.page_name app_page',
'     , ses.apex_lang_code',
'     , decode(ses.ebs_session_id, NULL, ''N'', ''Y'')  FROM_EBS',
'     , ses.ebs_org_id',
'     , ses.ebs_lang_code',
'     , ses.ip_address',
'  from a2e_sessions_v ses',
' where 1=1',
'   and ses.apex_session_created between NVL(:P205_DATE_FROM, TO_DATE(''19000101'', ''YYYYMMDD'')) ',
'       and NVL(:P205_DATE_TO,SYSDATE+1)',
'   and ses.ebs_user_name = upper(NVL(:P205_USER, ses.ebs_user_name))',
'   and ses.apex_app_id  = NVL(:P205_APP_ID, ses.apex_app_id)',
'   and ses.apex_page_id = NVL(:P205_PAGE_ID, ses.apex_page_id)'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sessions'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27539494536055768)
,p_name=>'LOGON_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOGON_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Logon Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27539665163055769)
,p_name=>'APEX_SESSION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_SESSION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apex Session ID'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27539697470055770)
,p_name=>'EBS_USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EBS_USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'User'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27539869992055771)
,p_name=>'EBS_RESP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EBS_RESP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Responsibility'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27539928070055772)
,p_name=>'APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'App Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>298
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27539993954055773)
,p_name=>'APP_PAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_PAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'App Page'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>298
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27540094621055774)
,p_name=>'APEX_LANG_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_LANG_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Apex Lang'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27540313853055776)
,p_name=>'EBS_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EBS_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27540464218055777)
,p_name=>'EBS_LANG_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EBS_LANG_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'EBS Lang.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27540558342055778)
,p_name=>'IP_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IP_ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'IP Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29740774912763478)
,p_name=>'FROM_EBS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_EBS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'From EBS'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(27539412411055767)
,p_internal_uid=>20881231555707935
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(29243560080036999)
,p_interactive_grid_id=>wwv_flow_imp.id(27539412411055767)
,p_static_id=>'225854'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(29243760182037000)
,p_report_id=>wwv_flow_imp.id(29243560080036999)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29244272731037003)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(27539494536055768)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29245118305037007)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(27539665163055769)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29246030718037010)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(27539697470055770)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29246909526037010)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(27539869992055771)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29247795667037011)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(27539928070055772)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29248737746037013)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(27539993954055773)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29249648945037014)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(27540094621055774)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29251737604037017)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(27540313853055776)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29252665283037017)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(27540464218055777)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29253543378037019)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(27540558342055778)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33142476738771100)
,p_view_id=>wwv_flow_imp.id(29243760182037000)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(29740774912763478)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27536172250055734)
,p_plug_name=>'Filter'
,p_parent_plug_id=>wwv_flow_imp.id(27539363691055766)
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30838262639595148)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(27536172250055734)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillEnd:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27536226074055735)
,p_name=>'P205_DATE_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27536172250055734)
,p_prompt=>'Date From'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_colspan=>2
,p_grid_column=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27536359688055736)
,p_name=>'P205_DATE_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27536172250055734)
,p_prompt=>'Date To'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30837932491595145)
,p_name=>'P205_USER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27536172250055734)
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30837986152595146)
,p_name=>'P205_APP_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27536172250055734)
,p_prompt=>'App ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30838086207595147)
,p_name=>'P205_PAGE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27536172250055734)
,p_prompt=>'Page ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00206
begin
wwv_flow_imp_page.create_page(
 p_id=>206
,p_name=>'Language Mappings'
,p_step_title=>'Language Mappings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14593729871703428)
,p_step_template=>wwv_flow_imp.id(24737196089674713)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26338141275946913)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27540663072055779)
,p_plug_name=>'Language Mappings'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'LANG_ID,',
'DISPLAY_NAME,',
'HTTP_ACCEPT_LANGUAGE,',
'FSP_LANGUAGE_PREFERENCE,',
'EBS_LANG,',
'decode(DEFAULT_MAPPING, ',
'''Y'', ''<img src="'' || v(''IMAGE_PREFIX'') || ''check_small_black.gif"'',',
'''B'', ''<font color="Red">Base Language</font>'',',
'NULL) DEFAULT_MAPPING ',
'FROM',
'A2E_LANG_MAPPING'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Language Mappings'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(27540726346055780)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APEX2EBS'
,p_internal_uid=>20882545490707948
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27540860454055781)
,p_db_column_name=>'LANG_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.::P207_LANG_ID:#LANG_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27540964327055782)
,p_db_column_name=>'DISPLAY_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Language'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29736236108763433)
,p_db_column_name=>'HTTP_ACCEPT_LANGUAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'HTTP Accept Lang'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29736308674763434)
,p_db_column_name=>'FSP_LANGUAGE_PREFERENCE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'FSP Lang'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29736465713763435)
,p_db_column_name=>'EBS_LANG'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'EBS Lang'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29736575519763436)
,p_db_column_name=>'DEFAULT_MAPPING'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Default Mapping'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(29744254793766449)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'230861'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LANG_ID:DISPLAY_NAME:HTTP_ACCEPT_LANGUAGE:FSP_LANGUAGE_PREFERENCE:EBS_LANG:DEFAULT_MAPPING'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(29736601103763437)
,p_name=>'EBS Languages'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT description,',
'       language_code,',
'       DECODE (installed_flag,  ''B'', ''BASE'',  ''I'', ''INSTALLED'') installed_flag',
'  FROM a2e_languages',
'order by 3,1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29736684982763438)
,p_query_column_id=>1
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>20
,p_column_heading=>'Description'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29736821289763439)
,p_query_column_id=>2
,p_column_alias=>'LANGUAGE_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Language Code'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29736965491763440)
,p_query_column_id=>3
,p_column_alias=>'INSTALLED_FLAG'
,p_column_display_sequence=>30
,p_column_heading=>'Installed Flag'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(29736997474763441)
,p_name=>'APEX Languages'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select translated_app_language ',
'     , ''Translated'' lang_type',
'  from APEX_APPLICATION_TRANS_MAP ',
'where primary_application_id=:APP_ID',
'union',
'select application_primary_language ',
'     , ''Primary'' lang_type',
'  from apex_applications',
' where application_id=:APP_ID',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29737141733763442)
,p_query_column_id=>1
,p_column_alias=>'TRANSLATED_APP_LANGUAGE'
,p_column_display_sequence=>10
,p_column_heading=>'Translated App Language'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29737238781763443)
,p_query_column_id=>2
,p_column_alias=>'LANG_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Lang Type'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29738489945763456)
,p_plug_name=>'About Language Mappings'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The logic of determining which language to display in APEX is:',
'<ul>',
' <li>If log on from APEX login page</li>',
'    <ul>',
'    <li>Lookup the APEX language from browser language (HTTP Language)</li> ',
'    <li>User can choose other languages at the login page, if NLS patches was applied to the EBS side.  When selected, the APEX language is lookup from EBS language.</li>',
'   </ul>',
'  <li>If log on from EBS side and link to APEX</li>',
'   <ul>',
'    <li>The selected EBS language will be used to lookup the APEX language.</li>',
'   <ul>',
'</ul>',
'<br/>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00207
begin
wwv_flow_imp_page.create_page(
 p_id=>207
,p_name=>'Language Mapping'
,p_page_mode=>'MODAL'
,p_step_title=>'Language Mapping'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(14593729871703428)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(26338141275946913)
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29737722077763448)
,p_plug_name=>'Mapping Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29737811505763449)
,p_name=>'P207_LANG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29737722077763448)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29737934551763450)
,p_name=>'P207_LANGUAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29737722077763448)
,p_prompt=>'Language'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29738074063763451)
,p_name=>'P207_HTTP_LANGUAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29737722077763448)
,p_prompt=>'HTTP Language'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29738100126763452)
,p_name=>'P207_APEX_LANGUAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29737722077763448)
,p_prompt=>'APEX Language'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29738271498763453)
,p_name=>'P207_EBS_LANGUAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(29737722077763448)
,p_prompt=>'EBS Language'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29738335994763454)
,p_name=>'P207_DEFAULT_MAPPING'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(29737722077763448)
,p_prompt=>'Default Mapping'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(14617131155895541)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29738470885763455)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'IF :P207_LANG_ID IS NOT NULL THEN',
'  FOR RS IN (SELECT ',
'     DISPLAY_NAME,',
'     HTTP_ACCEPT_LANGUAGE,',
'     FSP_LANGUAGE_PREFERENCE,',
'     EBS_LANG,',
'     DEFAULT_MAPPING',
'     FROM A2E_LANG_MAPPING ',
'    WHERE LANG_ID = :P207_LANG_ID',
'   ) LOOP',
'    :P207_LANGUAGE        := RS.DISPLAY_NAME;',
'    :P207_HTTP_LANGUAGE   := RS.HTTP_ACCEPT_LANGUAGE;',
'    :P207_APEX_LANGUAGE   := RS.FSP_LANGUAGE_PREFERENCE;',
'    :P207_EBS_LANGUAGE    := RS.EBS_LANG;',
'    :P207_DEFAULT_MAPPING := RS.DEFAULT_MAPPING;',
'  END LOOP;',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23080290030415623
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(26435327757028839)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
