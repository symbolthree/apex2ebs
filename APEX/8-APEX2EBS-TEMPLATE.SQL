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
,p_default_workspace_id=>8002975314700428
,p_default_application_id=>102
,p_default_id_offset=>20644469739001451
,p_default_owner=>'APEX2EBS'
);
end;
/
 
prompt APPLICATION 102 - A2E-EXAMPLES
--
-- Application Export:
--   Application:     102
--   Name:            A2E-EXAMPLES
--   Date and Time:   11:38 Monday March 23, 2026
--   Exported By:     APEX2EBS
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      7
--       Items:                   11
--       Processes:                5
--       Regions:                  9
--       Buttons:                  6
--     Shared Components:
--       Logic:
--         Items:                  9
--         Processes:              1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
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
--         Messages:               8
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.0
--   Instance ID:     3002666404909762
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'A2E-EXAMPLES')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A2E-EXAMPLES')
,p_application_group=>wwv_flow_imp.id(30742232823843513)
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
,p_authentication_id=>wwv_flow_imp.id(47884803874728782)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'APEX2EBS'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'3.0-beta'
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
,p_version_scn=>12204638192365
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(102)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:101:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:101:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_auto_dismiss_success_msg=>true
,p_navigation_list_id=>wwv_flow_imp.id(43099550895708218)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--classic'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(43099550895708218)
,p_nav_bar_list_template_id=>2526754704087354841
,p_nav_bar_template_options=>'#DEFAULT#:js-tabLike'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(43099550895708218)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>12204636463376
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43249246039708311)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(52986086137610622)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Back to EBS'
,p_list_item_link_target=>'f?p=&APP_ID.:198:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-redo-arrow'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select * from a2e_sessions where apex_session_id = :APP_SESSION AND EBS_SESSION_ID IS NOT NULL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(52986367865611587)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(43239016928708282)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>12204636458589
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43250722354708318)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43251250651708318)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(43250722354708318)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43251570116708318)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_imp.id(43250722354708318)
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
 p_id=>wwv_flow_imp.id(43240290312708290)
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
 p_id=>wwv_flow_imp.id(43240587126708292)
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
 p_id=>wwv_flow_imp.id(35307488189352844)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>2356411
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36108425964390514)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36776608765295428)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>10132925498554
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36794150506400439)
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
 p_id=>wwv_flow_imp.id(36797200982409259)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>10132964684739
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36799045143409259)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>10132964684739
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800843964409259)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>10132964684739
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(37320950099901957)
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
 p_id=>wwv_flow_imp.id(43096275591708215)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(43096867645708217)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(43097234493708217)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(43097505182708217)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(43098129534708217)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(43098420213708217)
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
 p_id=>wwv_flow_imp.id(54986920061951778)
,p_name=>'APEX2EBS Page Auth'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'IF :EBS_USER_ID IS NULL THEN',
'  FOR RS IN (SELECT * FROM A2E_SESSIONS WHERE APEX_SESSION_ID = :APP_SESSION) LOOP',
'    :EBS_LANG        := RS.EBS_LANG_CODE; ',
'    :EBS_RESP_APP_ID := RS.EBS_RESP_APP_ID;',
'    :EBS_RESP_ID     := RS.EBS_RESP_ID;',
'    :EBS_RESP_NAME   := RS.EBS_RESP_NAME;',
'    :EBS_USER_ID     := RS.EBS_USER_ID;',
'  END LOOP;',
'',
'  FOR RS IN (SELECT A2E_PROFILE_NAME, EBS_URL FROM A2E_INSTANCE_INFO) LOOP',
'    :G_PROFILE_NAME  := RS.A2E_PROFILE_NAME;',
'    :EBS_URL         := RS.EBS_URL;',
'  END LOOP;',
'END IF;',
'',
'IF A2E_PAGE_AUTHORIZATION(',
'    :EBS_USER_ID, :EBS_RESP_ID, :APP_ID, :APP_PAGE_ID',
')=''Y'' THEN',
'   RETURN TRUE;',
'ELSE',
'  RETURN FALSE;',
'END IF;',
'END;',
'',
''))
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Responsibility [&EBS_RESP_NAME.] or user [&APP_USER.] does not have permission to access this page.',
'(&EBS_USER_ID. / &EBS_RESP_ID. / &APP_ID. / &APP_PAGE_ID.)'))
,p_version_scn=>12204636426230
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
 p_id=>wwv_flow_imp.id(55084553022066293)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Session Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN ',
'      UPDATE A2E_SESSIONS SET',
'             APEX_LANG_CODE  = :EBS_LANG',
'           , APEX_APP_ID     = :APP_ID',
'           , APEX_PAGE_ID    = :APP_PAGE_ID',
'           , APEX_SESSION_UPDATED = SYSDATE',
'           , EBS_USER_ID     = :EBS_USER_ID',
'           , EBS_RESP_ID     = :EBS_RESP_ID',
'           , EBS_RESP_NAME   = :EBS_RESP_NAME',
'           , EBS_RESP_APP_ID = :EBS_RESP_APP_ID',
'           , EBS_ORG_ID      = :EBS_ORG_ID',
'        WHERE  APEX_SESSION_ID = :APP_SESSION;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>':APP_PAGE_ID > 200'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>12204629982932
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_lang
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(21048866104301490)
,p_name=>'EBS_LANG'
,p_protection_level=>'I'
,p_version_scn=>12204635972605
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_org_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(21049086633302048)
,p_name=>'EBS_ORG_ID'
,p_protection_level=>'I'
,p_version_scn=>12204635972700
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_resp_app_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(21049266366302459)
,p_name=>'EBS_RESP_APP_ID'
,p_protection_level=>'I'
,p_version_scn=>12204635972717
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_resp_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(21049419075302817)
,p_name=>'EBS_RESP_ID'
,p_protection_level=>'I'
,p_version_scn=>12204635972734
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_resp_name
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(21049602168303253)
,p_name=>'EBS_RESP_NAME'
,p_protection_level=>'I'
,p_version_scn=>12204635972754
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_url
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(21049821861303606)
,p_name=>'EBS_URL'
,p_protection_level=>'I'
,p_version_scn=>12204635972771
);
end;
/
prompt --application/shared_components/logic/application_items/ebs_user_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(21050012175304026)
,p_name=>'EBS_USER_ID'
,p_protection_level=>'I'
,p_version_scn=>12204635972788
);
end;
/
prompt --application/shared_components/logic/application_items/fsp_language_preference
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(21050237219304626)
,p_name=>'FSP_LANGUAGE_PREFERENCE'
,p_protection_level=>'N'
,p_version_scn=>12204635972811
);
end;
/
prompt --application/shared_components/logic/application_items/g_profile_name
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(21256048042807832)
,p_name=>'G_PROFILE_NAME'
,p_protection_level=>'I'
,p_version_scn=>12204636406669
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
 p_id=>wwv_flow_imp.id(43244490904708301)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_imp.id(43244490904708301)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(43244910693708303)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/yes_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(43265909941900406)
,p_lov_name=>'YES_NO'
,p_lov_query=>'.'||wwv_flow_imp.id(43265909941900406)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(43266252480900415)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(43266652083900415)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(43242508657708293)
,p_group_name=>'A2E Admin'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(43253261194802342)
,p_group_name=>'A2E Core'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(36686791921699082)
,p_group_name=>'A2E Examples'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(43099045182708218)
,p_name=>'Breadcrumb'
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
 p_id=>wwv_flow_imp.id(53385974875679578)
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
'      <span class="t-Icon fa fa-gear"></span>        ',
'      <span style="padding-right: 20px;">&G_PROFILE_NAME.</span>',
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
 p_id=>wwv_flow_imp.id(53386438903679584)
,p_page_template_id=>wwv_flow_imp.id(53385974875679578)
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
 p_id=>wwv_flow_imp.id(53386912414679586)
,p_page_template_id=>wwv_flow_imp.id(53385974875679578)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(53387417548679586)
,p_page_template_id=>wwv_flow_imp.id(53385974875679578)
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
 p_id=>wwv_flow_imp.id(53387951820679586)
,p_page_template_id=>wwv_flow_imp.id(53385974875679578)
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
 p_id=>wwv_flow_imp.id(53388450789679586)
,p_page_template_id=>wwv_flow_imp.id(53385974875679578)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(53388886771679586)
,p_page_template_id=>wwv_flow_imp.id(53385974875679578)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(53389408178679586)
,p_page_template_id=>wwv_flow_imp.id(53385974875679578)
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
 p_id=>wwv_flow_imp.id(43219490173708273)
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
 p_id=>wwv_flow_imp.id(43218476722708270)
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
 p_id=>wwv_flow_imp.id(53389943536679587)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(53385974875679578)
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
prompt --application/shared_components/globalization/translations
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
 p_id=>wwv_flow_imp.id(37689627241033326)
,p_name=>'P101.INVALID_CREDENTIALS'
,p_message_text=>'Login failed. Please verify your login information or contact the system administrator.'
,p_version_scn=>12204630281868
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(37689816069036611)
,p_name=>'P101.INVALID_CREDENTIALS'
,p_message_language=>'fr-ca'
,p_message_text=>unistr('\00C9chec de la connexion. Veuillez v\00E9rifier vos informations de connexion ou contacter l''administrateur syst\00E8me.')
,p_version_scn=>12204630281928
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(60906066582619078)
,p_name=>'P102.NO_DISPLAY_ITEM'
,p_message_text=>'This responsibility does not have any item.'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(60906509250632156)
,p_name=>'P102.NO_DISPLAY_ITEM'
,p_message_language=>'fr-ca'
,p_message_text=>unistr('Cette responsabilit\00E9 n''a aucun article.')
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(60980462951067345)
,p_name=>'P102.NO_DISPLAY_ITEM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\8077\8CAC\6C92\6709\4EFB\4F55\9805\76EE\3002')
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(60907068981658168)
,p_name=>'P102.SELECT_RESP'
,p_message_text=>'Please select a responsibility.'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(60907328196661936)
,p_name=>'P102.SELECT_RESP'
,p_message_language=>'fr-ca'
,p_message_text=>unistr('Veuillez s\00E9lectionner une responsabilit\00E9')
,p_version_scn=>1
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(60980598754067345)
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
 p_id=>wwv_flow_imp.id(43242342241708292)
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
 p_id=>wwv_flow_imp.id(47884803874728782)
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
prompt --application/pages/page_00102
begin
wwv_flow_imp_page.create_page(
 p_id=>102
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>':A2E_PROFILE_NAME. | Home'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(43253261194802342)
,p_step_template=>wwv_flow_imp.id(53385974875679578)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19055681527138411)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Redirect to Core Home'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'p_url varchar2(100);',
'',
'BEGIN',
'FOR rs IN (SELECT A2E_APP_ID FROM A2E_INSTANCE_INFO) LOOP',
'p_url := ''f?p='' || rs.A2E_APP_ID || '':HOME:'' || :APP_SESSION;',
'END LOOP;',
' APEX_UTIL.REDIRECT_URL(p_url => p_url);',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19055681527138411
);
end;
/
prompt --application/pages/page_00198
begin
wwv_flow_imp_page.create_page(
 p_id=>198
,p_name=>'To EBS'
,p_alias=>'TO-EBS'
,p_step_title=>'&A2E_PROFILE_NAME. | To EBS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(43253261194802342)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19056085463138415)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Redirect to Core'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'p_url varchar2(100);',
'',
'BEGIN',
'FOR rs IN (SELECT A2E_APP_ID FROM A2E_INSTANCE_INFO) LOOP',
'p_url := ''f?p='' || rs.A2E_APP_ID || '':TO-EBS:'' || :APP_SESSION;',
'END LOOP;',
' APEX_UTIL.REDIRECT_URL(p_url => p_url);',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19056085463138415
);
end;
/
prompt --application/pages/page_00199
begin
wwv_flow_imp_page.create_page(
 p_id=>199
,p_name=>'Logout'
,p_alias=>'LOGOUT'
,p_step_title=>' &G_PROFILE_NAME. | Logout'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(43253261194802342)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19056189267138416)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Redirect to Core'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'p_url varchar2(100);',
'',
'BEGIN',
'FOR rs IN (SELECT A2E_APP_ID FROM A2E_INSTANCE_INFO) LOOP',
'p_url := ''f?p='' || rs.A2E_APP_ID || '':LOGOUT:'' || :APP_SESSION;',
'END LOOP;',
' APEX_UTIL.REDIRECT_URL(p_url => p_url);',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19056189267138416
);
end;
/
prompt --application/pages/page_00301
begin
wwv_flow_imp_page.create_page(
 p_id=>301
,p_name=>'Profile Option Values'
,p_alias=>'PROFILE-OPTION-VALUES'
,p_step_title=>'&G_PROFILE_NAME. | &EBS_RESP_NAME. | Profile Option Values'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36686791921699082)
,p_step_template=>wwv_flow_imp.id(53385974875679578)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(54986920061951778)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28855429409326995)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34071745985717124)
,p_plug_name=>'Profile Option Values'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * ',
' from A2E_PROFILE_OPTION_VALUES@APEX_TO_EBS',
' where 1=1',
'   AND language = :EBS_LANG',
'   AND (',
'    UPPER(PROFILE_OPTION) like NVL(UPPER(:P301_OPTION_CODE), ''XXX'')',
'   AND UPPER(PROFILE_OPTION_NAME) like NVL(UPPER(:P301_OPTION_NAME), ''XXX''))',
'ORDER BY profile_option, level_name, level_value',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Profile Option Values'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(34071843246717124)
,p_name=>'Profile Option Values'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APEX2EBS'
,p_internal_uid=>13427373507715673
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34072474332717130)
,p_db_column_name=>'PROFILE_OPTION_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34072871927717130)
,p_db_column_name=>'PROFILE_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Profile Option'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34073358702717130)
,p_db_column_name=>'PROFILE_OPTION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Profile Option Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34073675227717130)
,p_db_column_name=>'LANGUAGE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Language'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34074099222717130)
,p_db_column_name=>'LEVEL_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Level Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34074524012717132)
,p_db_column_name=>'LEVEL_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Level Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34074926409717132)
,p_db_column_name=>'LEVEL_VALUE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Level Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34075271009717132)
,p_db_column_name=>'OPTION_VALUE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Option Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34075707979717132)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34076083551717132)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34076501128717132)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34076878776717132)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37503606927003389)
,p_db_column_name=>'LEVEL_VALUE_ID'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Level Value Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(34079438301751152)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'134350'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROFILE_OPTION_ID:PROFILE_OPTION:PROFILE_OPTION_NAME:LANGUAGE:LEVEL_ID:LEVEL_NAME:LEVEL_VALUE:OPTION_VALUE:CREATION_DATE:CREATED_BY:LAST_UPDATE_DATE:LAST_UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28855867931326999)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(28855429409326995)
,p_button_name=>'Go'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Go'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28855919718327000)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(28855429409326995)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_redirect_url=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP,301::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28855570980326997)
,p_name=>'P301_OPTION_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28855429409326995)
,p_prompt=>'Option Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28855690137326998)
,p_name=>'P301_OPTION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28855429409326995)
,p_prompt=>'Option Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28855987083327001)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8211517344325550
);
end;
/
prompt --application/pages/page_00302
begin
wwv_flow_imp_page.create_page(
 p_id=>302
,p_name=>'User Responsibility Report'
,p_alias=>'USER-RESPONSIBILITY-REPORT'
,p_step_title=>'User Responsibility Report'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36686791921699082)
,p_step_template=>wwv_flow_imp.id(53385974875679578)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34487035573402453)
,p_plug_name=>'Users & Responsibilities'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35314230715335284)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(34487035573402453)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(35314385505335286)
,p_name=>'Users'
,p_title=>'Users'
,p_parent_plug_id=>wwv_flow_imp.id(34487035573402453)
,p_template=>2664334895415463485
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'DISTINCT ',
'USER_ID',
',USER_NAME',
',EMPLOYEE_NUMBER',
',EMPLOYEE_ID',
',USER_DESCRIPTION',
',EMPLOYEE_NAME',
',BUSINESS_GROUP',
',EMAIL_ADDRESS',
',USER_START_DATE',
',USER_END_DATE',
',PASSWORD_RESET_DATE',
',USER_CREATION_DATE',
',USER_CREATED_BY',
',USER_LAST_UPDATE_DATE',
',USER_LAST_LOGON_DATE',
',USER_PASSWORD_DATE',
',USER_LAST_UPDATED_BY',
'FROM A2E_USER_RESPS_V@APEX_TO_EBS',
'WHERE 1=1',
'  AND USER_NAME LIKE UPPER(:P302_USER)',
'  AND LANGUAGE=:EBS_LANG',
'  AND UPPER(RESPONSIBILITY_NAME) like UPPER(:P302_RESP)',
'ORDER BY USER_NAME'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35314533557335287)
,p_query_column_id=>1
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Resp.'
,p_column_link=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.:RP,:P302_USER_ID,P302_UISER_NAME:#USER_ID#,#USER_NAME#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35314739192335289)
,p_query_column_id=>2
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'User Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35314623828335288)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYEE_NUMBER'
,p_column_display_sequence=>40
,p_column_heading=>'Employee Number'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35512088374264775)
,p_query_column_id=>4
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35314827963335290)
,p_query_column_id=>5
,p_column_alias=>'USER_DESCRIPTION'
,p_column_display_sequence=>60
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35314883981335291)
,p_query_column_id=>6
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Employee Name'
,p_column_link=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.::P303_PERSON_ID:#EMPLOYEE_ID#'
,p_column_linktext=>'#EMPLOYEE_NAME#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35510729880264761)
,p_query_column_id=>7
,p_column_alias=>'BUSINESS_GROUP'
,p_column_display_sequence=>80
,p_column_heading=>'Business Group'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35315056347335292)
,p_query_column_id=>8
,p_column_alias=>'EMAIL_ADDRESS'
,p_column_display_sequence=>90
,p_column_heading=>'Email Address'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35315112408335293)
,p_query_column_id=>9
,p_column_alias=>'USER_START_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35315198753335294)
,p_query_column_id=>10
,p_column_alias=>'USER_END_DATE'
,p_column_display_sequence=>110
,p_column_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35315323848335295)
,p_query_column_id=>11
,p_column_alias=>'PASSWORD_RESET_DATE'
,p_column_display_sequence=>130
,p_column_heading=>'Password Reset Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35315448289335296)
,p_query_column_id=>12
,p_column_alias=>'USER_CREATION_DATE'
,p_column_display_sequence=>150
,p_column_heading=>'Creation Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35315478472335297)
,p_query_column_id=>13
,p_column_alias=>'USER_CREATED_BY'
,p_column_display_sequence=>160
,p_column_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35315667961335298)
,p_query_column_id=>14
,p_column_alias=>'USER_LAST_UPDATE_DATE'
,p_column_display_sequence=>170
,p_column_heading=>'Last Update Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35315744544335299)
,p_query_column_id=>15
,p_column_alias=>'USER_LAST_LOGON_DATE'
,p_column_display_sequence=>140
,p_column_heading=>'Last Logon Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35315850432335300)
,p_query_column_id=>16
,p_column_alias=>'USER_PASSWORD_DATE'
,p_column_display_sequence=>120
,p_column_heading=>'Password Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35315905187335301)
,p_query_column_id=>17
,p_column_alias=>'USER_LAST_UPDATED_BY'
,p_column_display_sequence=>180
,p_column_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(35509866606264752)
,p_name=>'Responsibilities'
,p_title=>'Responsibilities of &P302_UISER_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(34487035573402453)
,p_template=>2664334895415463485
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RESPONSIBILITY_NAME',
'     , RESP_START_DATE',
'     , RESP_END_DATE',
'     , RESP_CREATION_DATE',
'     , RESP_CREATED_BY',
'     , RESP_LAST_UPDATE_DATE',
'     , RESP_LAST_UPDATD_BY',
'     FROM A2E_USER_RESPS_V@APEX_TO_EBS',
'WHERE 1=1',
'  AND LANGUAGE=:EBS_LANG',
'  AND USER_ID = NVL(:P302_USER_ID,-999)',
'ORDER BY RESPONSIBILITY_NAME'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35510830055264762)
,p_query_column_id=>1
,p_column_alias=>'RESPONSIBILITY_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Responsibility Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35510939228264763)
,p_query_column_id=>2
,p_column_alias=>'RESP_START_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Resp Start Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35511019444264764)
,p_query_column_id=>3
,p_column_alias=>'RESP_END_DATE'
,p_column_display_sequence=>30
,p_column_heading=>'Resp End Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35511143066264765)
,p_query_column_id=>4
,p_column_alias=>'RESP_CREATION_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Resp Creation Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35511234893264766)
,p_query_column_id=>5
,p_column_alias=>'RESP_CREATED_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Resp Created By'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35511359980264767)
,p_query_column_id=>6
,p_column_alias=>'RESP_LAST_UPDATE_DATE'
,p_column_display_sequence=>60
,p_column_heading=>'Resp Last Update Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35511429982264768)
,p_query_column_id=>7
,p_column_alias=>'RESP_LAST_UPDATD_BY'
,p_column_display_sequence=>70
,p_column_heading=>'Resp Last Updatd By'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34487186873402455)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(35314230715335284)
,p_button_name=>'Go'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35511743439264771)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(35314230715335284)
,p_button_name=>'Reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_redirect_url=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.:RP,302::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34487129948402454)
,p_name=>'P302_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(35314230715335284)
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34488267561402465)
,p_name=>'P302_RESP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(35314230715335284)
,p_prompt=>'Responsibility'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34490376363402487)
,p_name=>'P302_USER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35511506212264769)
,p_name=>'P302_UISER_NAME'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35511644095264770)
,p_name=>'P302_ABOUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34487035573402453)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>You can search the responsibilities of one or more users, or list of users which have certain responsibility.</h4>',
'',
'- Either one field must have value. Wildcard character "%" is accepted. </br>',
'- Enter "%" in the User or Responsibility field if no value is specified. </br>',
''))
,p_prompt=>'About'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'N')).to_clob
);
end;
/
prompt --application/pages/page_00303
begin
wwv_flow_imp_page.create_page(
 p_id=>303
,p_name=>'Employee Details'
,p_alias=>'EMPLOYEE-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Employee Details'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36686791921699082)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(35511957767264773)
,p_name=>'Details'
,p_template=>2072724515482255512
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'PERSON_ID,',
'BUSINESS_GROUP,',
'EMPLOYEE_NUMBER,',
'FIRST_NAME,',
'MIDDLE_NAMES,',
'LAST_NAME,',
'START_DATE,',
'EMAIL_ADDRESS,',
'SEX,',
'AGE,',
'PHONE_NO,',
'JOB_NAME,',
'POSITION_NAME,',
'EMPLOYEE_LOCATION,',
'SUPERVISIOR_NUMBER,',
'SUPERVISIOR_NAME',
'from A2E_EMPLOYEE_DETAILS_V@APEX_TO_EBS',
'where person_id = :P303_PERSON_ID',
'and rownum < 2'))
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
 p_id=>wwv_flow_imp.id(35514075164264795)
,p_query_column_id=>1
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35513282023264787)
,p_query_column_id=>2
,p_column_alias=>'BUSINESS_GROUP'
,p_column_display_sequence=>20
,p_column_heading=>'Business Group'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35514244405264796)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYEE_NUMBER'
,p_column_display_sequence=>30
,p_column_heading=>'Employee No'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35514347453264797)
,p_query_column_id=>4
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35514396259264798)
,p_query_column_id=>5
,p_column_alias=>'MIDDLE_NAMES'
,p_column_display_sequence=>50
,p_column_heading=>'Middle Names'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35514539007264799)
,p_query_column_id=>6
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35514599808264800)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35514676782264801)
,p_query_column_id=>8
,p_column_alias=>'EMAIL_ADDRESS'
,p_column_display_sequence=>90
,p_column_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36487934291423052)
,p_query_column_id=>9
,p_column_alias=>'SEX'
,p_column_display_sequence=>130
,p_column_heading=>'Sex'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36488048661423053)
,p_query_column_id=>10
,p_column_alias=>'AGE'
,p_column_display_sequence=>140
,p_column_heading=>'Age'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36488157480423054)
,p_query_column_id=>11
,p_column_alias=>'PHONE_NO'
,p_column_display_sequence=>150
,p_column_heading=>'Phone No'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35513658273264790)
,p_query_column_id=>12
,p_column_alias=>'JOB_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36488225760423055)
,p_query_column_id=>13
,p_column_alias=>'POSITION_NAME'
,p_column_display_sequence=>160
,p_column_heading=>'Position'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(35513724367264791)
,p_query_column_id=>14
,p_column_alias=>'EMPLOYEE_LOCATION'
,p_column_display_sequence=>80
,p_column_heading=>'Location'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36488280074423056)
,p_query_column_id=>15
,p_column_alias=>'SUPERVISIOR_NUMBER'
,p_column_display_sequence=>170
,p_column_heading=>'Supervisior No'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36488392079423057)
,p_query_column_id=>16
,p_column_alias=>'SUPERVISIOR_NAME'
,p_column_display_sequence=>180
,p_column_heading=>'Supervisior Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35511816862264772)
,p_name=>'P303_PERSON_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00304
begin
wwv_flow_imp_page.create_page(
 p_id=>304
,p_name=>'Price List'
,p_alias=>'PRICE-LIST'
,p_step_title=>'Price List'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(36686791921699082)
,p_step_template=>wwv_flow_imp.id(53385974875679578)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(54986920061951778)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19057498532138429)
,p_plug_name=>'About'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'Select a price list and show the price list items.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37504314490003396)
,p_plug_name=>'Pirce List Lines'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organization_name operation_unit',
'     , organization_code org_code',
'     , price_list',
'     , segment1 item_name',
'     , uom',
'     , description',
'     , CURRENCY_CODE currency',
'     , OPERAND price',
'     , START_DATE_ACTIVE',
'     , END_DATE_ACTIVE',
'FROM A2E_PRICE_LIST_LINES@APEX_TO_EBS',
'where LIST_HEADER_ID=:P304_PRICE_LIST',
'  and ORGANIZATION_ID=:P304_MFG_ORG_ID',
'  and language=:EBS_LANG',
'order by segment1'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(19056317959138418)
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
,p_internal_uid=>19056317959138418
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19056428917138419)
,p_db_column_name=>'OPERATION_UNIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Operation Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19056528334138420)
,p_db_column_name=>'ORG_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Org Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19056616014138421)
,p_db_column_name=>'PRICE_LIST'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Price List'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19056753585138422)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19056873035138423)
,p_db_column_name=>'UOM'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Uom'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19056975342138424)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19057066912138425)
,p_db_column_name=>'CURRENCY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19057178240138426)
,p_db_column_name=>'PRICE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19057230638138427)
,p_db_column_name=>'START_DATE_ACTIVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Start Date Active'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19057388636138428)
,p_db_column_name=>'END_DATE_ACTIVE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'End Date Active'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21286684132213306)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'212867'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OPERATION_UNIT:ORG_CODE:PRICE_LIST:ITEM_NAME:UOM:DESCRIPTION:CURRENCY:PRICE:START_DATE_ACTIVE:END_DATE_ACTIVE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37504068701003393)
,p_button_sequence=>50
,p_button_name=>'Go'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Go'
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37504127477003394)
,p_button_sequence=>60
,p_button_name=>'Reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reset'
,p_button_redirect_url=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.:RP,304::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19056297525138417)
,p_name=>'P304_ORG_NAME'
,p_item_sequence=>30
,p_prompt=>'Org Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37503565754003388)
,p_name=>'P304_MFG_ORG_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37503816449003391)
,p_name=>'P304_PRICE_LIST'
,p_item_sequence=>40
,p_prompt=>'Price List'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct price_list, list_header_id',
'  from A2E_PRICE_LIST_LINES@APEX_TO_EBS',
'where organization_id=:P304_MFG_ORG_ID',
'ORDER BY  price_list'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--SELECT ONE--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37503683792003390)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get QP_ORG_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P304_MFG_ORG_ID := APEX2EBS_PKG.GET_PROFILE_VALUE(',
'    ''QP_ORGANIZATION_ID'',',
'    :EBS_USER_ID,',
'    :EBS_RESP_ID);',
'',
'IF :P304_MFG_ORG_ID IS NULL THEN',
':P304_MFG_ORG_ID := APEX2EBS_PKG.GET_PROFILE_VALUE(',
'    ''ORG_ID'',',
'    :EBS_USER_ID,',
'    :EBS_RESP_ID);',
'END IF;',
'',
'IF :P304_MFG_ORG_ID IS NOT NULL THEN',
'  SELECT ORGANIZATION_CODE ',
'   INTO :P304_ORG_NAME',
'   FROM A2E_ALL_ORGANIZATION_UNITS@APEX_TO_EBS',
'   WHERE ORGANIZATION_ID = :P304_MFG_ORG_ID;',
'   :P304_ORG_NAME := :P304_ORG_NAME || '' ('' || :P304_MFG_ORG_ID || '')'';',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16859214053001939
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(55084106543033704)
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
