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
,p_default_workspace_id=>4601096924053592
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'LOCALECEP_SCHEMA'
);
end;
/
 
prompt APPLICATION 107 - consulta-cep
--
-- Application Export:
--   Application:     107
--   Name:            consulta-cep
--   Date and Time:   19:35 Saturday September 20, 2025
--   Exported By:     ADMIN_CEP
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     28
--       Items:                   46
--       Validations:              2
--       Processes:               24
--       Regions:                 67
--       Buttons:                 42
--       Dynamic Actions:         19
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                  8
--         Breadcrumbs:            1
--           Entries:              3
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   8
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included (auto-install)
--   Version:         24.2.0
--   Instance ID:     1200123063133939
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'LOCALECEP_SCHEMA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'consulta-cep')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'CONSULTA-CEP')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'B343D6C43ADCEDBD0AAD2789E87F44B49E299F8F2D438F2C3546D6B4ECBBDEE6'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'pt-br'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(5809666073671575)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'consulta-cep'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(5816965960671587)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'consulta-cep'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>7785312
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(6028604578672045)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(107)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(5810403832671575)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(5811610725671578)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_107_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(6028604578672045)
,p_name=>'App 107 Push Notifications Credentials'
,p_static_id=>'App_107_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --workspace/remote_servers/brasilapi_com_br_api_cep_2
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(6032746442763128)
,p_name=>'brasilapi-com-br-api-cep (2)'
,p_static_id=>'brasilapi_com_br_api_cep_2_'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('brasilapi_com_br_api_cep_2_'),'http://brasilapi.com.br/api/cep/v2/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('brasilapi_com_br_api_cep_2_'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('brasilapi_com_br_api_cep_2_'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('brasilapi_com_br_api_cep_2_'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('brasilapi_com_br_api_cep_2_'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('brasilapi_com_br_api_cep_2_'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('brasilapi_com_br_api_cep_2_'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('brasilapi_com_br_api_cep_2_'),'')
);
end;
/
prompt --application/shared_components/data_profiles/api_brasil_ceps
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(6032910275763129)
,p_name=>'api_brasil_ceps'
,p_format=>'CSV'
,p_csv_separator=>','
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(6033187518763129)
,p_data_profile_id=>wwv_flow_imp.id(6032910275763129)
,p_name=>'REDIRECTING___'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector_type=>'NAME'
,p_selector=>'REDIRECTING___'
);
end;
/
prompt --application/shared_components/web_sources/api_brasil_ceps
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(6033485468763131)
,p_name=>'api_brasil_ceps'
,p_static_id=>'api_brasil_ceps'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(6032910275763129)
,p_remote_server_id=>wwv_flow_imp.id(6032746442763128)
,p_url_path_prefix=>'{cep}'
,p_version_scn=>7779143
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(6034003637763132)
,p_web_src_module_id=>wwv_flow_imp.id(6033485468763131)
,p_name=>'cep'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_value=>'35500026'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(6033695112763131)
,p_web_src_module_id=>wwv_flow_imp.id(6033485468763131)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5810403832671575)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>7727894
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5825543606671603)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6049852733786021)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Cadastro de CEP'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6002486023671978)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(5816861519671587)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5811610725671578)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>7718735
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5998611225671975)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5999049912671975)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(5814379554671582)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5999343671671975)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(5814891565671582)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5999881494671976)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(5999343671671975)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(5814891565671582)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6000222969671976)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(5999343671671975)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6000678408671976)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(5999343671671975)
,p_required_patch=>wwv_flow_imp.id(5814891565671582)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6000963333671976)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6028347405672043)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(6000963333671976)
,p_required_patch=>wwv_flow_imp.id(6021932092672029)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6001492077671978)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(6000963333671976)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6001810818671978)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(6000963333671976)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6003553184671982)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(5814522891671582)
,p_version_scn=>7718692
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6003952437671982)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(5814522891671582)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6004225357671984)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(5814961943671582)
,p_version_scn=>7718692
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6004677319671984)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(5814961943671582)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6004972597671984)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(5814280540671582)
,p_version_scn=>7718692
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6005337566671984)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6005716790671985)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6006155917671985)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6006558299671985)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6006984069671985)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6007303633671987)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6007699141671987)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(5814189704671582)
,p_version_scn=>7718692
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6008058881671987)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6008430068671989)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6008726010671989)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(5814379554671582)
,p_version_scn=>7718692
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6009199139671989)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6025555064672037)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(6021932092672029)
,p_version_scn=>7718730
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6025916319672039)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(6021664337672029)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000236494441547801EC933F6813511CC7BFF7EECE6B6A91480DA45A445B24745274532A38B82B0E191D1CDC5C443AD7A59BB8383B09169CD5A58B99B43A34436945';
wwv_flow_imp.g_varchar2_table(2) := '5BB025C63407677AC935C991F87E4F72F4C2A5EFF51A28943BF8DEEFCFBDF7BB0FDF7BC7ECF9DBDDE314C3315F0940E240E28092039D2E50AA77615B5911A91ED6DFAB04506BFA98B83A8B89991B22EEF2DAF17CD8A9F342CE9E1F9B470980A6335DA700';
wwv_flow_imp.g_varchar2_table(3) := 'A6FF8F9DCC1426EFE485BA9969902B653F052F771714A9161B24372580339681EADA32767E1461AF2F836ADD3083D14C37402E4D3F7E89EC833950A43A587040A204506FF968BB0EBCDF3FD1DA754096B3EA062A5F3E727D80CE73F073A219967815454D';
wwv_flow_imp.g_varchar2_table(4) := '64F29B14E02FFFBEA3B99BB8387B3F907161068EEBA1BEB9C2554463AF891193A1F4F639AAEF5FA1B4382F5C92BF1E900278ED0E52E94C6856B3D5C695FC335CCECF094DDE7B823F6D0B8DED35D8854534B6D6E172D7429B06145280A87D23E973D0F877';
wwv_flow_imp.g_varchar2_table(5) := 'EF3D73B7BE23F76801B9854F81320F5FA0C6DDEBAD1914D9A00787E9B7EA355897AE85B65853D7D1E0EE859A118514E06CCAC0EAD2BB88ADC36949012C8361EC941E7A5B79A5809D6221D48B5B4801A206F703D19A6F4F6F51084435B917340624B100A2';
wwv_flow_imp.g_varchar2_table(6) := '66F543514DEE45ADDDDF5302309986CAC66A2053D7F6CF3852AE04307EDA44BAB619687CD4845BFE25CE019D05CAE3522801440DCFFA158C6D7F15A29C5CB2975EA32755976203F443914BC6E737E8895CEA5F13550F0D206AB84A2F01481C38F90EC8FE';
wwv_flow_imp.g_varchar2_table(7) := '847F000000FFFF50B46626000000064944415403005F391BB06CE1D2930000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5812783840671579)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D7B741CD579FFDDD987B40F59D2EA6959C636B2F1437EB57600DB48F681181C2024E4501A0E019CA69403A53DB4A7401A822519929CF414';
wwv_flow_imp.g_varchar2_table(2) := '1AFE2885B4A7A7E9494B29296D42204D1338B28CEDB8408C5162CBD8D8C696255BD2EAB99256D2EE4EBE6FBC6BCBF6CA1ECDCC6A7776EF9CF9E671E77EF77EF7F7FD7C1FDF8CD60AE42611308180249009F0A42A20092459600A01492053F049654920C9';
wwv_flow_imp.g_varchar2_table(3) := '015308480299824F2A4B02490E9842C030814CD52A95B3060149A0AC71657A1A2209941EDCB3A65649A0AC71657A1A2209941EDCB3A65649A0AC71657A1A2209941EDCB3A6D69927900EE8BA9FD850D0D5B8A9B2FF991B6BFAB6DFB02AF86CFDFA60D3C6';
wwv_flow_imp.g_varchar2_table(4) := 'CDBD4D1B3F9F0BC26DE53673DB1903C68231D101DD8C67492B815415A2A771D3929EA6FA077A9AEA5E0C366D7C3FD8543FAEF81C830E11EB8CC6224762AAF221A2D805A8FFA742FD492E08B795DBCC6D670C180BC684B10912463D8DF57FAF6146D8A984';
wwv_flow_imp.g_varchar2_table(5) := 'E18CB3665285CAA4EB945F0E7DBBAEACBBB1FE8EDEC6BA6F05B7D7FDA2777B7D9F10B18302F81701F13001B706808B44EEC911206CD43542E011C19811768CA1866553FDB3DC3B0F34AE0B24574D4DAA929A622F2D95FFA58C4D60BD22F0A42AC437A08A';
wwv_flow_imp.g_varchar2_table(6) := 'CF52AE4212B99B43A090B15481A7A8777E320AC77AC6DA5C91FAB5534E20F5E5352EEA761FA47F296D02E27FC8B4F524724F0D021B54A1BCD1BB7DE3C16053FDD718FBD45473BED49412A8E7D91BE7F49EF6EFA1A1E9FB54E53524729F1104D4C554CD3F';
wwv_flow_imp.g_varchar2_table(7) := 'F59EF6EDE669035DA76C4F1981828D75CB4434B297C8C3F39A943540167C5904D6D2B4614F70FB86DACBE632F1302504EA6DD8740384D84D76CD21B16897C518414040D44075ECEADB5EB7D188FE95742C2710F73CAA12FB39552C27C8044286EC853155';
wwv_flow_imp.g_varchar2_table(8) := 'BC958A9EC852027534AEF152CFF31A81E625917B6621E085EA7C55F3918576594AA03CE17B916C5B4622F78C4440AD8DFBC832EB2C2350CFF6BAAD64D5032472CF6C041E88FBCA122B2D21D0C9E7D779842A9EB7C4225948CA11205F3D67D5506609817C';
wwv_flow_imp.g_varchar2_table(9) := '2127F73CC5296FB9ACC02A0402F98AF77E2B0A334D200E9BABAAF29815C6A4A80C596C12045455FCB9AA42247934AD24655AB99364EE6DDA740B050B39F299E4A94CCA6004969EF59D390B4D130822267B1F733E489FB605BE3345A0638D9BF2A9F59B49';
wwv_flow_imp.g_varchar2_table(10) := 'E46E4F0436F302C88CE9A608E407AEA7CA4D9541FA724F1F024AFE60DE7566AA37E57C8712630299A95FEAA61901B33E344520A85A0F94660864F5A61030E943C304E225A00ADC60CAF80C57CE05F3C887A64611C304EA6EDA5441009790C8DDDE08540C';
wwv_flow_imp.g_varchar2_table(11) := '7EFB26C37E344C2087220C576A6FBCB3CFFA8948ACD268AB0C1348454C7EB26114F50CD333E34B49A00C73663ACC490B8114E1F0A4A3B1B24EEB1170A9701A2DD5780F1495439851D0334D2FAA385C466D324C204540F64053A16EB374D5446760984031';
wwv_flow_imp.g_varchar2_table(12) := 'A1BA3211A718053606C211740E8DE358EF284EF487D11D1AC7C8443413CDCD089BCC74068609448A918C68FD2423426351B4750DE3786F185D44A0C170147D2311740C8EE370F7283EED0B23C20C9BA4232FCD21403C305740A668770F4FE093E02826A2';
wwv_flow_imp.g_varchar2_table(13) := '2A2AAF5A80A5D7D661CDCD7762E5C6CFA166C51A78FC05E81F8D10C146B43C9962B7DDEDC80A02852331740C8CC19D9F8F95F5B760EEF26BE12FAD82E27423CF370B81B90BB1BCFE7398B77839A2D403F1B0A6C7715C2E8B9EBCB99A272B08C443133B70';
wwv_flow_imp.g_varchar2_table(14) := 'E1EAEB90E72FE2CB2422505E538B40792578A8EBA11E2B49268C8C4771B86704FB3B4238D435A2095F739A9C475D8A98ED09344C0E0F4FC4505452065FE0CA11F9B94B566B28F48E4C68E7C9079E6C1FEE192512C5E02B0AA07AD9EF69E22B2AD6D2781E';
wwv_flow_imp.g_varchar2_table(15) := 'D53D3C3E5925E7AF15BB23909814FBC8E17ADAE2F6174208E592C97437F5483CD9767B3C5871EBBD5871D79FA27AFDED9AACB8EB51ACD8F28770D110D931308EA97A2F3DF55F3E8FFD9E2AF633F9428B632AADDB2929CFE3A3A3BEDDE3F76B73A144EE31';
wwv_flow_imp.g_varchar2_table(16) := '9A43750E8E11413C5879E79FC0577575E2D1B9B3AFFA1AACFAD24394279F567563609D730F935C8C52AFC8BD5C17851078C8E4B957926CB64FB23D81F21C679B101E1ED2E50C9508373A1C429EF3AC1E2B71EF43C958BCE90B707A6761AA8D9F5D53771B';
wwv_flow_imp.g_varchar2_table(17) := '38EF54BD509086C6D6D3217CDC3D8293FD63E8A41002AF0E7F737A1827B2308C701EC5A950CBF0F47C9743B37078B04F3B5FE9303E3C0035168327AEC7F9791EE52998057FF522BEBDAC14CC5B462B3B1F4234F79A9C9116775A18A19D4803C58579D76D';
wwv_flow_imp.g_varchar2_table(18) := 'C6AAFBBE8EB58F7C178BB7DC0B7FD96CF4C5C30817EB4E2EC76ED7B62710455111F0BA30100C22D4D37905FC55B41FDAAFE529F5B9B433CFA178125E583647BBD773282CAB02EB4C1E967808E4A16ACEAA0D58D7F81AE6DDF70C0AAFFB22BCCB36A2E2F6';
wwv_flow_imp.g_varchar2_table(19) := '3FC3EF3FFD23ACBCE72F11134E2DA03959574F9D999AC7F6046260E714BAC11DCAA10F76A1BFF338275D22B16804C7F6ED42EF99D328F7BBA8073ADB741E8E38B38A189F74891042CBC7BD0E5F0C51049C87B4C2CA6AD4FCD177E1284AB21A541C28DA70';
wwv_flow_imp.g_varchar2_table(20) := '376ABFF8202214EC6CA7B815EBDA5DCEA268F35628E4D0AB8AF321548AE1ECDB8BE3FB76A3EFD4510CF79EC160573B7A8EB7A1B5E52DF4749E823FCF81D9B3F2CEB5D8E510E069D450F769E8DD06BA3B49471069CF12A927BEB45F72EF5380C379D96202';
wwv_flow_imp.g_varchar2_table(21) := '9BEE43414535382A9E0DBD505610883DE6773BB0A4DC87228F13DD9D277164FF7B38F0AB661C7A7F178E1DD88FC8D828AA8BF25053E2E1EC1708CF87468606106AFFF882F46437A1F6C3088786E0759D872E4CAB38C5E944DEFCB331A6647AE7D288ECE5';
wwv_flow_imp.g_varchar2_table(22) := '4BD76AB7ACA75D983FA4AD84F328A4CD04EB2A762A02F3A8275A5EE9C3D544942A1ADAE616E5E19A322F5654FA514273A564B555F8DD5AF2C73B7E82E86848BB4E76888E0CE15033FF5231505E705687F3F1FBB782F26A80C8011D9BAF62BE968BF5B40B';
wwv_flow_imp.g_varchar2_table(23) := '1B1FB28A40093F38884805345495F9DCE009B6C775F966F2B05639CB8DF1D151EC7FFD650C9F3A9228EADC79A4F3283E7CFD254C84C33404BAE1A71E0FF18D43024334542231A18AA74F751AE93EA93D723B8576B6F3E1F2C8DAA0651C48E449EC99A171';
wwv_flow_imp.g_varchar2_table(24) := '9CD6291CDC1B0C479098047333B917AAA6DE2A323682D69FBD82D6D7FF01ED7B7E8693BB7F8AD6FF7A111FBDF96F888E87B561B03CDE63B11E0B1334168920D29D7C02CF79264BFFF183DAADD7E5D0CE763ED896404C1C5E3AB7760EE3687054230F9348';
wwv_flow_imp.g_varchar2_table(25) := '8F7070EF586F1807CE0C6BB199840379885B5AEE4329ADD2228341B4FFF67D9C3AB00F91A15E2D8D9F719E44FEC43991D6F9CE0F1349539EC74FB4A2E7D84104BCCE29F3D8E9816D09749408D0159AA0B7EBB3B170F5B5A85D77236AD7DFA44B967CA60E';
wwv_flow_imp.g_varchar2_table(26) := '736A164371BAB5E830478F134EE379D41C5AA5F1847C698517CB2A7CDAE49CD3F85922DFE4B38F86B36222C4B177DF44DFBBAF4E7E74C175B4F714F6FFE35F43814AC360DE05CFEC7A634B02F5D08BCF618ABD542F5C8C9AB5F528AE5A006F7119BC45A5';
wwv_flow_imp.g_varchar2_table(27) := 'BAA4A0AC0A558B5763F1676E0020B4775BC996D46E87726EA98E2B6C55443A07CDBD5AFFE3EF70EC9F9FC0C4A936A8230350236388044FA27FD77F62CF33F760B4AF07558579988A8C57A826E31EDB9240FD347F118A82D98B569A02D4332B80A2B232D0';
wwv_flow_imp.g_varchar2_table(28) := '9B0DFC86DE55F1773F7AA5AD6B18A7E8052C47B2D90826C492722F8A288C70F2D72DD8F39DADD8F9C42DD8F9D846EC6EF8037CF4CAF370C426B0B0D483C490870CD8CC9AA0982D201DFAFCD197D7570008E3E64FD0727D7FF34FD1DFDDA5BD612F9E3D17';
wwv_flow_imp.g_varchar2_table(29) := '25D50B7449716535C6A3023D3484B6758D80DFBC833626118711161149AA685557EC756256BE435BF2CF0FE46B43210F7794356B76E31E482304BC5A569C0EC316F0CBD443EFED402C1245EDE6BBB0E62B8F63F16D5BB168CB5774C9E2DBBF8A6BB73E89';
wwv_flow_imp.g_varchar2_table(30) := '45EB3EAB7D16C27FFD31D9182FCD89CA68A57655513E16043C985DE04661BE1334C24DCE9615D7B6249059E47BDB8F603414C2C2F59B51306FA9A1E284C38992DA75A85C54AB7DA4CFEFB6F4861178A5C8A18718FF4B30547BE628E52481866822CB2EF0';
wwv_flow_imp.g_varchar2_table(31) := '57D5F0C9B00C777C82E1BE6E4D3F48137B26861E61A271E88143109357805A41363BE42481C64687353739BD05DAD9C82174F263B4BEF5EF180AF6803FE15872EBFDA8BDF3215DB2EC0B0F62C186DBE0290C80BF1FEAA0C9B8111B3241272709A426BEDC';
wwv_flow_imp.g_varchar2_table(32) := '3038098F8D8FA18DDE89292E37AE7FFC65D43CF81CCA6F7D0425377D5597946EFE1AE6DEF334D66E7B0D95CBD6A29B26E3FC2D51261062BA36E42481A60BD2C5F9073F3D406FF7C7B0ECF37F0CF7552B2E7EACFB5EE4F9B0F0FE262D7F77FC9310EDC60E';
wwv_flow_imp.g_varchar2_table(33) := '87B88D92407120A6730A0F9DFD7CD6377FF974D492E655FC25F097569E0B0524CD94C1899240069C13191BD3B4148FF139945640FC904F014DBB7EDA21091477A23C19434012C8186E522B8E802D09240430161E45D7D103E7642CD41F6F923CCD2402B6';
wwv_flow_imp.g_varchar2_table(34) := '2450B1C7A57D3DF8695B2B1232A2F3EFC2AC0097096C4539D950862D09C4DF39F34BCB0A7AC7C42F2B67DA1159F006C232C8A64F20CBAA36575091C7894A8D404E7305496D5308D89640A65A1D573EFCBF3F44427A0FEC8DA75EF924847AE54C399223A7';
wwv_flow_imp.g_varchar2_table(35) := '09146C3F86848C0EF6EA76B9AAD22C5E77EEECCE98D3045A55E5C7A2B24BFFD030BB5D6E6DEB729A4046A14CACC246DBDB30767CBF26139D877517170B05359DB184EE6848B76EA665940432E011353E05FAF007DFC2DEBF7D4893C3AF7C477749A183BB';
wwv_flow_imp.g_varchar2_table(36) := '359D84EE40E709F01F37EA2E2083324A02197046A2072AF1B9C0A1040345682A1C8260FDB945795810C8D7D2EC76984102D90D9AA9ED4DF440FCD7151C4A983AE7E59FCCCA776AA18880D70525C1CACBAB64DC5349A08C7389BD0C9204B297BF32CE5A49';
wwv_flow_imp.g_varchar2_table(37) := 'A08C7389BD0C9204B297BF32CE5A49A08C7389BD0CB23D81122F15C2A1418CF4F7E8926864C294976CBA6032D5E6A994ED40A0A96CD7D2137F6BDE7EA40DBFDDFDB62E19090D817FC14C2BC0C021B18C37A09A752AB627509E5301FF2A06FF441D07E5F4';
wwv_flow_imp.g_varchar2_table(38) := '483505EEF8C70EB2CE9B696890ED09C4983189F827EA38A8A747380068D7C01DB73793242B08640650477C4233D8D581EE8F76EA92A1EE0EAD4A253101D3EE72F390F304E2DECBEB56304004FAE4FF9BA147382FCFBD5837376973BED5394F20866251A9';
wwv_flow_imp.g_varchar2_table(39) := '17FC5BD235A51EE811CEBB90F2B26EAE8B24509C01FC53BD7EB7037A84F3C6D572FE94D5049A29EFE6BB14F41C3D809647AFD725FC1D11DBE6A115249FED2C92401678EFAAA27CF05F89F8F21CD0231C83E25082977A3CD87C334CA0584C8CD8BCED9699';
wwv_flow_imp.g_varchar2_table(40) := 'CF431AFF9DDAC2120FF408FF3F1E1C4AB0CC009305C5548C1A2DC2308184439104328A7A86E999F1A56102C5D4A861D666187E396F8E195F1A269080EC8190259B30E14B4920C84DA4834091D844F60E61C8ADCD8C2F4DF4404E3989CE129E0918F7A561';
wwv_flow_imp.g_varchar2_table(41) := '029DE8180A127E6112B9DB1B8170DC97865A6198406BBFFFC1840AE8FF490B43E649A55423C03E645F1AADC73081B8420134436EB646C0AC0F4D1128A62A9240B6A60F60D6878A99F687805F91BE9C07110836DDC3711F1A36DF148116343633797E6CB8';
wwv_flow_imp.g_varchar2_table(42) := 'F6AC53B45D837E1CF7A161C34D1148AB5555BEA79DE5C17E0858E03BC56CAB4B1A9B7918930A9AC863000002B449444154AB31B340CEBCFEDEB8EF4CD56C9A405CBB10AAEC8518081B89553EB38440C531C78F08BB7612B9DB038153719F99B6D6120289';
wwv_flow_imp.g_varchar2_table(43) := 'C6E6880AF551D3D6C80266040101F130FBCC8ACA2C21101B52DAB09357632FF0B5948C46E08540C38E37ACB2D03202B14181CAE1C7E9FC1E89DCA787C08CE4A6794F73DC4796D5672981C4431F4C28AA72375927FFEB1C0221C3F633130EF797D94756DA';
wwv_flow_imp.g_varchar2_table(44) := '652981D8B0E2C6E6E38AC08D747D9C44EE198180FAA92262B7543CF5F619ABCDB19C406C60F1B6967D2E976B2D84FA4BBE9792460404DE71B9DC6B8AB7BDBB3F1556A484406CE8AC6FBC1D0C2CA9DCA2AA7889EFA5A40581E7024B2A6E665FA4AAF69411';
wwv_flow_imp.g_varchar2_table(45) := '880D1677BF162D6D6C7998266F0FD3FD3889DC670601FEDCF8CB250D2D7FC53E486595292550C2F0C0B69D2FA90EE7D510A281D24E92C83D35087030B791B05E44E4793535555C58EA8C1088AB2CFDE63BA74AB6EDD81E585AB14085F812A5FD9C442591';
wwv_flow_imp.g_varchar2_table(46) := 'BB090448354A20BE21A0DE4ED8CE27E23431D6943E23FB8C1128D11AEE524B1B76FC3735748BC873172B2A36D2B3C7487E40D24A1221917B7204189B56A1E25F6981F2178A5037C5F2A3C5A50D2D77041A76BEC9D826574B5DEA8C13687253025FFFE540';
wwv_flow_imp.g_varchar2_table(47) := '71634B0B91E90592AD242B495CB1E1E8ACA8AACC7628CE858A88AD86031B00713385E0EFC805E1B6729BB9ED8C0163C1983036242B038D2D0F946CDBF9BDE26D3B77943DB96B0869DCD24AA0A9DA5DF637BB86CA1B9B4F173DFDCE27C5B4FC2CF966CBEE';
wwv_flow_imp.g_varchar2_table(48) := '92861DBF0850083E1784DBCA6DE6B633068C056332155EE94CCF4802A5131059F7F41090049A1E5E32F7450848025D0488BC9D1E029240D3C32B7B725BD41249208B80CCD562248172D5F316B55B12C8222073B51849A05CF5BC45ED9604B208C85C2D46';
wwv_flow_imp.g_varchar2_table(49) := '1228573D6F51BB25812C0232778AB9B0A5924017E221EFA6898024D0340193D92F44E077000000FFFF71718D4100000006494441540300E6547B996BDB783B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5813034830671579)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D796C1C5719FFBC5EEFFA5A9F710E3B4EEA86C4499C34699B8494262D945E94BB525310102444111410E29440E20F84042A0881441147F9';
wwv_flow_imp.g_varchar2_table(2) := '03A8405445B44594F404B5490F35EA19E7689236690EC7577CACD75EEF7AEDE57DDBCC9B97CDAEBDC7CCEEBC999FB52FEF9B777CEF7BBFEFFD7666BE793BF19DFFD175492460E0D535E023FC01010F23000278D8F9983A11088055E0690440004FBB1F93';
wwv_flow_imp.g_varchar2_table(3) := 'F73001E07C20804B20AC018F23803380C71780D7A70F02787D05787CFE2080C71780D7A70F0278710560CE120110404201C18B0880005EF43AE62C110001241410BC880008E045AF63CE120110404201C10B08A4CF1104484704C79E420004F094BB31D9';
wwv_flow_imp.g_varchar2_table(4) := '74044080744470EC290440004FB91B934D470004484704C79E42C04304F0945F31D91C11000172040ACDDC890008E04EBF625639220002E408149AB9130110C09D7EC5AC72440004C81128AD9BC1F8AC08800059A1418517100001BCE065CC312B022040';
wwv_flow_imp.g_varchar2_table(5) := '566850E1050440002F781973CC8A000890151A54B8018185E600022C8410EA5D8D0008E06AF762720B2100022C8410EA5D8D0008E06AF762720B2100022C8410EA5D8D808B09E06ABF617216210002580424D4E8890008A0A7DF60B54508800016010935';
wwv_flow_imp.g_varchar2_table(6) := '7A220002E8E937586D1102208045403A4A0D8CC91901102067A8D0D08D0880006EF42AE69433022040CE50A1A11B110001DCE855CC29670440809CA142431D10C8D746CF13603699A4F353337462244A470627E9C0B9482AB1CC6523A26E4EB4C91758B4';
wwv_flow_imp.g_varchar2_table(7) := 'D70301CF12203197A4B3E1181DEC9FA43363310A4FCF522C9124519C4A2C73D96951D72BDAF489B6DC470FB7C2CA5C11F02401C2D3093A3C3049C39119CAE5CB9DDB0C89B687C5196222369B2BB668A701029E23C050242E2E77A653DFF2867FEA1B9BA8';
wwv_flow_imp.g_varchar2_table(8) := '73F53A5ABB75075D75D3275289652EE33AA3DDDC1CD1DBE7A3343C39631421D71C014F1160349AA0BE705CBACCE7F35157CF665A77ED2DB474F515146AEBA0CAAA602A8584CC655CD7B57E135588B646C7B3E331625DC631727D11701101E677C274628E';
wwv_flow_imp.g_varchar2_table(9) := '4E8D4ECB46B5A106DAB8F3165AB4B25B966513165DB696AE106D6B432132FE58574CE8348E91EB89806708D03F617EF35754F868CD96EB2850D790B3D7B8ED9A2DD75385E86B7452751A65F3E58838CD874E79EA3C41008EDE8C8BCB1F03E2AE9E4D5455';
wwv_flow_imp.g_varchar2_table(10) := '53671CE69C731FBE1C323A8C099DB31C36320AB2E43C3E224E59C02973B12708A05EAF37B62EA2D6156B0A86BD75E51A6A123A0C05AA6EA34CCD117152D1709EEC0902A8DFFE4B2F2B7CF11BEE5BBC72B521D2B808A9CA83342153C4A9A16D09755D752D';
wwv_flow_imp.g_varchar2_table(11) := 'F5DCB28BB67EF65BA9C43297352C5A223520E224A1B055F00401A23366EC3E505B5F34A001E5F249D5AD2AE633C34511A7CA4A5AFDBE9B68FDC7EEA22557DD40A1CE6EAAACAE4B2596B96CFDC7EFA2D5D7DC48BE4AD32D39459CD48121E7858089745EDD';
wwv_flow_imp.g_varchar2_table(12) := 'F46AAC5EA6076A2C208042A259F16C201D8DF488537D4B1B6DBEFD2E6A5DBF9DA8A282B2FE89BAD69E6B68F327BF44F5CDADB219224E120ACB054F10C0A7ACB964D23C1B148E665276F56540508D0E55F82AA9FBE63B29D0D826FB2C24049ADAA8FB964F';
wwv_flow_imp.g_varchar2_table(13) := '13F735DAAA3A8DB2F972449CE643C7ACCBE03EB3D22D92BFD264C0F4C458D1D38A864D1D7E955D4233477CD47B8ED5EFBB91AAEA9B454D7E1FEEB37AFB076527449C2414960A9E2040B5DF9CA6BA780B45321A1E955D6BAA2AA5CC025FFB73CEA9795927';
wwv_flow_imp.g_varchar2_table(14) := 'B5746F65B1A0D4B26E1BB5B477CABEAA6E59A80888382960E4289A2B23C70E3A360B05FDD2ECFE778E5392432CB2243F21999CA381536FC94EA1E0C50450BFFDDB376CA379AFF96981BF8A0A5ABA6E8B6C946FC4A945846CD77DF8F3B4E5EE9FD18E7BF6';
wwv_flow_imp.g_varchar2_table(15) := 'A4D296BBEFA1B5B7EDA6E615EF917A190E5DF738C9491428788400E6228D4E4ED2E0894305C2453470BC975887A1A03E60EAE632352A1408E57FE9C33AD4A4EA5075AB6DF8CC7051C4C95F451BEFFC066DF8CE9FA9ED435FA1DAF5D791AFAE39956AD75F';
wwv_flow_imp.g_varchar2_table(16) := '4F8B6FBB9B367EF77EDA78C7D7C9E737BF1CBC1871F2040182E21228546D2ED453470F517C32ACAEA19CE498E873FAF811D9B641E864DDB240086AC4A92AD4224A8AFB542924CA25E2D4D4D145DB7FF0176ADEF9699AF7EC23CE2ECDD77F26D5B671D94A';
wwv_flow_imp.g_varchar2_table(17) := '32FEBC1671F20401D8B9CB1B839CBD9B92493AF6CA737991201619A7632FEF25127D5989583FD4D158CDE24549BD274ECE262EAA2BE8E0C278DCD797C15B6A74A8A2B28A7ABEFC0BF22FEEE2E63925FFE2CB69C3DDBF24EE6B7450751A656ECD3340EACE';
wwv_flow_imp.g_varchar2_table(18) := 'A906C4C3A515CDE6829D9A08D31B7B1FA7E193E6377AE699276948B439B0EF098A4622B2C94AA12BA044978C0A35E2141B1D308A0BCEA747FA655FBFCA2E519A1E71DAB8EBEB54D9DC2E6AF2FB709F8D777C4D76CA35E2243B682C788600ECA3E61A3FB5';
wwv_flow_imp.g_varchar2_table(19) := '3706584C25BE193E71E8753AFCDCE3D47FEC0D9A18EEA3D999182562D33431D4972AE3BA93A20DB74D7512FFB48BB34963B579ED2C8AE4478D0A45CF9B8B5736C853882A045075B31A5EA89C735AB26633355D7B078B05A5A61DBB6849F795B2AFAA5B16';
wwv_flow_imp.g_varchar2_table(20) := 'BA50D098008579A3AD2E405DADD5A47E9946C6C7E8F4B1C374E4A5BDF4CA930FD3AB4F3F4247F6EF4D9545C6C7E5407C0972796B0DB5D555C9B27441BD293E7BF8654ACE16FEE08DFBF61D7A450E110A544A9985B1A8F9CBB4E51FD8258ACCE71DE220CF';
wwv_flow_imp.g_varchar2_table(21) := '4F0575ECFCA4EC333ACF1E27D9C80582E708C03E6B1061D1B58BEB2814BC7841715DB6D4505D496BDB16EEA3EA9C1A1FA3C103FBB2A95CB07CF0F567682A6C3E74AB4FB3373A63EEC308B4762CA86FA106AA8E6965FFD442FD74AEF72401D86155E2FA9D';
wwv_flow_imp.g_varchar2_table(22) := 'BFCD572DAAA125A1408A0C417F45EACCC0670796793173DD7B449BAE961AE23EB4C01F4785D488D3C997F7517C7C68815E9756C7C787E9C4ABCFCB0A2620EB96054250234EFED64E5152DCC7AF902853C4A938EDCEECED73A659A5B3AA5E5C562C0D0588';
wwv_flow_imp.g_varchar2_table(23) := 'C9C067858DCBEA8913CB5CC67575A24D3E162D6F34234EFCE0ECE853FFA0F858EE24888F0DD29B4F3E905FC469C6FCB9673EB65ED4969F885D28E0CBBD0BA2AB33CF13C00EEF06D2224E91D1617AEDA13FD0F9832FC8459D715CF1947958B479EDA1FB68';
wwv_flow_imp.g_varchar2_table(24) := '726C4436C925E214EF3F2EDB172AC4CF1D955DD3234EB2C26502086093439BD3224E73E29AE2D80B4FD1A147EEA3FE57FE4B9133C768363645B35313423E9A2A3B28EA8E8B36DCD6302B63C4E942A51A159A3A632EDE0BD57967AA0E5577DE8A34EAE07A';
wwv_flow_imp.g_varchar2_table(25) := '02F08DE260244E2747A7E9E0C024BDDE17B124F11BE5DE3A1F25DE3E10C9F2B2ACB60C11A7F0F0009D140FE17A1FFB3BEDBFFF17B4FF6FBFA2DEC71E48954D0C0FCAA5C397207C09966BC4E99DBD0F9188E1CAFE790BE2A1DD3BCF3E2CBBA5479C6485CB';
wwv_flow_imp.g_varchar2_table(26) := '045713E05C38464787A6E85C384EBC492D316BEEE32FD68F097107CA0B9F5F92C544E07789667A6B5C43D04F7C3F110ADA1B719A18384B434FFFA9E0690D3D715FEAD987A1203DE26494BB2D7725016289397A532CFCC1881927B7DB71B14492F865BA91';
wwv_flow_imp.g_varchar2_table(27) := 'F8A5717F8E1EF1B7B9DD11A723FFFE1325064FE43DD5C4D0493AB2E77ED92F53C44956BA4C70250178214E2B31F2A52BBA68EDD69DA9571E6EBDED4EB2225D7DF3EDB471E7CDD4B1CA7CB1166FDBE1B163828099D649BD8826715489C9C067058E367162';
wwv_flow_imp.g_varchar2_table(28) := '99CBB8AEA888D3DC2C1DFCE3F7F3224162E06DEAFDFD77C978D25D219EA575349A5B4632CDC34D65AE23409FB8EC89896F637652A0BA9A7AAEB9813A376CA3505B3B555605B9D892E4F3575175A899DABB37D3E6F7DF4635F5F529BD1C492CE566B2405A';
wwv_flow_imp.g_varchar2_table(29) := 'C469BCEF24BDF893CFD1E8337F5D30E23422DABCF8D3DD14EE3F9DB29DFFC91671E23A2724AB6D70150126C5E5C79072D9B3E6EA1D54DBDC66356697E8ABAA0D51F7B6F753EA299AA8E57D347CF32DC4927C2E8938251274E0C15F53EFCF77D3E09EDF52';
wwv_flow_imp.g_varchar2_table(30) := 'F4C873343735467313C3143DBC2F5576E0679FA35ED1664EB4358C9C2FE264B4715BEE2A02F00DA9E1A0652B57514D63AB71687B5E555D474B975F26C7E19BEF72479C464E1DA3238FFE99F6DFFB6DDAF7BD5B69DFF73F42FB7FF39D54D9E8E9B7A4ADB9';
wwv_flow_imp.g_varchar2_table(31) := '449C64639709AE22404CB9F66E5EB6BC64AE9A8946E874EF4BD47FEAA42D633A21E264CBC41CA0D45D04100F9B0C4C6B1A4AF3ED1F1D1FA6379ED923163F475FAC0BB31AF3C894C7C43D0EDF6CF3255F7ABD5D11A7F471DC72EC2A02F00DA8E118BE4935';
wwv_flow_imp.g_varchar2_table(32) := '64BB72FE59E5E1979EA13965E08EB59B68C3AD22D2F4D96FD1F62FFED092B46DF7F7E8CADBBF482B376D9753E188D3DB23518A29673D5929043B224E42ADEB3E1A11C079D8BFFDDAF3E2E1EBBB3F7B0CD6D5D3A68FEEA6CE1D1FA3FAE56BA852DC135865';
wwv_flow_imp.g_varchar2_table(33) := 'B12F10A460CB325AB6F526BA7AD757A9AEE9DDDF1A33EF4A1971B26A3E4ED2E37392313AD93239324013CA8F65D6DD7807D52C317F5C6ED75CAA1A5A68DDAD9F295BC4C9AE79954B2F085020F263036764CFE5EBAFA4EAB6D2DD74FBEB9BA8A3FB0A39BE';
wwv_flow_imp.g_varchar2_table(34) := 'A511A781C9D4BEA9C1489CF81DA77210970A2040818E9D0A8765CF96AEF552B65B484C8CD0E9E7FE4567DF7CC396A178BF14EF9B3A178EA7B6939C9B8813DF6FD8329803948200053A21123E2F7B56B77648D94E617AE80CBDFCE0EFE8ECE1D789E64A10';
wwv_flow_imp.g_varchar2_table(35) := '7112430C0A021C1D9ECA7AB36DE77C4BA11B042810E584F29B59BE492D504D6EDD442BFE5965EF9EBF5272CEDC6CD7B5E3C3EFBEF6F0A78FD275F7BE6849DA2174F1AB1459B71836F5E17D5527462CF8C5594A9BB3FE01019CE58FACD61CFFDF3F29118F';
wwv_flow_imp.g_varchar2_table(36) := 'A7EA6B9A5AE9BDDFFE2D757EEA8754CBAF3D0C59F7CCC32774B14ED6BDED9BF7128F45E28FC3AD7DE19890DCF5010134F0E7D4B91314567E2CB3E94BF750B0CB7C878F5D53A85EB585AEF8C28FA57ADE6735A59CF96485C60208A081F346DF31DF5EB7EA';
wwv_flow_imp.g_varchar2_table(37) := 'FA8F5360C58692591DBCFC2ABA7CE747E478EA7E2B59A8B1000268E0BCC991216965EB95E67F9A210B6D165A37DF2047E04B2179E0020104D0C089E1A13E6965B0B347CAA51282ED6BE450B184080DC923FB05BB470001EC46D802FD8919F3A79D15C13A';
wwv_flow_imp.g_varchar2_table(38) := '0B34E6A7C2175A243BCC9622FC2A47B35F0001ECC7182338180110C0C1CE8169F6230002D88F31467030022080839D03D3EC47C0C104B07FF2180108B88A0095FC5EF30B3EDDFF9F072853BA508D0C08A41070150142C1DC5F3F989A3DFEF13C02AE2240';
wwv_flow_imp.g_varchar2_table(39) := '4763909A6AFCE495577B7B7EF55A0080AB08C00B9FDF6CD6B3B48E36B5D7CB64014E50E152045C4500D7F808132919022040C9A0C6404E440004B0C02B2FFEF1C7942959A01A2A6C460004B01960A87736022080B3FD03EB6C460004B00060449C2C00F1';
wwv_flow_imp.g_varchar2_table(40) := '828A52672040A911C7788E42000470943B604CA91100014A8D7891E33DFBB5ED942915A95676CFA49BCB8C06EA7E2BA34CE71C04D0D97B65B0BDA1DA5DFBAD4080322C221D87F457565073AD9FDA1B823A9A9FD566071120AB8DA850102865C4491DAB67';
wwv_flow_imp.g_varchar2_table(41) := '491DAD68AA76DD46431040595C10BD870008E03D9F63C60A022080020644EF21000278CFE798B1820008A08051361103970D0110A06CD063602720000238C10BB0A16C08800065831E033B010110C0095E800D65430004281BF418981128770201CAED01';
wwv_flow_imp.g_varchar2_table(42) := '8C5F56043C4100750B6FA6D725165266784DD56D9421D707014F10C0CE5726BA6D7BB03E4BE6446DD50000026849444154D71A4B3D41003B5E99E8D6EDC1D62C2B7DB4788200D95E99A86EF7CD5776EBF6607D96AE3596969100D64C005A804031088000';
wwv_flow_imp.g_varchar2_table(43) := 'C5A087BEDA23000258EC42352A94E9758985941926AABA8D32E4C52100021487DF25BD1171BA04124717800016BB0711278B01B5591D086031C039459C94FFBC2397E813224E163B49510702286040F41E022080F77C8E192B0880000A18BA896A54885F';
wwv_flow_imp.g_varchar2_table(44) := '5F6845323050751B656ECC41008DBD8A8853F1CE03018AC7B06C1A748C38950DAC2C0383005980D1A11811A7E2BD0402148F2134688C0008A0B1F3607AF1088000C563080D1A23000268EC3C985E3C02252440F1C6420310B01A0110C06A44A14F2B0440';
wwv_flow_imp.g_varchar2_table(45) := '00ADDC0563AD460004B01A51E8D30A0110402B77C158AB110001AC4634933E9439160110C0B1AE8161A54000042805CA18C3B10880008E750D0C2B050220402950C6188E45000470AC6BDC6198D367010238DD43B0CF560440005BE18572A723000238DD';
wwv_flow_imp.g_varchar2_table(46) := '43B0CF560440005BE18572A723000238DD43B0CF56046C2480AD76433910B0040110C01218A144570440005D3D07BB2D410004B0044628D11501104057CFC16E4B1000012C81314D090EB5410004D0C65530D40E0440003B50854E6D100001B471150CB5';
wwv_flow_imp.g_varchar2_table(47) := '030110C00E54A1531B0440006D5CA587A1BA590902E8E631D86B29022080A57042996E088000BA790CF65A8A000860299C50A61B0220806E1E83BD96226021012CB50BCA8040491000014A023306712A022080533D03BB4A820008501298318853110001';
wwv_flow_imp.g_varchar2_table(48) := '9CEA19D855120440002B60860E6D110001B4751D0CB7020110C00A14A1435B0440006D5D07C3AD400004B00245E8D0160110405BD739C370DDADF83F000000FFFFA999BE3D00000006494441540300D0E7BD3932F54C2F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5813345492671581)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D09741CC779E7BFEA3980C145600620C0FBBEC543A2EC502401D2B157B22C5B968FE445BBB22467B3D1EEDABBCEAEADD84A4C60402A89DE';
wwv_flow_imp.g_varchar2_table(2) := 'E6D864377192F792C8B2A3388925F9482CC7B22C4300695997458A1449F12625F1C00D02189C339DFA06E89E0630E06066BA7B7AA6FF7853E8EAEAEAAFAA7E5FF77FAAABBA7B14C21F0880806B0940005CEB7A341C04882000380A40C0C50420002E763E';
wwv_flow_imp.g_varchar2_table(3) := '9AEE6E02DC7A08005340000197128000B8D4F1683608300108005340000197128000B8D4F168B6BB0968AD87006824B0040117128000B8D0E9683208680420001A092C41C0850420002E743A9AEC6E02C6D643008C3410070197118000B8CCE1682E0818';
wwv_flow_imp.g_varchar2_table(4) := '0940008C3410070197118000B8CCE168AEBB094C6F3D04603A11AC83808B0840005CE46C341504A61380004C2782751070110108808B9C8DA6BA9B40B2D643009251411A08B8840004C0258E4633412019010840322A48030197108000B8C4D168A6BB09';
wwv_flow_imp.g_varchar2_table(5) := 'CCD67A08C06C64900E022E20000198E664F5FFDD59D413DE5BD91EDE5BD7F568C392DE030D2BFA0E34ACE90AD76FEC0ED76FE908D7DFD2B17FF77604073290BE611FB1AFD867EC3BF621FB927DCABE9DE66ED7AFBA52007A0FFCF2AACE70C327BBC2F5CD';
wwv_flow_imp.g_varchar2_table(6) := 'DDCD0DDFED6A6E784386F76450BB7B06876322D6E311B12B14A54BD1189D1B8FD12912E22D5588238A10AF2BAAF21A82031948DFB08F48FA8A7DC6BE23E943F625FB947DCB3E96817DFD46DCF7F218E894C7426F78F74A37AA812B0440AAFFB6AEE6FA7D';
wwv_flow_imp.g_varchar2_table(7) := 'D2F12FCA30108D8D9F11829E96074AA34AF471E9F86D322C94011F7710605F6F8BFB5E88463E16A24239CBC7466773434BE7FE86AFF6ECDFBDB55050DCA81D0529006A78A3BF3BDCF091CEE6FAAF7535375C92EAFF0691D84F440D3294CA800F08242350';
wwv_flow_imp.g_varchar2_table(8) := '2A88F608950EC454E5B03C76CEC9F0A79DCDF51FE4632AD90EF99E56500220AFF5567737EFF9FD6E517D4E15F40341E2BF49072D91011F10C884C00AB9D317E471F43C1F53727CE1F7F818936905F3C97B01900E29EBDADFF0EB5DCDF56DF25AEFB44AEA';
wwv_flow_imp.g_varchar2_table(9) := '23D23B8B64C00704CC24B04815E277F818EB6A6E68EDDC5FFF201F7B6616900B5B792D009DCD7B3EE111EACF49A5BF2512BB097F20600F817AA18AC7E5B1D7D2D55C7F873D4566564AAABDF252003AC27BF74A157E4990FA0C91BA295523B11D04AC21A0';
wwv_flow_imp.g_varchar2_table(10) := '6E2712FFC6C7221F9394877F792500DCE5EA0AEFF99622623F95AC77C8800F083881C00E3E263BC37BBEC9C7A8132A34D73AE48D0074851B767A44EC0809F5D7E6DA38E403013B0908A1DEA788E861BE49CCCE72B3292B2F0440CECBDE4F82F85BDF9537';
wwv_flow_imp.g_varchar2_table(11) := '6B64E360EC6B2F013963B04A51959FC58F597B8B9E51DA5C121C2D00AA4A82A75E844A4FC8C6F865C00704F281809F8F59D96B3DE0F4CA3A5600F8C68BEE030D4FF1D48BD321A27E20909480A0AF76871B9EE06339E97607243A5200D4F05E6F9752F334';
wwv_flow_imp.g_varchar2_table(12) := 'A9F4490730421540206302AAA0FB7B94EA6FF3319DB1110B7774A400748BE83784AA7ED4C276C33408D846405ECADEDD45EAE3B6154844732DCB7102D0D9DCF01891B897F007020544806708268E6D6735CA5102D0B5BFFEB704D1979D8508B501017308';
wwv_flow_imp.g_varchar2_table(13) := 'F0B1CDC7B839D6CCB1E21801E8DE5FBF8B54F1C7E6340B5640C0A10454F147DD4D7B1D73DBBA23048047496313537D8EA88F430F1D54AB30087848893DCEC7BC55CD49C7AE924E66ABF27689EAFD82C42AABECC32E083889804AB49A8F7927D429E702D0';
wwv_flow_imp.g_varchar2_table(14) := '1DDE7B9320FA921360A00E206017013EE6BBF7376CB6ABBCD9CAC9B90090883D2A2BE791011F107013010FA994F33B05732A005DE1869DB23BC4EFE47393E3D156108813E063DFEC01C1B8E134FEE5540048D01FA6515764058182231053E23DE09CB52B';
wwv_flow_imp.g_varchar2_table(15) := '6702D019AEBF47B67AA70CF880806B09C8B1803D5DE1BD1FCE15809C090009F15BB96A34CA050127115045EC2BB9AA4F4E04A0E7D15F5E2628FE8AEE5CB51BE582806308F0B9D07BA081DF409C559D32D9392702108B8E7F565656B65BFEC70704404044';
wwv_flow_imp.g_varchar2_table(16) := '63F4402E30D82E00AA4AF2C4571FCC45635126083898C0FD13E786BD35B45D00BA9BF7FE12915846F803011030125831716E1893AC8FDB2E0072C08347FFAD6F194A00817C23206219CF0664DA54DB054090B0BD9199C2C17E20603301DBCF0D5B05A023';
wwv_flow_imp.g_varchar2_table(17) := 'BC6B2191BAC566A8280E04F285C0FBBB1FFBD03C3B2B6BAB000845B95D364EC8800F0880C04C02824647EE9C996C5D8ABD02A00AFC9A8F75BE84E50220A0AA626FBACDC826BFAD02202BBA4D067C400004662760EB39629B00A861E2B270FD3FBBE3B105';
wwv_flow_imp.g_varchar2_table(18) := '0498C0E6C97385E396073E292D2F840BE8A5BD7CF207388E000220302B81922EDABB76D6AD266FB04D0054258AEB7F939D077385494051A273BE0CC896807D02A00ADB1A952D14EC0F02B92410B3F15CB14D0024D0E532E00302209082803C29D7A7C862';
wwv_flow_imp.g_varchar2_table(19) := 'DA66599669B6521812752932603308808024A092B0EDCBD24601502100D2B9F880406A02733B5752DB499DC31601084F4C0186525707394000042481A03A71CEC8A8B51F5B04E073915DA5B2195E19F0010110484DC07785B617A7CE967D0E5B04C05BE2';
wwv_flow_imp.g_varchar2_table(20) := 'C37BFFB3F7152CB8884080CAFD7634D71E01A0515B1A6307309401027610F0A63867CCAA832D02A0F83CE80198E531D8710501BBCE195B04605815B8FE77C5618B469A45C0AE73C6160150C615F400CC3A3260C71504EC3A676C1100E18100B8E2A84523';
wwv_flow_imp.g_varchar2_table(21) := '4D2370A373C6B442A4215B04C043E3180494B067FB8CC7541A1A8B5164344AA3D1D86CD990EE22024A74D4965EB32D0230E222C7CDB5A97DC3E374A967988E5E1DA0B7AE0ED2A98E089DEE1CA213D72274E4F2009D91F18E8151627198AB4DE42B1C02A3';
wwv_flow_imp.g_varchar2_table(22) := '36F59A6D1180C2714BF62DE91C1CA3E3D706E942F730F50C8D536C962FFC41D91BB87C7D342E0E977A87692CAA665F382C80C0340210806940AC5A55E5F97BAE7B88DEEB1B49FB64EE898CC77B087C996055FD60373F08985D4B0880D94493D89397F874';
wwv_flow_imp.g_varchar2_table(23) := 'A62B42FDC3D1295BCB2BAB68C99AF5B46EFB2EDAF6818FD2F63B3E491B6FFB00ADD8B895AA172C9E92972F054E77466840F60CA66CC00A08644100029005BCB9EE7AB167480EF025FAFA1E9F97566F7D1FADDF793BD5ADD94A15B58BC9172825C5E3A3D2';
wwv_flow_imp.g_varchar2_table(24) := 'AAF954BD7C3DADB879176DDDFB112AAF0A92F6C7BD880BB2178181428D0896D9128000644B30C5FE3C9077DDF0CD1F9CBF80B6ECB98BAA16AD4CB12791BFA49CD6DFF61F68C5A69BF5BC3C49705E8E1FE8098880401604200059C04BB52B77DBAFF68FEA';
wwv_flow_imp.g_varchar2_table(25) := 'D9026565B4F296DDE4F5A7F7A057F5B2B5B46CDD4DBA9D613965C883897A421A91C85894AEC93ABD230716CFCBDE04078E5F93330E43D26E1AA690D5660256140701B082EAA44D3EF9F9FA7F6255D0EA9B77925032433E7FD5462A9F5735614AFE67DB51';
wwv_flow_imp.g_varchar2_table(26) := 'BE2690F1549FA8AC049FE03CFB70BA638878DF6E39B0C83D130E1CBF2A671C782A92F3705EDE27955D6CCF7F02991D8DF9DF6E5B5AD01D19D3CB59BA76031597274E607DC39C238256DE7C1B0931E1323E41FBE43462AADDB90E6FC969473EC1E73295C8';
wwv_flow_imp.g_varchar2_table(27) := '79382FEFD363A87FAA72B03D3F094C1C4DF9597747D79A47EB8D5FD0D5CBD6645D5F1E1308D6D6EA76B80C7D2549E44ABCAB3F42C67A68D9E6C9B1882537DD4A1C38AEA56B4BDEE752EF48FC72414BC3B2F00840002CF2295FA76BA67D7E3F797CE95DF7';
wwv_flow_imp.g_varchar2_table(28) := '6BFB4E5F9694CFD3938C65E889939176794DDF2E05607235BE082E5C42DB3EFE59DAF11BFB68C3DDBF418B76DC190F1CE734DE56B560493CAFF68F2F177820535BC7323704AC2A15026011591E00D44C9756546AD1AC97C56509011893D7F6C90CF68F44';
wwv_flow_imp.g_varchar2_table(29) := 'E98ABCA6D7B679A500AD6BB88BD6DEF90015D72CD692672C79DBBA8F3C40EBEAEF24AFCFA76FE73B1207A44D3D019182210001B0C8957C8DAE992E2E29D1A2592FFD017EBDE28419631913294431D977E7670CB4756F51116DFBE44354B5F616222128E5';
wwv_flow_imp.g_varchar2_table(30) := '9FCC53B5EE56DAF6A987C85B54A467BF28670D66D11B3DCF6C11AE138B128F4770CFA463708C7AE5F805661D6623665F3A04C022D61E2571B24506AE9B56CA486440B7652C434BBC363036E501A2B5F57791B72CFD1E88B7AC8A785FCDEE7854253E79B5';
wwv_flow_imp.g_varchar2_table(31) := 'F5B92CF959079E663C7A6590CE750DD13B724C817B2697FB46E862CF70FCF6669E75B87C7D044F41CE05A80579140B6CC2A424E03508407F6FAF4C31E713E9EBD10DF90C6568899D8389FB0E6A57AEA78AE59BB44D692F795FB6A1EDD829BFB9B5F88D96';
wwv_flow_imp.g_varchar2_table(32) := 'D787C7E944FB60FC69C7EB869BA092EDC3B30E1D52B44E5C8BC4452159AF26D97E6E4AB3B2AD10008BE896F81268D5588C4607CDE9050CF675EB352EF17BF43847F83A5D16C5D17858B875577C99CDBF055B76EABBF3C9996AE6814582EF541C1D57F5FD';
wwv_flow_imp.g_varchar2_table(33) := '8C91D0F2F554124ACC6418B7F165C1A9CE087A03462816C71347A9C505B9CD3C9F9C1E03DDCE77CE668D60448A485F4F4200CA8BA60A003F42AC15A278BD545495FD8F3115071710DBD2ECF24B4BB4F8F465879C79E0A71D8DE9E5B58B69EB7F7A986E7B';
wwv_flow_imp.g_varchar2_table(34) := 'E4EBD4F0E73FA74D5FFA3ADDDAFC3DDAFDD8B3F4BEFFF17F69EDEDF71AB3130B07DFAC84E71DA660B16CC570885A56866B0D874A1223E9EF9D3B95752FE0FC9197499BD4F77A0455144D7DD7AAF1A4A95AB0944831C1BDD246A53C8935278ECAB1002D6E';
wwv_flow_imp.g_varchar2_table(35) := '5CF2201FCF16686942AADF86BB1EA46D8F3C49F36EFB14F916ADD736C5974A599002EB6EA3BABBBF403B1BFF8142CBD791F6C73328DC8BE0C1432D0D4B6B089870845853B142B03ABFCC4FC6CBF4736FCA1338C386F5BC7B96FA7B13DFFEB5D2B61CB09F';
wwv_flow_imp.g_varchar2_table(36) := '62CD787256B2004CD99AF9CA3C83ADD1F1C4538D9A453E612FF40C69AB5454564E3B1E79826AEEFCAF24BC457AFA6C11EFFC95B267F0046DF8D8AFEB59F81E87E9BD097DA38B22563715026021618F22A85A9EA85A11FDB2FB7EEDEC316D75CECB91815E';
wwv_flow_imp.g_varchar2_table(37) := '3A7FFCB09E9FBFFDAB4B13BD0B6DC3D4AB6EA12567BD54642F403332F3F4A7F8B305C6B1872D0F86C95797FE9D8F3577FC262DD8F47EAD28E267145808F404444C270001301DE95483FC4D5D6C1810BCF4F65B74FA959FD2F848646AC6A46B72EAEDDC09';
wwv_flow_imp.g_varchar2_table(38) := '3A7AF0398A8E8FEB39965526BFABD0270547CB34D079458B66BD1CE8BCAADB3096C189DC4DE7F97D8E7358BEF34E0AACCF7CF071D57D4DE42B296553F1D06198D58827E09FA9042000A6E29C698CCFC915C162F2706472736F673BBDD9FA43EABD7C7E32';
wwv_flow_imp.g_varchar2_table(39) := '65E66234D24F270FFD982E9E7C9354C31D380BE71551D9B4C13F6D6FAFA18C7EC349AB6DCF74D9DF91101363196CAF4F4EF3A9935D8FC0BC2A5AF2A9873939E3A0948768F37FFC6D7DFF3E39A5A8AF20623A010880E948671AF47B145A531D209F1CB8D3';
wwv_flow_imp.g_varchar2_table(40) := 'B646C7C6E9F4E157E8D567FF898EB6FC0B9DFCD98FE9F4CB3FA1636DCFD21BCF3F43475A9EA57EC39C3FEFB7B8B2886A9274FD791B079E79E02587C8F55E8A8D0E7334AB101B1DA1487F9F6EA374DAD463EF50E289C7253BEE245194FD5D8F65DBEE20C5';
wwv_flow_imp.g_varchar2_table(41) := '3331C3C12F40E10146BD022E8AD8D15408801D946519455E85D6D694D0BCC0D4917BB989862311E201BEDEAE4E1AEAEFA7F1D1C449C5DBFD5E412B42C5649C55E0F4E9615EB167CADDBE1DC75E9A9E25EDF5F66387F47DB88331AF786AFD238697881487';
wwv_flow_imp.g_varchar2_table(42) := '16E879B38DF0F4A16663686CEABB14B5742CB3270001C89EE19C2D78E519B4BCAA9836D4965347596B0000100049444154100FE2F93C826EF457214FE8659C7F7EE98C29BF64FB29725AA0DAD04338FF8B8314B97A2159D639A50D5E3947177E911000B6';
wwv_flow_imp.g_varchar2_table(43) := '2D8B98B26FCC70795254659E0094562FD4CB891ACAD0131131850004C0148CE919E14B8245F25A7E636D69BC57C027395FDB2FA8F0D312D9CD5F190AD0E605A5B42218A0CA243D861B95C6838E86417B7AFB27CFD0F860A20B7FA37D8DDBC623D7E9ED17';
wwv_flow_imp.g_varchar2_table(44) := 'BEA327C9AB18E2694D3D6132623C373DA5892715273767BC282AAFD4F73596A12722620A0108802918333712F029F193BC467E73F309162CF151799187F8DB3C13AB1E45D032C32CC1C8D0201D7EE6AFE9FAF9A37336D777EE4D3AFCD45FD2E85062A662';
wwv_flow_imp.g_varchar2_table(45) := '595560CA40A666CC6BE8C58CB45FD492B35EF65F49D8E236656D30CF0CD8555DC5AE82508E7D042AE4753AF726B412C74746E8F84FBE4BE77FF2CF141D4E9CD4DA766D191D1EA4B3CFFF239D78E17B721C22F15011DB6251D2F219977C59A3AD0FBC7B4A';
wwv_flow_imp.g_varchar2_table(46) := '8B66B794D30ADD9712B68C656467187B4F270001984EC4C475BE76E5116C7E8C96DFAC6356E88A8C11DFF7CFF667AB2EF726EAE4258571FBB5F36FD3AB7FFFC774F4E9BFA0B33FFE165D79ED79BAF2EA73F1F8D1A7FE426EFB13EAB870DAB80BB10DB635';
wwv_flow_imp.g_varchar2_table(47) := '25D1B052227B30DA6ADFA5935A34ABE578C7798A19EE7B3096919561EC3C830004600692EC13F8A19813D706E9D8D589E7E0AF5C1F8DBF5B8F5FC76D4678B77784F8C743D93E3F6F1F9965949CC703784C61FAC0DD604F37755C3C43170FBF44178FBC1C';
wwv_flow_imp.g_varchar2_table(48) := '8F0F1A6E336602F24A8296561511DBE0F5D942B9EC6D68DB3ACE1CA3B1AB67B4D58C97ED6D4FE9FBF22586717A53DF808829042000A6609C30C2F7C49FED1A227E28C6785FFEC4566BFEF3F3F6FCF41CBF602359093CA6B0A9B694EACAFD53EE43489697';
wwv_flow_imp.g_varchar2_table(49) := 'D3786682BBFC1BEB4AA92AE0E3A41B864A29007C9272263516A3135F6F248A653E6D3772FE0D3AF3D367D85C3C70FDE31117FDB3B3A9100093680FC9F9F093ED11E267F28D26158F87E605435459536B5A282D9FA7DF28A395C5CFD2B3F8241B31E741B4';
wwv_flow_imp.g_varchar2_table(50) := '5A29003CEBB0A6261017836089972AE43423078E73579FB7711EEEF27BA6771BB482922C8DBD84DE77CF51E7F38F27C9953A491D1BA6638F4B0199CCCAB319F34B7D936B5858410002600255396645FCFB7FC66BF250ED02DAD2F061DA7EC7A769ED8E0F';
wwv_flow_imp.g_varchar2_table(51) := 'D19AF7ED352D6CAC9FB0BBEED65DC462A03581C5E75AFF88B69A7459E2F3108BC1123953C0D38C1C38CE27316F4BBA538A44BE3F40EB0570D6E3DFFF1BEA7BE9698ECE39A8913E3AF3775FA1C1EE0E7D9F9A527FD299073D0322591350B2B6000374459E';
wwv_flow_imp.g_varchar2_table(52) := '74238637E0ACDC7C0BADDCDE40458637F85A81A962FE62DAB0EB435419AAD6CD770C4E7D27A0BEC1E208DFE064EC341C79F20FE9D45F7D8162FD9D294B8E9C3C44AFECFF55BA72F4E77ADE12BF422C4A7A02229610800064899547E33B06C6742B8B56AD';
wwv_flow_imp.g_varchar2_table(53) := 'A3D09235FABAD511A17869D5F67AF2F8BCF1A2B837C2038DF1151BFF95FA3DF11B978C2270F5D8CB74E8773F4E27FEECBF50FBB35FA32179A2AB43D769BCE3025D7FE5FB74E95BFBE9F5F03DF4DA9F7F91460612372BF1C9BF2A1498725BB38D4DC96951';
wwv_flow_imp.g_varchar2_table(54) := '76170E01C892384FC969264ACACA69C19A2DDAAA6D4BC5EBA7656B6FD2CBEB94BD80239707C8CCC02FF9E419872BD74788C73BF4C20C11BE576075754076DB1389AA1C10EC387D944E3EFB0D7A559EE86D0FDF4E3F6BFE353AFC8DDFA70B879EA5C1694F';
wwv_flow_imp.g_varchar2_table(55) := '2DF298C4EA5049C63742254A466C2E04200073A174833C238637E4D42E5B458247AE6E90DFF44D6A8C3A2F9EA28BA78E996EDA6870545EE2F08C43BBECEDF08F8872E03107631E8EF338023FF4142A4D6FF0CEE711C4B747F39884106C09C10E0210802C';
wwv_flow_imp.g_varchar2_table(56) := '291BA7FB8A4BCAB3B496DEEEE3234374ACED8774FEAD37283A967861487A5632CBCDBD8073DD4394EC25A17E8F428B279F755858E127EED2272B85B5B24ACE46AC081613CF3E54A7291AC96C222D3D021080F478CDC83D6E7849A6AFB864C676AB12A263';
wwv_flow_imp.g_varchar2_table(57) := 'A374F2E517686860402FC2575C4C8B366CA5B5BBEFA0AD1FBB9FB6DEFD803941DADAF8C14FD0CAF7EDA1A2D232BD3C1E6F60111836F482F48D32C2DFEA35657E5A535D425B1796C59F825C2D2F11B887B0A9AE9436D795D152391BC1B72ECBECAEFFE402';
wwv_flow_imp.g_varchar2_table(58) := '00042017D44D28F3ECEBAD534EFEC51B6FA16DBFF2795AB2EB6E0AAE7F3F056A975160FE527382B455B1E2269ABFB5816EBEF77FD1F29B8DBF1540F44EEFDC5E3CC23D031E2CE407A0707FBF090781092620002640D44DD874ED1AE969A7BEEE2EBDD815';
wwv_flow_imp.g_varchar2_table(59) := 'B7ECA2C53BEF224F51404FB33252B7FD8352046ED38B888CC6661D18D43321E24802100047BAE5C695BA7CE6B89EA12C5843B5DBF6E8EB76456AB7EDA54059855E1CBFC2FB6AFF68FC0DC1662CDB0746891FA432DE5CA517868869042000A6A1B4C990BC';
wwv_flow_imp.g_varchar2_table(60) := 'F0EEE9B8A617B678F3FB89148FBE6E5764E0BD33243C89720747A3A63EF0C40F50F10F8AF2034F3C05794D0A825D6DCB4539B92A1302902BF219963B3EED459F81D0C20C2D65B65B742442A77EF84D7AEBB96F5364DA4B4B33B3987A2F9E82BC7A7D94DE';
wwv_flow_imp.g_varchar2_table(61) := 'EE88E0522335AEB4724000D2C29522F3E4EBB153E4CA6A73746CEABDFE45C1BAACECA5B3734C8ACF891F7C93BADFBB3065B7CA45CB69C5AEBB68E33D0FD1A64F981336DCF5202DDCB293F85786B4C2F84742F8FE835EBC2A5C4392F51202903542830161';
wwv_flow_imp.g_varchar2_table(62) := '885B1455E5258045A6539A7DFB474FD24077BB9EAFA26E31EDDCF7246D79E41F69C9BDFBA8FA439FA5D007CD09FCB362AB7FF34FE897FEE039BAE9D39F2361B8CCE1598731C3F4AB5E2144D2260001481B993B77E8BF789CFAAE5DD61BBF487E3B6FFDCA';
wwv_flow_imp.g_varchar2_table(63) := '93E4AD5DA5A759121182827B3F433B7EFB6FC83B39CB118BC9A9C7BEB94D3D5A5227938DE6D21C042097F4F3A56CD9EBB8F4469B5EDB404515ADBCBF9984B788ECFAF32DDE409BEFFDA25E5CFF709466BB0149CF84484A021080948890815F11DEDF99E8';
wwv_flow_imp.g_varchar2_table(64) := 'FA6FFECF074814DB7BDB337BA1FCD68FD2A26D89DF1DE499074E47C89C0004207376AED9733CD2AFB735302F48C5AB6ED5D7ED8E2CD8F131BD4808808E22E30804206374EED97174F0BADED8A2F22A3D9E8B88C7F0E323C99E46CC459DB22933D7FB4200';
wwv_flow_imp.g_varchar2_table(65) := '72ED813C283F369E987AF4FAEDBBEE4F8646292ED5933113A0A3C8380201C8181D760481FC270001C87F1FA205209031010840C6E8B023086447C0097B43009CE005D40104724400029023F02816049C40000260A2173ADF394BEDE78ECF08039D574C2C';
wwv_flow_imp.g_varchar2_table(66) := '05A640C03C0210802C59F27BEF341397CF9FA18B278FCE087D1D897BE8B5BC58BA9B80535A0F01C8D213C1125F9616B03B08E48E0004204BF675E57E5A5A554CFC7B7BC6C02FBECCD234760701CB0940004C405C15F0C67F7197C5400B019FC704CB3001';
wwv_flow_imp.g_varchar2_table(67) := '02D612800058CB17D641600601272540002CF2861016199E6676A8FD12250BD1A1C40F864CDB25FD551B5E75967EA5B0871904200066504C6243B5E9A439F2FD272859E87FEF4C925A659864939865583BEC960501084016F0B02B08E43B010840BE7B10';
wwv_flow_imp.g_varchar2_table(68) := 'F5CF2B024EAB2C04C0691E49B33E5B17969116023EB8334D7CAECF8E23C6F5870000B8990004C0CDDE47DB5D4F000260D12160D734A045D59FD56CDF950B74EA6B9F4F1AA25DEFCEBA5FBA1B7A0FFE53D2324E7FEB31DD54BE31D62BEEA00804C041CEC8';
wwv_flow_imp.g_varchar2_table(69) := '87AA8C0D45E8EAF1D79286D8E890694D88B45F4A5A46E7B9E37A19455E1CBE3A8C0C2320982138EC967B027CDB75EE6B91DF358000E4B7FF6CAFBDD723A63CF86447057876C3F8A0D592CA22DA585B4AF38ABD76145FD06540002C72AF5D77025A54FD59';
wwv_flow_imp.g_varchar2_table(70) := 'CDFA1431E5C1A7593366BBC170276589DF33A54C7E04DB278528DB22ECDCDFA96541009CEA19D40B046C200001B001328A0001A712800038D533A81708D840000260036414E16E024E6E3D04C0C9DE41DD40C0620210008B01C33C0838990004C0C9DE41';
wwv_flow_imp.g_varchar2_table(71) := 'DD40C0620210008B01C3BCBB0938BDF51000A77B08F503010B0940002C840BD320E074021000A77B08F503010B0940002C82AB8884E1CEABEFD1E9575B4C09178EBEA61B2EE8E7E10DFCF406E759241FAA0B01B0C84BC667D5478786A8B7E39A29A1BFB7';
wwv_flow_imp.g_varchar2_table(72) := '5BAFB1B10C3D11111048830004200D58E9640D9678C9EFB5F66B0CCFC3A7E311E44D460002908C8A09698AEC9F6F985F4A2B42C55457E19FF20CBDF1D9F64CE2781EDE0407C1449C0004208EC1BA7F15455EAA2DF34F799E9DBFB9B309C1121F15FCF3F0';
wwv_flow_imp.g_varchar2_table(73) := '86F70158E71DEB2CE78B650840BE780AF504010B0840002C809A2B93F2AA432FBAE7E229EA78B3CD94C0B634C3C632B4342CF3970004207F7D37A3E63E4FC29DD7CEBF4D675F6931255C3B7F4A2FCB6F28434F44246F09248E98BC6D022AAE11A80A78B5';
wwv_flow_imp.g_varchar2_table(74) := 'A865CB901C7FB0CC788118CEA7664000F2C95B29EACA6FC95D190A50A8D44765451E2A3529B0AD6A69737575206E97ECF8B37606D58E16E445191080BC70D3DC2B592E4FFAC5F38A68951482D52605B6B548DA2CF57BE65E916C736216205B8273DA1F02';
wwv_flow_imp.g_varchar2_table(75) := '30274CC804028549000250987E45AB724420DF8A8500E49BC71C565FC57004BDF47B9FA1D6CFEF30259CF9E9D37A4BF11B203A0AD32306F7996E1B065D4020E0B37E5C2060E7D8830B7C666C2204C04803F1B4092CAA28A2220B1F7AAA2AF152257E0330';
wwv_flow_imp.g_varchar2_table(76) := '6DBFCC750708C05C49215F5202019F42EBE797D286DA125A25A709CD0A3CE5B87941292DAD2C4E5AAE1313F3B14EB608803F1A8BE6231CD479EE04FC1E85CA6457DDACC0538EFC44E5DC6B505839BDE41DB5A345B60840CCE38700D8E14D94513004549B';
wwv_flow_imp.g_varchar2_table(77) := 'BE346D1100BB1A5330DE47435C4F20E6B5A7D76C8B00D8D518D71F350090330266175C2CD471B36D26B3678B00D8D598640D441A08E42381D858D496CB665B046074CC33948F4E409D41205704C6C95F388380955413C91548940B02F948C0AE73C6961E';
wwv_flow_imp.g_varchar2_table(78) := '80087F7B54251AC94747A0CE20908A80D9DBF95CE173C66CBBC9ECD922005CB020F52A2F114000046E4CC0CE73C5360120121000C21F08A426A092B8903A9739396C130041040130C767B052E004EC3C576C138018D1C902F71B9AE74202563459252ABC';
wwv_flow_imp.g_varchar2_table(79) := '1E8022D4C3843F1000819404EC3C57ECEB01C43C108094AE470610208AD978AED82600216AE197CBCB2B01B8180440E006042293E7CA0DB298B7C9360110619227BF386D5ED5610904724BC0A2D28F4E9C2B16599F66D63601982857C565C00408FC0781';
wwv_flow_imp.g_varchar2_table(80) := 'D908D87A8ED82A0042A82DB3B51AE920000244F21C295C0150639E7F252255067C400004661250A3B1D8F767265B97626B0F20146E799748BC49F803813C27604DF5C59B35E14397ADB19DDCAAAD02C0555049FD375E228000084C25908B73C37E015015';
wwv_flow_imp.g_varchar2_table(81) := '08C054BF630D04E20484AA7C371EB1F19F626359F1A2AA17F41F92C30017E32BF8070220A011B814247A4D5BB16B69BB0088875E1F23125F27FC81409E12B0A8DA8F8B708B2DEF0134D6DF7601E0C2158FF771B9C46C8084800F084802E32216FD3BB9B4';
wwv_flow_imp.g_varchar2_table(82) := 'FD931301A8FAEA0B7C09F09CEDAD458120E0400282E807C1E643977251B59C08003734A62A8FF1120104DC4E20AA2A7F9A2B064AAE0AAE09B7B4C8B27F24033E209037042CA8E88F26CF050B4CA736993301E0AA2922F6655E2280805B0908410FE7B2ED';
wwv_flow_imp.g_varchar2_table(83) := '391580AAC68347E4F5CFF7720900658340AE08F0B11F6C6C3D9AABF2B9DC9C0A0057605C55BE24970332E00302D5F64224000004B3494441546E2230A828DE2FE6BAC1391780F9E1963324D47DB90681F24120150133B70BA17EA972DF0B67CDB49989AD';
wwv_flow_imp.g_varchar2_table(84) := '9C0B00573AB8BEEEFF13A907398E00022E207028D8D8F6574E68A7230440FCEAB7A351D5F3590904970212023E054D60D0A3781F704A0B1D21000C237E2940EA83321E93011F102844023195C4679CD0F5D7E03A4600B842A1A6B6A7E5B4C8EF721C0104';
wwv_flow_imp.g_varchar2_table(85) := '9C44C094BA08F58BD54D2F7EC7145B2619719400709B828DAD8FC9F1007E5680571140A05008FC59A8B12D6777FCCD06D17102C0150DD6451E92CB1FCB800F08140281EF04D5D6FFEDC486385200F891E11175F01E12F48C13A1A14E203057027CB38F3C';
wwv_flow_imp.g_varchar2_table(86) := '96EF136172E4D896230580E12E0CBF1E09EE6BFD34A9F428AF238040AE08645AAE20F107558DAD9FE06339531B56EFE75801E086CB014135146EDDA70AE2699328A72180401E10181544F7059B5EFC1D3E869D5C5F470B8006AEBAB1F51BAA88ED22126F';
wwv_flow_imp.g_varchar2_table(87) := '13FE40C0D9048EC6546557B0A9F549675773A2767921005CD5EAC6832F5F57C536196F96614C067C40C04904E431290E04EB06B7D7845B6C7FB75FA620F24600B8812BC22DC3A1A6D6704C8DDDA412FD0BA72180809504E6605B25219E8AAACAC650D38B';
wwv_flow_imp.g_varchar2_table(88) := '8D3C803D877D1C9325AF0440A356133E78AABAA9F56E21D4DD32ED900CF88080ED04E4F1D7A208DA1E6A7CF15726EE64B5BD0A5917989702A0B53AD8D87648F6087693AADC2648FDA64A34A26DC31204AC20C0C7980C4FCA937FB73CFE3E2047F9DFB0A2';
wwv_flow_imp.g_varchar2_table(89) := '1CBB6CE6B500689042E1969F079BDAEEF7ABCA6212F4B04A6ACE1FB3D4EA8665C110382784F8321F63D54DADF7C993BF207A9E052100DA2156116EE90C35B6FE517553DB6A22F5C3AA4A5F93DBDE91011F10489B80DCE11DF965F29744E276D9D35C156C';
wwv_flow_imp.g_varchar2_table(90) := '7CF1FFF0314605F457500260F44BA8A9ED47D5E1D6CF859A5A972A22B64D15C42F1D6995790665C007049211E063431E236AA3A22A37F3B123BF4CFE7BA8E9C582BD2DBD6005C0E8DDAAC68347AA1B5B1F950EDD234399478DAD92BD834F91AAEE1744FC';
wwv_flow_imp.g_varchar2_table(91) := '4EC2C332FF6519F0710701F6F5E1B8EFE531C0C78247F1AEE6634306798CB41DA80AB7F03151F0345C2100D3BD58193E784EF60E9E0985DB9A824DADF748A7B3DA2F924B11AC2A2D96EA5F25A775169087967A145AE95568AD148B4D4255B7C654757B4C';
wwv_flow_imp.g_varchar2_table(92) := 'C46E45702003E91BF611FB8A7DC6BE631FB22FD9A7EC5BF6B10CECEB9BE3BE97C7001F0B4E7A467FFAF16AE5BA2B05E04640C5FFFCE18854FF5E39AD7335F4D5D6772AF7B59E9FB7AFF5B4148BE3C170DB9B35E1B65FD4341E7C1DC1810CA46FD847EC2B';
wwv_flow_imp.g_varchar2_table(93) := 'F619FB8E7DC8BE649FB26F6FE47BE336B7C421006EF134DA0902490840009240411208B8850004C02D9E463B41200901084012284872370137B51E02E0266FA3AD20308D0004601A10AC82809B084000DCE46DB41504A61180004C0382557713705BEB21';
wwv_flow_imp.g_varchar2_table(94) := '006EF338DA0B0206021000030C4441C06D0420006EF338DA0B0206021000030C44DD4DC08DAD8700B8D1EB6833084C1280004C82C00204DC480002E046AFA3CD20304900023009020B7713706BEB21006EF53CDA0D029200044042C00704DC4A0002E056';
wwv_flow_imp.g_varchar2_table(95) := 'CFA3DD202009400024047CDC4DC0CDAD8700B8D9FB68BBEB0940005C7F0800809B094000DCEC7DB4DDF5042000AE3F04DC0DC0EDADFF77000000FFFF427167B900000006494441540300B39328E255A9A14D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5813609299671581)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD077C24D97DD8F97FE746CE989C73DAC0E5262E77199614939844E94805DAD459B2AC53A4EE7394AD3BDBD2C99295ED8FA5D3470E278B26';
wwv_flow_imp.g_varchar2_table(2) := '957812CD2C520C62D00686CD696676F2CC4E0630C840C77BFF9E995D6006151AA8EEAEAAF7C34E01DDF55EBD7AFFEFC3A2FE15BA2A39F26B0F549930E07780DF017E07F81DE077C0AEDF81A4F0850002082080000296098890005837E4048C0002082080';
wwv_flow_imp.g_varchar2_table(3) := '000900BF030820800002085827A0017304401598104000010410B04C8004C0B201275C0410400001DB05AEC64F0270D581EF0820800002085825400260D570132C0208208080ED02D7E32701B82EC14F0410400001042C122001B068B0091501041040C0';
wwv_flow_imp.g_varchar2_table(4) := '768157E2270178C582570820800002085823400260CD5013280208208080ED020BE3270158A8C16B0410400001042C112001B064A0091301041040C07681C5F193002CF6E01D020820800002560890005831CC04890002082060BBC08DF19300DC28C27B';
wwv_flow_imp.g_varchar2_table(5) := '0410400001042C102001B06090091101041040C076819BE32701B8D98439082080000208C45E800420F6434C800820800002B60B2C153F09C0522ACC43000104104020E6022400311F60C24300010410B05D60E9F849009676612E020820800002B11620';
wwv_flow_imp.g_varchar2_table(6) := '0188F5F0121C0208208080ED024EF1930038C9301F010410400081180B9000C47870090D01041040C07601E7F849009C6D2841000104104020B6022400B11D5A024300010410B05DC02D7E1200371DCA10400001041088A90009404C0796B01040000104';
wwv_flow_imp.g_varchar2_table(7) := '6C17708F9F04C0DD87520410400001046229400210CB6125280410400001DB05BCE22701F012A21C010410400081180A9000C47050090901041040C07601EFF84900BC8DA881000208208040EC0448006237A404840002082060BB809FF84900FC285107';
wwv_flow_imp.g_varchar2_table(8) := '01041040008198099000C46C40090701041040C076017FF19300F873A216020820800002B112200188D570120C0208208080ED027EE32701F02B453D0410400001046224400210A3C124140410400001DB05FCC74F02E0DF8A9A082080000208C4468004';
wwv_flow_imp.g_varchar2_table(9) := '20364349200820800002B60BD4133F09403D5AD44500010410402026022400311948C24000010410B05DA0BEF84900EAF3A236020820800002B110200188C53012040208208080ED02F5C64F0250AF18F511400001041088810009400C06911010400001';
wwv_flow_imp.g_varchar2_table(10) := '046C17A83F7E1280FACD5802010410400081C80B9000447E08090001041040C07681E5C44F02B01C359641000104104020E2022400111F40BA8F0002082060BBC0F2E22701589E1B4B2180000208201069011280480F1F9D4700010410B05D60B9F19300';
wwv_flow_imp.g_varchar2_table(11) := '2C578EE510400001041088B000094084078FAE2380000208D82EB0FCF84900966FC7920820800002084456800420B24347C711400001046C175849FC24002BD16359041040000104222A400210D181A3DB0820800002B60BAC2C7E128095F9B134020820';
wwv_flow_imp.g_varchar2_table(12) := '8000029114200188E4B0D1690410400001DB05561A3F09C04A05591E010410400081080A90004470D0E8320208208080ED022B8F9F0460E586B480000208208040E4044800223764741801041040C0768120E22701084291361040000104108898000940';
wwv_flow_imp.g_varchar2_table(13) := 'C4068CEE2280000208D82E104CFC2400C138D20A0208208000029112200188D470D1590410400001DB05828A9F04202849DA4100010410402042022400111A2CBA8A0002082060BB4070F193000467494B08208000020844468004203243454711400001';
wwv_flow_imp.g_varchar2_table(14) := '046C1708327E12802035690B010410400081880890004464A0E8260208208080ED02C1C64F0210AC27AD2180000208201009011280480C139D4400010410B05D20E8F849008216A53D04104000010422204002108141A28B0820800002B60B041F3F0940';
wwv_flow_imp.g_varchar2_table(15) := 'F0A6B488000208208040E8054800423F44741001041040C0768146C44F02D00855DA44000104104020E4022400211F20BA870002082060BB4063E22701688C2BAD228000020820106A011280500F0F9D4300010410B05DA051F19300344A967611400001';
wwv_flow_imp.g_varchar2_table(16) := '041008B1000940880787AE2180000208D82ED0B8F849001A674BCB0820800002088456800420B44343C710400001046C176864FC24008DD4A56D041040000104422A400210D281A15B0820800002B60B34367E1280C6FAD23A020820800002A114200108';
wwv_flow_imp.g_varchar2_table(17) := 'E5B0D0290410400001DB051A1D3F0940A385691F010410400081100A9000847050E8120208208080ED028D8F9F04A0F1C6AC01010410400081D0099000846E48E8100208208080ED02CD889F04A019CAAC0301041040008190099000846C40E80E020820';
wwv_flow_imp.g_varchar2_table(18) := '8080ED02CD899F04A039CEAC0501041040008150099000846A38E80C0208208080ED02CD8A9F04A059D2AC0701041040008110099000846830E80A0208208080ED02CD8B9F04A079D6AC09010410400081D0089000846628E8080208208080ED02CD8C9F';
wwv_flow_imp.g_varchar2_table(19) := '04A099DAAC0B01041040008190089000846420E8060208208080ED02CD8D9F04A0B9DEAC0D01041040008150089000846218E8040208208080ED02CD8E9F04A0D9E2AC0F01041040008110089000846010E8020208208080ED02CD8F9F04A0F9E6AC1101';
wwv_flow_imp.g_varchar2_table(20) := '0410400081960B9000B47C08E8000208208080ED02AD889F04A015EAAC13010410400081160B9000B47800583D0208208080ED02AD899F04A035EEAC15010410400081960A9000B4949F952380000208D82ED0AAF849005A25CF7A11400001041068A100';
wwv_flow_imp.g_varchar2_table(21) := '09400BF159350208208080ED02AD8B9F04A075F6AC1901041040008196099000B48C9E152380000208D82ED0CAF849005AA9CFBA11400001041068910009408BE0592D0208208080ED02AD8D9F04A0B5FEAC1D01041040008196089000B4849D95228000';
wwv_flow_imp.g_varchar2_table(22) := '0208D82ED0EAF849005A3D02AC7FD902D5AAC87CA922E37325B9345D9473930539333E2F27C6E6E4D8C8AC1CBD36E9EB93669E969D37752E9BBA1366195D76D92B674104104020E2022400111F40DBBA5FAE5465CE6CF4C7664B727A7C4E74C37E62744E';
wwv_flow_imp.g_varchar2_table(23) := 'CE9A0DFF45B3711F311BF7715336395F96A96B93BEBE62E669D90553E725535797D3E9F49539199D29D61289B26614B681122F0208B448A0F5AB250168FD18D0031F0215B371D6BD77DDAB3F7471464E993DFAB19992CC162B3E96BEB98AC9236ACB8E9A';
wwv_flow_imp.g_varchar2_table(24) := '364E5F999783A6CDA39767458F0E94B4F0E6459883000208C44A80042056C319BF6074C3AF7BED2F980DB4FE5CEE06DF8F8CB6AD47070E5E9C960B5305D1A30D7E96A30E02082050AF4018EA9300846114E8C34D02BA17AE7BE3BA67AE7BFEA5B239E17F';
wwv_flow_imp.g_varchar2_table(25) := '53ADC6CC289B830AE7270A72F8F24CEDDA02ED4B63D644AB08208040EB0448005A67CF9A1D04F4023D3DD4AF7BE3C5266EF86FEC4EA154AD5D5BA017156A9F6E2CE73D020820B03C81702C4502108E71A017D704F4823CDDE0CE2DF3DCFEB56602FD313D';
wwv_flow_imp.g_varchar2_table(26) := '5F969357E6442F240CB4611A430001045A284002D0427C56BD58400FF5EB0579D5E61DED5FDC01977715735A403F35A0D706B854A308010410F014084B051280B08C84C5FDD00BFD4E9B3D6CBDC86F390C6D9D9DB276EB0ED971DBDDB2F79E37C881D7BE';
wwv_flow_imp.g_varchar2_table(27) := '496E7DDDDBE4F6377EBFDCFEE0BBE49607DE2AFBEF7B93ECB9E775B2FDB6BB6A753BBA7A96B32AD16B038E8FCE4A08739465C5C342082060AF000980BD631F8AC8756F5FCFF5EBC7F1EAE950576F9F6CDAB5DF6CD81F94DDF73C286B77DE26BD6B374B47';
wwv_flow_imp.g_varchar2_table(28) := 'FFB0E4BB0724DBD12DE97C87A4736D92EBEC91B69E01E9EC5F2D7D6BB7D4EAEEBCEB75265178B36CD97BAB685BF5AC7B62AE2C274802EA21A32E0208BC2C109E172400E1190B2B7B7269BA20F56CFCB3B9BC6CDE7B8B6C7FF50332BC6D9FD9B00F4A3A9B';
wwv_flow_imp.g_varchar2_table(29) := '9744D2FFAFB2D6D5C420DFDD2F839B77CBF63B1E90AD075E25F9F60EF1FBA54980DE7CC86F7DEA218000026113F0FF57336C3DA73F9117D00BFECE4D147CC591341BF84DBBF7CBBEFBDF22439BF7D436FABE16F451296D928A810D3B64EF6BBF4F36EED8';
wwv_flow_imp.g_varchar2_table(30) := '2B996CC6C75252BB6990DE91D057652A21800002221226041280308D86457D992994E5F4F8BCAF88DBBBBA64BFD9380F6FDD17E886FFC695A7D25959B5E380EC7DCD9B7C1F0DD06B17F496C337B6C57B04104020EC022400611FA118F64F1FC2737C744E';
wwv_flow_imp.g_varchar2_table(31) := 'C4C79574BD43C3B2D31CEED7F3F8CDA2C8B677CBDEFBDE2C3D03839EABD46B18F42143FA7C02CFCA54400001CB05C2153E0940B8C623F6BDD10DE6D98979F17377BDC1D56B65CB2DF748A6ADB3E92EA94C4EB6DF71BF0CAC5AE3B96E4D68F4238C9E15A9';
wwv_flow_imp.g_varchar2_table(32) := '8000020884488004204483614357A6CCA17FBD80CE2BD6DEE1D5B2F9D67B259D6BF3AADAB0F2A43925A07DF09304E8238947668A0DEB4B500D6B02A6933EF95093309DF4B5CED329A8F5D00E0208DC2C10B6392400611B9118F7476FEB7BCEECFD7B8598';
wwv_flow_imp.g_varchar2_table(33) := '6DEF92AD66E39F48A5BDAA36BC3C99CEC8E6DBEE958E6E8FFB0698D31997A68A12C68DA8BAEB750A7AD1A5DEC8E8CCF89C9C30A760F476CB3AE96B9DA7659AC44CCE97448F6A341C97152080404B0548005ACA6FD7CA47678BB547F0BA45AD1FF3DBF9AA';
wwv_flow_imp.g_varchar2_table(34) := '7B2495C9BA556B6A59329591EDAF7A8DE953C675BDBAD1D40DA86BA526146A3FF4414ABA617FFEC2B4BC70715A8E8ECED62EBAD49B2D8DCE94441302BDDDB24EFA5AE769D9992BF372CC2407872ECDD496D336B42DAE7168C2C0B18A980B842F3C1280F0';
wwv_flow_imp.g_varchar2_table(35) := '8D492C7B54AE5445F740BD82DBB2FF0E69EBEEF7AAD6F472BD3070DB81577BAE57F7A23556CF8A015728942BB52717EA86FBC8E559D1EB2CF4B484EEFDD78E4A9823147E2EBAAC75CBD4D565F46148DA86B6756C6456B46D4D12745DB57A7C430081480B';
wwv_flow_imp.g_varchar2_table(36) := '9000447AF8A2D379DD8BD40D8A5B8F87D66D90AEE1756E555A5AD6B37AA3E72703F4B1C5BAD16C5647F536CA6A7B6C64AEF6E442DDA3D7F3FABA010FAA0FDA962612DAB65EECA89FE0B8345D145D7750EBA01D04E22E10C6F84800C2382A31ECD395B992';
wwv_flow_imp.g_varchar2_table(37) := '67546BB6ED934422E159AF9515D6EFBC45BC6E14A44F0D6CC651003DA2F2A2D9DBD75B29EB61FF66B96822A077413C628E0A68B2630E18346BD5AC07010402142001081093A69616D043C65EE790D76CDA5ABB67FFD22D84676E7BDF900CADDBE4DAA199';
wwv_flow_imp.g_varchar2_table(38) := '62590AE5C66D1635B938A6E7F4CDF97ADD18BB76A68185B3854AED62427D4AA27E92A081ABA26904222E10CEEE930084735C62D5ABDAC7FE5CB687C95452566FDF1F999807D76F937C7BBB637FCDE978992A781FF1706CC0A560A65016BD727F72AEEC52';
wwv_flow_imp.g_varchar2_table(39) := 'ABB945E3B325397C6946BC92BCE6F68AB5218080970009809710E52B12D0F3C77A98D8AD919EFE2169E5E7FDDDFAB65459AEAB57FA86D72C55F4F2BCE9F9CACBAF837AA1CF1D383136E7F9498AA0D6574F3B7A7D872626532641A96739EA226083405863';
wwv_flow_imp.g_varchar2_table(40) := '240108EBC8C4A45F7A41DAB4CB4641F7FE073D0EA98791A27BC83D01982D9503DB506B12A59F2ED0E70EE8C578F578245229C9E6DB6470C316D974EB3DB2FD9E0765D7FD6F973D6F7C8FEC7BCB0FC9FEB7BE5FF63EF85ED9F9DAB7CAB6BBDE209B6EB95B';
wwv_flow_imp.g_varchar2_table(41) := '8636EF906C5BBB245329A9E74B2F80D424E0D2542194F743A82716EA2260830009800DA3DCC218F57CB86EC09CBA90331B9A8E5EEF7BEE3B2DDFAAF9EDDDFD6603E9FCBF8F6EA835F695F64FED5E9A9897F313F56D5453998C6CD877871C78DB8FC8ED3F';
wwv_flow_imp.g_varchar2_table(42) := 'FC8BB2FD2D3F266BEE7CB30CEE7F8DF4EDBA437AB61E90AE0DBBA573FD4EE9DEB25FFA77DF73C19CC400001000494441542943B7BC56D6DCF57DB2ED4D1F90DBDFFF73264178BFACDFF72A930C74F80FC39CEA396BFAAA3716D2BEFB5F909A08C45520BC';
wwv_flow_imp.g_varchar2_table(43) := '7139FF050B6F9FE9598404BC2E52EBECE9934C7B578422BADAD554262703C36BAFBE59E2BB6EFCBC625F62B19B669D9F9C979169FFB718CE77F7C8CEFBDE22AF321BF075F7BE5DDA576F9644AAFE3B2A26D259E958BB4DD6DFFB0EB9EDFD3F2B7A84A0BD';
wwv_flow_imp.g_varchar2_table(44) := 'BBF7A6FE39CDD01B0B9D337D772A673E0208B45E8004A0F56310EB1E785D1DDED113BE9BFEF819904432295D0343AE550B7A35A06B0DF7C29199A2E867FCDD6B5D2DD543F67A88FFC0BB7E42FAF7DC25A97C1D7BED579B70FCAECF44D02304FBDFFD13B2';
wwv_flow_imp.g_varchar2_table(45) := 'EDCED78B9E5270ACBCA040FBAE1F895C308B9708582710E6804900C23C3A31E89B7E64CD2D0CBF1B13B7365A5596F33872B192EDFF6CB122E7CCA1F48A39A4EE155FDF9AF5B2FBC11FA81DE24FE59D3F9DE0D58E577932D72643B7DE2FBBDEF85EE91E5A';
wwv_flow_imp.g_varchar2_table(46) := 'ED55BD761D805EB7C0A7033CA9A880404B0448005AC26EC74A0BE5AAE7637F93CB383C1D16BD742E2F924C3876A7EAFBDEBB8B9BD00B278F8FCE8A57F2A44BADDEBE57B63FF8BF9843FD5BF46D53263D35B0EBCD1F90A1CDDB3DD7A7098C3E4FA0B0926C';
wwv_flow_imp.g_varchar2_table(47) := 'C8732D544020AC02E1EE170940B8C727D2BDD35BC57AFDDD4F453901C89A04C0658474E3E752EC58A47BFE7A11A163856B055B5EFD806C7EFDFB023DDC7FAD69CF1F2973F463DB831F902D77BCD6B3AEDEA550EF56E859910A0820D054011280A672DBB5';
wwv_flow_imp.g_varchar2_table(48) := '324D00E65D328084D97B4E2453914549A533924C381F01D0C07C1CC1D76A2F4F93F365B932EB7DD1DFE657DD27AB6E7BDDCBCBB5E485897DD56DAF971D773EE0B97ABD3F80C6E6593124153479D323313AE9EF7148BA4537222610F6EE9200847D8422DC';
wwv_flow_imp.g_varchar2_table(49) := 'BFA424CC06521CBFF44AF9E51E26776CB48905D5AB0138AE5153039D1C2BDC50A01B9ACBD305D18DCF0D458BDEAEDD794056DDDAE28DFFF51E9924A06FEF3DB276D781EB7396FC59A9885C982C2C59D6AA997A8A65A658AE3DA5F2ECC4BC9CBA3257BBB5';
wwv_flow_imp.g_varchar2_table(50) := 'B1DECBE0C8C84CED8E8BB5D797676BAFF55486D6D1BAFA1C065D56DB6855FF592F022B1548AEB4019647C04920697EBB7229F3CDA982D98056CAE1B9A5AD53379DE6574A6663ED769EBF9EADBF59C9C84C496AB74D36AF9DFEE9057FEB5EFDA02452E139';
wwv_flow_imp.g_varchar2_table(51) := '7292CCE464ED1D0F4A8FD7DD110B65D1BB193AC5D68CF99A5CE9458997A78BB50DBE3EE6F8F49579B934559431E3AF77AD9C324761660B15D18F71EA345BAC88CED332ADA37575194D0E3421D0B6F43487F9756E4608AC233202E1EFA8CB5FE7F0779E1E';
wwv_flow_imp.g_varchar2_table(52) := '865B209548482AE9BE15AC941A73CF7C69C257A9E87EA85EE3F7DB0DDDFBBFE0F1B9F95C47A76CB9FF5DA2E7DFFDB6DBAC7A69BD26E0F5EF957436E7BACA561D05D08DB36EA88F5C9E9143176744AF49D064CBE50C956B1C5AA84735B40D6DEBA069F3A8';
wwv_flow_imp.g_varchar2_table(53) := '396A303A53AC7DFA41CB991008BB000940D84728C2FDD38D7F36E5910054229C0014E6C4ED78BDC6EF77F846CCDEA7D7C668CB9D6F906CF780DF269B5E4FFBB6E58EFB5DD7AB7BCACD3C0AA01B7EBD9FC2C14BD3B58DBEEECDBB76700585D3E6A8811E19';
wwv_flow_imp.g_varchar2_table(54) := 'D0758D9A44408F36ACA039168DB84014BA4F021085518A701FBD3682F35313918D6E767CCCB5EF698FA31F0B17D60DC6C2F737BECE757449CF16F7F3EC372ED38AF7BDDB6F93F6DE3ED7556BAC7AC4C3B5D20A0BB57DBD09D1A14B3372667C5EF461452B';
wwv_flow_imp.g_varchar2_table(55) := '6CD2F7E2BAAED3669D2F9AA30D9AEC709D806F3A2A365920D9E4F5B13ACB04B229F75FB1E9892B9114A9964B323E72C1B5EF5E473FAE2FAC1FF9D33DE3EBEF97FAB976CFED12A6F3FE4BF551E7A5726D32BC658FBE749CA60A652994EBFD7C8463733715';
wwv_flow_imp.g_varchar2_table(56) := 'E8C3A74E8ECDC9C92B7352736DDCAA6E5AF7CB33CC3AF5FA8153D7FAA17D7AB98C1716084423C46434BA492FA32A904BBBFF8ACD4C4F4A617A2272E195CCE1FFF1D1CB8EFD4E9B531F6D197F17EA4D154AAEE78D73E6DCFFE0AE3B1CD715B682FEAD07A4';
wwv_flow_imp.g_varchar2_table(57) := 'ADABC7B95B66E338639200E70ACB2FB9325792E3A373572FA634EB597E4BC12D393957367D9A153D22115CABB484C0CA05DCFF3AAFBC7D5AB05C40F782336663E8C4303F3B2BD3579C37A44ECBB57AFECC951171FB0483C69D4F7BFFEFA5E789C767DD3F';
wwv_flow_imp.g_varchar2_table(58) := '0931B861ABA4DA3A5B1DB2EFF5677A06A46FED46D7FA532601D0F3F3AE95EA2CD473FD27CDC67F4587DC130949A6D392696B97B6DE0169EB1B944C7B8724321959C9975EDFA14725B48F2B698765A32110955E7AFF858A4A24F4339402C964423AB3CE7B';
wwv_flow_imp.g_varchar2_table(59) := 'C2BA119D18B918CABEBB756A72D4BDCFBAF1774B7CAEB7AD1BABC979F70B21BB566FBA5E3D123F13C994F46FDEE3DAD79942E5EAE179D75AFE0BCF4F16E4CC9579FF0B5CAB99C9E565F5DE57CB2DEFFF45B9E723FF4DEEFBF54FCA6B7EED9372F7BFF984';
wwv_flow_imp.g_varchar2_table(60) := 'DCF1CB1F953B3EF26772F7BFFE84DCF76B7F5B2BBBE723FF550EBCFF1764D59E3B24E97127C86BAB58F443FB78CEF475D14CDE20D02201128016C1DBB25AFD0C40773EED1AEE95CB17A41AA14F0314A6C765ECD279D7983A5C929E850BEA396A3D0AB070';
wwv_flow_imp.g_varchar2_table(61) := 'DEC2D71DBDFDD23EB86EE1AC48BCCEF50E4B3A9375ECABC6AD9FC777AC5047817EB450A73A1691AEE175B2E34DEF973B7EF18F64C78FFFA6F4DEFF01C96EDC2FA9DE3592EC199664D7E082694092DDC392EA5B2BD98D07A4EFFE1F969D6699BB3EFC47B2';
wwv_flow_imp.g_varchar2_table(62) := 'F3FB7E443A879C1F0BBD549F2E9A04E0DC44FDC9CA526D312F8C02D1E953323A5DA5A75115E8CCA5C41C5975EC7E616E4ECE1F79D6B13C6C0563674FCADCCC8C63B734D676BF09801E1B766C49A4DB6C5CB23D832E35C259946EEB90C14DDB5D3B57F088';
wwv_flow_imp.g_varchar2_table(63) := 'DD75E16B8517A60AA27BFFD7DE7AFE489943F97BDEF9E372CBCFFE2759F39E0F4B76C37E49B4757B2E776385447B4F6DD9D5EFFA79B9D5B4B5E7FB7FDCF31E080BDBB838550CDD9D1117F68FD776089000D831CE2D8D326D4E036453EEBF6A678FBF28A5';
wwv_flow_imp.g_varchar2_table(64) := 'F9D996F6D3CFCAE7A7C6E5DCC963AE5535E1C998985D2B5D2B2CB9EDFE9B3A5DABD68B6BF624E1FC4AA4B3D2B7C13D01F08ADD2B32BDA8EEFC84BFDB0BEB2728B6BDFE3D72CFAFFE8D0CBDE5A724D51FDC5195D4C07A197AEB4FC9DDFFD75FC896D7BC55';
wwv_flow_imp.g_varchar2_table(65) := '92A99457D76BE59AB84CCCB99FFEA955E45BA404A2D459F7BFCA518A84BE865AA0AFCDFD3440C5EC0D5E3C7128D43168E72E9D3828C582FBE1DB1E73CA23E53301D06B00B45DA729D7DDEF5414FAF9F9DE21D73EEAC71F5D2BB814EAA708F4A23A972A2F';
wwv_flow_imp.g_varchar2_table(66) := '1775AFDE583BBFBFEE07FFA5A47A56BD3C3FE8172993546CF8915F95BB7EE98FA563C0DF7A348699A2FB45A041F793F610B82E90BCFE829F083452A0BF3D235E1F093C77E2884C5E3ADBC86EACA8EDD9D10B72E1A553AE6DE886BFD72400AE9516147A25';
wwv_flow_imp.g_varchar2_table(67) := '002997F3E80B9A09E54BAF8BE4F4663DCBE9B89E3A38E5F382BF35FBEF91033FF31F25B3CEFDA2C4E5F4C36999ECA65BE5B65FFC1359B3EF4EA72A2FCFD703407A61A0C6F4F24C5E4458205A5D270188D67845B6B77A45FC40BBD75180B29C39FCB4CC4F';
wwv_flow_imp.g_varchar2_table(68) := '85EFE640C5B96939F4F843A2472ADC06617557D6F3F9070B972FE91660E18C85AFF562824474FF174DA6DC3F3AE716FA428685AF7519BDE04F2F225C38FFC6D7896452763CF843B2FD43FFAE76F1DE8DE58D7E9FEA5B23DBFFD96FCBB6D7BF57B42F6EEB';
wwv_flow_imp.g_varchar2_table(69) := '9B2D566AD703686C6EF52843206881E8FE75095A82F61A2ED0678E02B467DD7FE5A6C6C7E5D40B4F48B9E87E98BDE19D5DB002BDE9CF51B3F12F163C1EFE630EFB0F9818172CEAFA52EF5363CE7C38D64998F61292702C0F7D41D29C0B4F388FF7728E00';
wwv_flow_imp.g_varchar2_table(70) := 'E839F3D119EFF3E65B1F78B7AC79CF2F4922DFD932A644B65DD6BDEF23B2F575EFF1EC83C6A44F1BF4AC4885500B44AD73CEFF77462D12FA1B7A01BD1870B023EBD9CF2B972ECAA967BF67EAE926D2FC68E1BF6AB924C71EFF4799BCE27EDF7FDD4EAFED';
wwv_flow_imp.g_varchar2_table(71) := 'CE4A22C0ED75557709036CAFE98C2681715B6742126EC53795E9E992F31E4F4CD485D6DCFA5A59FBAE9F1309723064995FA60F6BDFF50BB2F6B6073C1BD0D874C83D2B520181800448000282A4197F02DDF994E855F25EB52F9F3B2347BFF72D29CD3B7F';
wwv_flow_imp.g_varchar2_table(72) := 'DCCEAB8D9596EB9EFF91EF7D53C647473C9BD2CFFDF77A5CE8786323BAF94BB9FD1F58AD9A530EDE7BBB37B61B96F7553D8A53AD3876C76C1B1DCB962A189D2DCA7CC93D291CDC718B6CFBC0BF12DDFB5EAA8D56CC4B6472B2F503FF52FA37EF725D7DA1';
wwv_flow_imp.g_varchar2_table(73) := '5C952B2646D74A148658207A5D73FBF313BD68E871E80552E6AFFE1AB3A7ECB173588B63F4E23939F6C4C3323BDEFC5B05CF4D8EC9C147BF2A57462ED5FAE2F62D658259D59995A489CDADDE5265BAEC52F3AFCFAB94DC4F3B5CAF17C69FE539F7E4AD1E';
wwv_flow_imp.g_varchar2_table(74) := '2E930BC9E569778B442A253BDFFFCB92EC1A081D47B2B35F767FE8FF96643AE3DC3793DBE87D0D3456E74A9420109C0009407096B4E453A03D939235DD395F476875EFFBC8138FC8F8B9933E5B5F59B5AAF9EB3B71E1B43CFFC8D764766ACA57636B4C42';
wwv_flow_imp.g_varchar2_table(75) := 'D39533E7BB7DD55E5CC93301D0BDE8C58B44E65D69D6DD4F9341BFC18C993D637DCCAE5BFDED6F789FA4576F73ABD2D2B2F4E026D972DFDB5DFBA031722D802B51680BA3D8311280288E5A0CFA3CD891912133F90945EFBA77F88947E5E4D38F9A53028D';
wwv_flow_imp.g_varchar2_table(76) := 'BB59905EE97FEA996FCBA1C71E9672C9DFA177BDEABF9E0BFF6E8CD7EB8641E5B9E91B1789CCFBA24702A0D784F809C6EC18CB258FBDFF643A2DC3AFFF113FCDB5B4CEEA073F28997C9B6B1F2E4F17C4E4A1AE7528442008011280201469635902ABBB72';
wwv_flow_imp.g_varchar2_table(77) := '32E03309D0155C3C73529EF9E617E5D2D1E7A45A713EB7AC75EB992AE630FBC563CFC9935FFFBCE83AFC2EDBD79E96555D59BFD597ACE775DA607AACF9A73F96EC689D33ABE6DCFFF4C805D7A532A9846BF9F5C29239373E57741FEFADF7BF5B52BDABAF';
wwv_flow_imp.g_varchar2_table(78) := '2F12DA9FA9FEF5B2F9BE77B8F66FBA5011D78F87BA2E4D616B04A2B9561280688E5B2C7AADE780579B0DA86E48FD06542A16E4C4A167E58587BE24178F3D2F5397CF2DEBA840D9B4333D7A41CE1E7A4A9E7BF8CB72F2E0B322755C82AD89CBC6DEBCDF6E';
wwv_flow_imp.g_varchar2_table(79) := '3BD66BCBB8FF2F3871F125294D8F3B2E1FD682F2CC948CBDE47ECBE46CCA3DF6EBB14D15DC8FC6B4F50DCAF0FD3F78BD7AE87F0EDEFD4E69377D76EBE87481BB03BAF950168C80BFFF03835917AD207093801E065ED79D93A1CE8C68427053058719D393';
wwv_flow_imp.g_varchar2_table(80) := '1366A3FD8C1C7EE26139FAC443F2D20B8FCBE8E923B53B094E8D9E9799B14B327BE5B2E80584336317656AE4BC4C5C3853AB73F6E01372F4B16FCA8B8F9BE58E1E94B9A94987B52C3D5BFBAA7D5EBAB4BEB9BA114CBAFC5F387EF19CCC8D9CABAFD110D4';
wwv_flow_imp.g_varchar2_table(81) := '9E1B3B2F5363A38E3DD1BB42E63D921F5D5873B28939F78DE1F08EDB243DBC45AB4762CAACDD25C3BBEF70EDAB3E225A6377AD44616804A2DA11973F3D510D897E474D20954CC85A9304ACEBC989DBC670A9B8CAC5924C8C8E883E4CE8E8338FC9C1EF7E';
wwv_flow_imp.g_varchar2_table(82) := '4B5E78F41BF2DC235F93671FFEAA3CFBD057CDEB7F9017BEFD0D736EFF21D13A2F1D3B5CFB689FD78D7D965A9F5EF0A77DAD275959AA9DEBF33401EACEB9DF2171DC634FFA7A5B61FA79C524636EFD69CF26259FF6FEF35332A77AA63CF686FBF7DEE3B6';
wwv_flow_imp.g_varchar2_table(83) := 'AA50960DECBBD7B55F93F36529BADD25CA75690A11F027E0FD7FA0BF76A885C08A05F462BA1D03ED924EF93B374FC90A910000100049444154BCE215D6D1802629DB07DB64B8335BC752DE553591E8F67876C0C56307A53C53DF510AEF3537AE46696A4C';
wwv_flow_imp.g_varchar2_table(84) := 'C6CE1C775D4147C6DFA726F473FF7A0D8053635DABD649DB86BD4EC5A19D9F5BB75B3AFA9D1F9654D4EB1E4AEED73D843638EB3A16DD8093D1ED3A3D8FA3801E16DE39D82EFDEDE9BA4E0934D242CFF7EF1C6A13BDD94F23D6D3954BB9C63A3F3B2D979E';
wwv_flow_imp.g_varchar2_table(85) := '7FB411AB6E489B970F3E26D3E3CE87FF35E9E93431FB59B93EF5CFADDEC0D6FD92EA0BFFC57F37C690EA1E9281EDB7DC387BD17B7D46C0A219BC4120600112808041696EE502197304607D6F5E76984440378ED2820302BA91D20DFED68136D15313D954';
wwv_flow_imp.g_varchar2_table(86) := 'E3FE57499B5320EDD9942BDC99E71E97287C24B0303122E78F3CEB1A4BB739E5E1D7B3E47122BC6BE31E09D35DFF5C035F5098C87548CFE67D0BE6DCFCD22BF69B97604E2B04A2BCCEC6FD558BB20A7D6FB9806EF3F50AF92D6603BCA62B2BD9B4CE694E';
wwv_flow_imp.g_varchar2_table(87) := 'B7B2A984ACEFC9C99681BC74E5524DC93F06DB33AEC1E9A71F2E3CF9CD403FFEE8BAC265169E7DFC1B9E1755EA3D2034C1F2B30AAF0706E587D6FB69269475F2431B5CFB55F1487E5C17A610011F0224003E90A8D23A01DDEC0F9BF3EE7A3440371C29B3';
wwv_flow_imp.g_varchar2_table(88) := 'B7DCA8DEE89EF8706746760EB74BBFD920A7FC6EA502E8504F5B5AF4C8875B53A79E7F5C66CEB97FB4CE6DF946974D9E79D1ECFD3FE7BA1A4DEAFC1EFED786BCAE834BB5756BB5484EA98E5ED77E97B91B90AB4F380AA3DD0B1280688F9F35BDD78DB31E';
wwv_flow_imp.g_varchar2_table(89) := '8ADFB7AA43B60FB6897E142F17C05101DDE86A5BDAE6DED51DB55B143773C37F7D0035D159DB9D13D7C30D958A1CF9C7CFCBFC98FB0D76A4055FF397CFCAE1AF7FCA73CD7ADF07CF4A0B2A786D041359F7BBEA2D682A742FBD12000E00846EC862D72112';
wwv_flow_imp.g_varchar2_table(90) := '80D80D69BC03D29D723D37AF1BCBED83EDB26BA85D343118347BEEFDED69D127F2F5E4D3B543F7BAA7A953573E25DD66D232ADA31B7CDD10E9465F97D7B6B44DDD08B752AFDBF4BBDB9C7270EBC3ECE4849C78F8EFC4EB413B6E6D045D569E199713DFFE';
wwv_flow_imp.g_varchar2_table(91) := '9214E7E65C9BEE3263D06D6274ADB4A0506F01ACD382598B5EEAC37F12F57E6E74510B2D7E93484AC24C6EBD708BDF6D39CA9A2310F5B524A31E00FDB757408F0AE8A706F4D480DE9867436F5E36F5E565737F5EF4E2BD97A7FE36D962262DDB60EAE806';
wwv_flow_imp.g_varchar2_table(92) := '5F6FE1AB1BFD469E52A87764F4EC867EE240931CB765C7CE9D96530F7F4EF476BB6EF59A51562DCECBB9C7FE41C6CE9D715D9D6EA7873AB2AE75962A744FCA22BE79D481760F503C8A9722631E02BE0548007C5351316A02FAC753A728F5BB3B97AE5D7F';
wwv_flow_imp.g_varchar2_table(93) := 'E0D5E70BC70EC9C9AFFF4FA996DDEF92E7D5CE4ACAABC5829C7AE40B72E6D0339ECD685C5D1E47376E6C44C74E93A21BE75F7F5F2D57A45A695DFCD7FBB1EC9FE6944ED54C4ECB6B7EE054C6FC300844BF0F2400D11F43228899809E9ED06B13BCC23A7F';
wwv_flow_imp.g_varchar2_table(94) := 'F47939F8B9FF2EC5A931AFAA8197172747E5D94FFF173977D8FD237FBA623D4AA3A769F475BD53D2632B582D15EA6D3234F52B73EE3777F28A3D3481D091C80A90004476E8E8785C05F4D4C666732A430F9B7BC5387EE99C3CFFF98FC9E4C917BCAA0656';
wwv_flow_imp.g_varchar2_table(95) := '3E75FAA03CFBB98FCAF415EFC4236976E3379AD32E1AD3723AE0758AA63C756539CD866299D284FB931E53C62E141DA5134B0AC4612609401C4691186227D09E4DC99AAE9C78EC00D7E29E9D1C9743DFFCAC9C7FFC6B529C181169C4C7C74C9BC5C93139';
wwv_flow_imp.g_varchar2_table(96) := 'F7DD2FCBC1AF7F46E6A7A76AEB76FD663660BAE7AF1FFD73ADE752E8B5119CBB7CDA65E97017CD5D72EFFB7293A670474DEFC224400210A6D1A02F082C1018ECC8485F5B7AC11CE797A5F97939F1F843F2C2173E2EE7BFF715991F392BD5B2FB63749D5B';
wwv_flow_imp.g_varchar2_table(97) := '7BA544DB288C5F960B8F7D555EF8E2C7E5E4538F8AAEEB951ACEAFF4D90EFDEDEE3738725EFA6A4926E5FE276AF2D421A916DD3F7D70B5A5707DAFCECFC884C7511BAFD8C315916DBD8947BCEEFF77C52346A24020B202EB7BF2D2954FF9EEFFCCD4849C';
wwv_flow_imp.g_varchar2_table(98) := '301BE927FEE7FF2BC7BEF63732FAC2776A4705DC2E36BBA971B3B75FB872C92CFB6D39FA95BF96273FF99FE5F8938FC8CCB8FFC3ED7ADE5F3F6D7153DB75CEF03A7A3072F429298F9DABB3D5D6572F4F5C924B2F3EE9D8113D75924FF3E7D91188824004';
wwv_flow_imp.g_varchar2_table(99) := 'F80D0B849146EA15D00F7099ED8CE8CD4EA23A69FF358E7A63AFA7BE9E02D8D2D726FDEDFE8E04C882AF4B275F94C30F7D491EFBC41FCB939FF84F72CC6CCCCF3FF635193BFCB84C9F3B2AC5C951294D4FC8F4D9A3B5797A78FFC8DFFF853C65EA3EFE37';
wwv_flow_imp.g_varchar2_table(100) := '7F6296FD7BB97CFA9854CA9505AD7ABFD4BE6E1F6813DD8879D776AF91354700722E1BC2C98BE764FE4278EF8EE8145DD19CBA9819BDE4542C9A40655DE2765C9082A608C4652524007119C910C7512855E4D254414E8CCDC9E1CB3372F0E28C3C7F615A';
wwv_flow_imp.g_varchar2_table(101) := '9EBD3025CF9D9F9267233A3D73ADDF872ECDC8F1D159393B312F233345992A94A5AC594D4063A249C0FADE7CEDEE87CBDDA8CE4F4DCAC51387E5C4130FC98B0F7F490E7DF553F2BC395DF0FC173E2A07BFF6C9DA3C3DBC7FF9D451D19B0D2DA7EBDAB775';
wwv_flow_imp.g_varchar2_table(102) := '3D39596F8E5AA4F4CD721AB96199742A51BB89D30DB317BD1D7DEEE145EFA3F066EC85475CBBA9D780644DECAE952844608502C9152ECFE2082C2950307B8DA3666378D26CF48F8C988DE36441C6674B325BA8C8BC49084AE5AAE847A0753B59DB9336BB';
wwv_flow_imp.g_varchar2_table(103) := 'D251FCA931CC152B32315736494E515E1A9F178DF9C5CBB3A2714FCC9502B9262F6194F590BA2602D9B4BE333396F9AF522A49616EC66CE8C76B87F58B7373A2F396D95C6D31FDD8A2DE6849AF5BD084A53633806F1A6957CEFDE8C7A5838F49F9CAF900';
wwv_flow_imp.g_varchar2_table(104) := 'D6D69C26CA2367E4E2F3DF715D59B747CCAE0B53D86081F8344F02109FB10C452415B3151F992ECA11B3013C7D655EAE988D7ED16CECC56CE043D1C10677C2842F9ADC6892333D5F364706E66A09811E150862D57D6D69D9644E09E85D0C83682F8836F4';
wwv_flow_imp.g_varchar2_table(105) := '3CBDDE7DB1BB8EDBFCD6B35E6DDF2DA998BA7C5E461FFD743D4DB6B4EEE8773E2B13E79D3F01A0B16ACC2DED242BB7428004C08A616E4E90BAC7AF87F7CF98BDE0DA46BF39AB0DFD5AC6CD5180A326213A6C4E15E811819576B83D93147D8EC1A6BEBCE4';
wwv_flow_imp.g_varchar2_table(106) := '56783460257DD1F3D41B4D1F760EB54B7BC6FF858AF5AE336D4E27E82171B7E58E7CED13529D75BFB18EDBF2CD2AAB4C8DCAE1BFFF4BD7D5697297D22CC0B51685AD1288D37A4900E2349A2D8AA5648EE3EBF9EFD3668F9F0DBFF320CC9A53057A7AE098';
wwv_flow_imp.g_varchar2_table(107) := '3925128453AF391AB07BB843B60CE4A523D7B80DF08D11759A756DEACF8B6EF8F588C48DE58D783FE8F171C2E2CCB45CFCCA9F3662D581B679EE8BFF55CA45F7BB170E75647CDDFF21D08ED19895022400560E7B7041CF99F3F9C746676BE7BF836B35BE';
wwv_flow_imp.g_varchar2_table(108) := '2D995C49266BA7066645ED828854CF176F317BE2DB06DA449382A08F0AE8CE682E9DACB5BDC56CF8F5707FAF39DC9F08A2F33EDBD0B8BC0E8B1FFAF25F4BE194F773097CAE32F06AC57387E5D8B73EE3DAAE1E5569D4A914D71553E853205ED54800E235';
wwv_flow_imp.g_varchar2_table(109) := '9E4D8D666CB6282F9AC3DA7A615F53571C8395E9D180172FCF885E2C1944387AD57D6DCFDC24025BFADB64436F4EFADAD39249256A1FC7D38DB8F8FCD2BAE6A8BB64CDE9855E7394617D4F4EB6F4E7454F39E8C629A5157CB61564B5A1CEACFB9E71A522';
wwv_flow_imp.g_varchar2_table(110) := '07FFEA77A43C7636C8D506D2965EA4F8FC477F55AA2E0F6F52D65526C64056482308F8102001F08144959B05F4423F3DD7AF7BB43797FA9863FEDA2512494924754A999FD19C4CC74512BA2FAC93D4F565B657A21F219C2996EB5ACEAB72CEECADF79B43';
wwv_flow_imp.g_varchar2_table(111) := 'E67A0FFE3DE614C1E6FE36D1070CE9A386BBF229D13D69FD88592A2962F86B1BFAF66CB2F671BB7E9334E846480FF1EF1EEAA86DF4FB4D5BDAA6D77A1B5DDE6B8E3A68DFDDD673E5D48B72F4FFFBFD505D0FA0D7261CFDCBDF94F133EEF72B50E31E13A3';
wwv_flow_imp.g_varchar2_table(112) := '5B7C94B556206E6B377F02E21612F1345A403758E726E76B1FE3F3BBAE443A2D9D836B64CDEEDB64EBDD0FCAAEFBDF217BDEF81ED9F7C6F79AE9DD919DF6BEFE9DB2F3356F91CD773C20AB76DF215DEBB6492AD7EE97A5667862744E668B15DFCBD45351';
wwv_flow_imp.g_varchar2_table(113) := '73932E73CE7ED8EC59EA9EFC56930CEC186A97DDAB3A64DFAACEDAA4D7116C1F6C377BF96DE6C8415E567565A53B97BE9AD7D4B3B206D7D558FC3C1FE1FCD30FC9994FFF47914AB089D5B2C22B97E4D4DFFC8E9C7FEE3BAE8BD762EBF638C2E1DA028508';
wwv_flow_imp.g_varchar2_table(114) := 'D42F90AC7F1196B059400F59EB06AB5CF1A7D0D6DD2B5BF6DE2AB73EF036D973E76B65FDD65D32303028DD9D1DD291CB485B366D26FD19CDA9A32D2F3D3D3D32B46AB56CDCBA5D76DF7A871CB8FFFB64C3FEBB24D7DD2F7EBEF482C01363B37EAA065227';
wwv_flow_imp.g_varchar2_table(115) := '615AA94DE69B1EEA373F4427333BF4FFF462C7C18E8C673F8F3FF40539F9E7BF2A9569FFB72FF66CB4CE0ABAE77FE263FF464E7EFBCB9E4B6A4C5D26E9F2AC4885160AC46FD52400F11BD38645A49FF13F375110DD6079AD249DCBCAC6DD0764F79D0FC8';
wwv_flow_imp.g_varchar2_table(116) := 'E0E6DD92C99BBDE2840DBF6E09C96473B27AE316D977F703B2F9D67B24936B13AFAF42A95ABB6782573DDBCB3551D16B01DACD290B578B6AB5B6E17DF14F7F594A974EB8566D446179E4B41CFCCF1F9653DFFB9A787D692C431D66EFDFAB22E508042C60';
wwv_flow_imp.g_varchar2_table(117) := 'C35FE480C9EC6D4ECFFBEB8D7DBC04B2F9BCEC7CD57DB26AEB5E49FBD8F879B517D5F254262743EB36C9CE7BDE28D98E4ECF30F4B48AD96E79D6B3BD42C61CB6D8D09B173D6CEE6571E1D053F2DC7FF988CC1F7FC2AB6A60E5FA4984A7FFF897E4D29167';
wwv_flow_imp.g_varchar2_table(118) := '3DDBD418D6F5E46A176B7A56A6424B05E2B8721280388E6A03622A9B2DD3F949F7CF2FEB6A3BCDA1FD7DF7BE513AFA86F52D931168371BFFBDF73C286D5D5DE69DF33F3D0A7079A6E85C81929705F2E9A4AC371BCE9767B8BC183F774ABEFDFB3F2DA7FE';
wwv_flow_imp.g_varchar2_table(119) := 'FCDF36F496C17AA5FFA9BFF83579F477FFB94C5E70BED3DFC2AE6EE8CD35F4264A0BD7C56B046E1448DE3883F7082C25A01B7FAF2BFEB3F99C6CBFFD35926E73DFD02DD57EDCE7657279D9F6AAFB25DFE16E7379BA10D84703E36EAA9F4E18EECAFA0EF3';
wwv_flow_imp.g_varchar2_table(120) := 'C4235F9287FEF50FC84B9FF84DD1CFE4FB5ED0A362F1EC4139FD57BF2E0F9BB64F3CFC77E2F7E10F439D19E96BCB78B44E713804E2D90B1280788E6BA051E99DFEF4F0BF5BA3E9745A76EEBF5D325DFE2E7C736B2BAE656D66E3BFE996BB5CC3D3A3005E';
wwv_flow_imp.g_varchar2_table(121) := 'D6AE0D585638DC9191DEB6B4FFA8AB1539FACDCFC8937FF80B72EC4F3F22E38F7EB276F3A0CAF498F8FDAACC8CCBFCC9A765FC91BF95E3FFFD97E5893FFAB01CFFC7CF9BEDBECF2B63CD8AB4CFFA714BF3927F08B44C8004A065F4D159F1D86CC9FC7173';
wwv_flow_imp.g_varchar2_table(122) := 'EFEFA66D3BA46D78937B254AA5BB6F5006D7AC7795B8345DACDD2D503F71A1C95754277D24B2D7512357081F85A964A2762A40F7A67D547FB9CAECC4989C79FC9BF2D4C77F479EF87F3E2C473FF66FE5C2E7FE5026BEFBD95A42503C7B484AE78F98E9A8';
wwv_flow_imp.g_varchar2_table(123) := '145F3A28B3071F9289EF7C5A2E7EE18FE5D8C77F559EFC938FC8537FFEBB72FAB16FC89C69EBE5867DBCD0FB31E8E90BEDBB8FEA540981405CBB400210D7910D30AEE982FBE7A9BBBB3AA567D3EE00D718EFA636ECB95DD2E61CB65394D5AA88DE5EF9C5';
wwv_flow_imp.g_varchar2_table(124) := '4BB3A2770B3C727946A23869DF0F5F9A167D08923EFF409F157161AA50FBB4C38CF99DD24F953819D4335F37A46BBB73B59B1DD5B3FADC009A0000100049444154DCF5BAF3D35372EED9EFC8A12FFEB93CF9D1DF90477FE727E591DFFCA766FA2757A77F';
wwv_flow_imp.g_varchar2_table(125) := 'FF21F9EE1FFDEFF2E4FFF8F772F00BFF43CE3EFD88CC4F2EEFE385ABBBB3B58445FB7C7DFDFC44A055022400AD928FC87AF50635B31E77AA5BB36DAFA4D2D98844D4FA6EA6F2EDD233EC7E14401F9FAC7BFE7A4A60BE5495284FFA3B34395F167D5AE4F9';
wwv_flow_imp.g_varchar2_table(126) := '8942EDF1C8C7C7E6E494996A4797021A12BD81D1E6FEBCA402FAAB56AD54A41AD0CD8452E64885F68DC3FE010D76539B89EFCA02FA5F25BE40B647366336FEBA117272C86432D2B5CA6363E6B4B085F3AB8559993E7358E6465EB230FA57422E95AB323E';
wwv_flow_imp.g_varchar2_table(127) := '57AE2501872ECE98D7A5570A57F04A6FA5BB6DA05DF41CBB7EC46E054D05B2A8F6A1AF3D2DFAA026ED5B208DD20802010924036A8766622A30EB718BDADEA155924865621A7D8061993DC9D90B27E4B83967FCC2D34FC8B4D9230EB0F54837355FAA88DE';
wwv_flow_imp.g_varchar2_table(128) := '5D529F8B7065AE242B3D35A0CF0BD8D09BAFDDDAB83D9B9444A2F93CBA4E7D3893DE7A797D4F5EB44FCDEF056B0C4220CE6D24E31C1CB1AD5C402F44736CC51CD6ECE9E7F3FE8E3ED70AAA735372FEB96FCBA127BF232363E3D7E6F2E3468139936C9E34';
wwv_flow_imp.g_varchar2_table(129) := 'A705F421539A14DC585ECF7BF3AB295DB994E8330E369A64A0991B605D97AE5337FE9A04685FEAE93B75116896000940B3A423BA1EBD92DBA9EBE9544AF45EFF4EE5CC17294F5C92A3DFF9AA9C3E7DDAD72D94AD37AB8A8CCD946A1741BA269F3EA174E7';
wwv_flow_imp.g_varchar2_table(130) := '5F4F07EC1C6A177D9CB13E4B40F7CE7D2EEEBB9AB6A94F5ADC3AD026BA2E5DA7CEF3DD0015432A10EF6E9100C47B7C571C9DDBC7B892C994A4F3ED2B5E475C1B288D9E91C3DFFB47199B9A8B6B880D8B4BAF3B39727956BC3E81524F0774A3BCDD6CA0F7';
wwv_flow_imp.g_varchar2_table(131) := '0C77D492013D379F4E25EA6962515D5D56DBD08BFBF6AEEA10DDE3D7A30E8B2AF10681100B90008478705ADD35B333E6DA85642A29C90C57FF2F85541C7D495E7CFA31999A2B2C55EC3A4FF71C93E6FFCC7C6797740EAC92EEA135919C3A07579923447D';
wwv_flow_imp.g_varchar2_table(132) := '523B04BE8CEDAC3E744A4F07049904287CC66CF43519D860CECD6B42B065202F6B7B7232DC9911FD8CBE96E9A1FB8E6C4A3AB249D1D73A4FCBB48ED6DD6A96D931D8261B4C1B7A715FBA16A4B6CE142781B8C762FECCC43D44E25BB6804706904A262561';
wwv_flow_imp.g_varchar2_table(133) := 'C513FEEA132C4D8EC88BCF3E2E5333FEF7FC93D99CF4AEDB2C9B6FBF4F76BFEE9DB2FFCD3F287BDEF06ED9F5DAB7CACE37BC4776BDEDC7A235BDE9876A7DDFFDC0DB65DF9B7E4076DCFB66D970EBBD32B0ED80A4DBBB4434CB11EFAFEBD705CC95FCDF65';
wwv_flow_imp.g_varchar2_table(134) := 'CFBBD5AB35B40BB97452BA736919EAC8C89AEE5CED33FA7AAA40AFDABF3AB5D7AEE0D7797AF31EADA375BBCC325993006B1B575BE33B02D1134846AFCBF4B859025531FFB92601CBD8AD6B56E75BB49E72B924879FFCAE4C4FCDF8EA41477B5E76DDFD3A';
wwv_flow_imp.g_varchar2_table(135) := 'B9FD5D1F925D6FFDA0ACBEE38DD2B3FD3669DFB04772ABB6486668A3A4BB072595CD476BEAE891CCE046C9ADDE2A1D9BF6C9C0DE7B64ED9D6F92EDAF7F8FDCFEDE9F94ED773F281D5D3DBE8CF448C0F19159D1FB22F85A20A04ABA71D729A0E668267202';
wwv_flow_imp.g_varchar2_table(136) := 'F1EF300940FCC778D911BA6EFB97DD6ABC173CFED4A3323DE97DA57F269F97AD66AF78DF0FFE9CF41D784032BDC37E778A230BA8E9A26E50536D1D32B8FF5ED9FBBEFF4D76BEEEFB25DBDEE91953A15CADDD48C8B322151040C0B70009806F2A2A22E02E';
wwv_flow_imp.g_varchar2_table(137) := '3079F99C8C9DF7BEC14FF7D05AD9FFCE1F97E17DF748D2ECD9BBB71ADFD2543A2DFD3B6E97FDEFF8A0741A13AF482F4F17A511A702BCD64BB99D0236444D0260C3281363C3052A85393977E439CFF5AC5ABF41F6BCED4725D733E859D7960A5963B1EB8D';
wwv_flow_imp.g_varchar2_table(138) := '3F20031BB6BA86ACA702340970AD44210208F8162001F04D4545049C05C62F9C96F1D111E70AA6A46F788D6C7AF0872561F15EBF6158F25FA6AB4FB6DCFF6EE959B765C9F2EB33AFCC96444F075C7FCF4F041A236047AB2400768C3351365040EFEF7FFE';
wwv_flow_imp.g_varchar2_table(139) := 'E451D73564CC79EF2D0FBC5B92999C6B3D9B0BD3ED9DB2ED75EF965436EBC8A037A63A3F39EF584E010208F8172001F06F454D04961418BF7C5EA6A726972CBB3E73DBDD0F4AB677E8FA5B7E3A0864DB3A65E3BE573B945E9DAD770A3C3B312F33C5B24C';
wwv_flow_imp.g_varchar2_table(140) := 'CC9764622EBA937ECCB15CAD0A17DC5E1DDBB07CB7A51F2400B68C3471364CE0E24B27A55A71FE9C7ACFEAF5D2B36977C3D61FAB86130919D87BB774B4E75DC3BA34559493A373F2D2F8BC1C1F9B93E3E67554A613A6BF67270AF2924962F4F5D1CBB372';
wwv_flow_imp.g_varchar2_table(141) := '7464568E9949DF9F33F327E7CBA2473B5C11284460850224002B046471BB052AA57999BA32E68860B667B2E1CE0725C1A17F47A31B0B52B93619185E2D5E5F7A2D40A164F69DCD3FAFBA612A373BFCA20F3BD2BEEBCFD962A5F67448DDE88FCF96E4A249';
wwv_flow_imp.g_varchar2_table(142) := '6E3419D0A4E0C2548144A0E98367CF0A4900EC196B226D804061F4BC544A25C796DBBB7AA46D68836339058B05AA66EB38F9D2311999F47F17C5C52DC4E79D2606E7CD9182172E4E8BDE12998F40C6676CC3120909405846827E4452A0307545AA55E7C3';
wwv_flow_imp.g_varchar2_table(143) := 'FF7D6B36482A9988646CCDEEF4FCE83939F2E5BF9417FEFEAF647AE47CB3571FDAF595CDAFD7C874B1769AE092F9E9F680AED00611A18ED9D45512009B469B580317989B9E706C33914C4AE7E01AC7720AAE0A94A7C6E4EC239F93A73EF731193975D424';
wwv_flow_imp.g_varchar2_table(144) := '5457E7F37DB140A95C95B3E3F3726C64A6760A617129EF10A85F8004A07E339640E09A40550A73CE87AA13A98CE4FA565DABCB8F9B04CCE1FEB9D307E5D92F7C5C4E3DF784540A7CBCEF26A325664C172AF2E2E519199B2D2E51CAAC9509D8B53409805D';
wwv_flow_imp.g_varchar2_table(145) := 'E34DB4010A54CCB1D8F982F31FE1643A2DA98EDE00D718AFA6665F3A2487BEFE49999DB812AFC09A108D9E163875655E4E9BA909AB63153115200188E9C01256E3052ABA073BEFBCD79A486724C95DFF961C88E2A5D372E49B9F91D9F9F292E57E66EA27';
wwv_flow_imp.g_varchar2_table(146) := '2C1289842492119D120911F34F96FB5595DA0392F49302CB6D82E5160BD8F68E04C0B61127DEC004CC010029949C376049730A4092E9C0D61797864AA367E5E0573E21D333CEC9D38DB1E6D24959B773BF1C78EF4FC95D3FF7FBF29AFFF36372DF6FFD9D';
wwv_flow_imp.g_varchar2_table(147) := 'BCF6B7BE20F7FDE6E7233A7D4E5EFBEB9FAAC572D7CFFF0739F0BE9F96B526C65CBABEAC403F29303AE37C24EA464BDE23705D8004E0BA043F11A857C01C0130FF1C974A24F40FB94E8E55AC2B284F5D91235FFD6B999E9EF1157BFF9A0DB2EFED3F2AAF';
wwv_flow_imp.g_varchar2_table(148) := 'FE953F97AD3FF91FA4EF0DFF44F2BBEE93F49A1D92ECE8938499929DFD12C9A96B4092BDAB6BB1E477DE2B7DAFFFA06CFBC93F903BFED5C765EF3B3E283DABFD7F7CF4FC6441A6567034C5D760C4BE927D019200D837E6441C908039021B504B7634532D';
wwv_flow_imp.g_varchar2_table(149) := '9A73D60F7D5AAE8C4F7906ACCF4CD8FBB61F933DFFE20F64E0ED3F27A9E12D9268EB1249A63C978D6C8544D2C4D82DE955DB64F06D3F23FB7FFA0F64EF3B7F5C5299AC6748FAA444BD3DB29E96F2AC4C0504AE0924AFFDE407020820D05081A9E34FCBC5';
wwv_flow_imp.g_varchar2_table(150) := '33A73CD7D139B85AEEFAF01FC9E03B7E565203FEF7823D1B8E58058D7DF02D3F25AFFEC53F94B63EEFC747EB8D83CE4E1422166578BA6B634F48006C1C756246A0C902D5E92B72E6996F8B5E37E1B6EA819DB7C96DFFC79F4976E301B76A5695E536DD2A';
wwv_flow_imp.g_varchar2_table(151) := '771893BEEDB77AC6AD370C9A2E385F97E2D90015AC122001B06AB8091681D6084CBDF81D191F737E6682F6AA6BC34ED9F523BF62CEEDF3D149F5583825BB0765CF8FFE8A746FD8215E5F235C10E845B444B99DB34800EC1C77A246A0690295A931B970EC';
wwv_flow_imp.g_varchar2_table(152) := 'B0EBFAD2EDDDB2FBBD3F23E9C18DAEF56C2E4C0F6D925DEFFB7949E53B5C19A6E7CBA2A7035C2B5188801120013008FC430081C6094C9F3E289747DDF7FE77BFFB9F4BDBCEBB1BD78998B4DCB6FD4ED9FD9E7FE11A8D3E25718AD300AE463716DAFA9E04';
wwv_flow_imp.g_varchar2_table(153) := 'C0D691276E049A2470E9E8B3AE6BEA5AB541FA5FF33ED73A14BE223070EF7BA56D70ED2B3396783539EFFC84CA25AA33CB520112004B079EB011688640796A54A63C6EF5BBF3873E2C52BB6782F0E547209596DD3FF80BE266A6170296BDAEB814BEAE0A';
wwv_flow_imp.g_varchar2_table(154) := 'D8FB9D04C0DEB12772041A2E50B87C468A2ECF4B681F5A2F1D1CFAAF7B1CBAF63F209DAB37392EA737A89A2D551CCB29404005480054810901048217305BA1E9CB67A55C76FE58DAF0DEBBE27D739FE055AFB59890811DB75D7B7DF30FBD49151702DEEC';
wwv_flow_imp.g_varchar2_table(155) := 'B2D41C9BE79100D83CFAC48E402305AA15991D1F75FCECBF3E28A97BE3AE46F620D66D77AFDDE21C9FC9000AE60880C9C19CEB5062BD000980F5BF020020D01881AA4900E667671D1B4FB7754AAE7F8D633905EE02596397E9EA73AC542857A46AFE73AC';
wwv_flow_imp.g_varchar2_table(156) := '408188D88D400260F7F8133D028D1330BB9F73B3CE0FFDC9B7B54966D0DE5BFDAE143E956D9374BED3B19942D96CFECD9100C70A14582F400260FDAF0000083448408F00CCCF39369ECE6625D5D6ED584E81BB40BA7FAD248DA1532D7D4090C9019C8A99';
wwv_flow_imp.g_varchar2_table(157) := '2F22B6239000D8FE1B40FC08344AA052954AC9F902C0642A2DA253A3D61FF376539DFD924C3B3F29B06A8EC0E8147306C25B810009C00AF0581401049C05AAE6FC73D51C0570AA9148A69C8A98EF47C0F8A5D219C79A7AF4DFE4008EE514204002C0EF00';
wwv_flow_imp.g_varchar2_table(158) := '020820800002160A90005838E8848C000208D82E40FC222400FC1620800002082060A100098085834EC808208080DD0244AF022400AAC08400020820808065022400960D38E122800002B60B10FF55011280AB0E7C470001041040C02A011200AB869B60';
wwv_flow_imp.g_varchar2_table(159) := '11400001DB0588FFBA0009C075097E228000020820609100098045834DA808208080ED02C4FF8A0009C02B16BC420001041040C01A0112006B863AF840ABDC683C78545A440081060AD0F442011280851ABC5E249058F4EEE637A572592A66BAB9843908';
wwv_flow_imp.g_varchar2_table(160) := '208000026117200108FB08B5B47F9A02E833C596EE44617E5EC62F5F90E9A909999D9991999969DFD3ACA95F2ACE2FDD3073114000810608D0E462011280C51EBC5B209034DBFF64C27C5B306FD14B730AE0E8138FC8C187BF22CF3FFC65F3F3ABBEA617';
wwv_flow_imp.g_varchar2_table(161) := '1EFAB23CFFADCFCBE9E79F1029171635C91B0410400081E608900034C739B26B49275D12805A5455A9948A5229CC996DF9ACAFA962F6FC2BE58A8C5E3C5F5BAED60CDF10400081860AD0F88D022400378AF07E91405B36B5E87DA06F2A257304A01C6893';
wwv_flow_imp.g_varchar2_table(162) := '348600020820E04F8004C09F93B5B5BA732949791E05583E8FF31506CB6F9325114000811B05787FB340F2E659CC41E015810E7304A0AF2DFDCA0C5E2180000208C44280042016C3D8D820D6F6E4A4D31C0968EC5A681D010410689400ED2E254002B094';
wwv_flow_imp.g_varchar2_table(163) := '0AF3160924CCBB2DFD6DD2DF9E11B70F05085F08208000029111200188CC50B5B6A37A19C086DE9C6CE9CF4B97391A904B2725657E7B3421586A6A6D6F593B020820F08A00AF9616307FC2972E602E024B0974E5D2B275A04D760FB7CBBE559DB27F7587';
wwv_flow_imp.g_varchar2_table(164) := '99F4E72BD381359D72EBDA4E596F12064D1C966A87790820800002AD1548B676F5AC3DCA02BAE79F34DF92E61CC1C2C9BCAD85D56D9285AC3952507BC337041040A02502ACD4498004C04986F92B16D053049A18ACB8211A4000010410085C8004207052';
wwv_flow_imp.g_varchar2_table(165) := '1A4400010410088B00FD7016200170B6A104010410400081D80A9000C47668092C0C0289EB174484A133F40101EB0408D84D8004C04D8732045620A00F6081E43D0000100049444154484AF0B4C31508B228020834528004A091BAB46DB54071765A264E';
wwv_flow_imp.g_varchar2_table(166) := 'BE20A52B17A4307A4E0A97CFF89C5E92E2D879A916E6ACF6237804562AC0F2EE022400EE3E9422B06C816AA52C07BFF577F2F4A7FF9B3CFBD93F95673FFF515FD3F35FF8A81CFEC29FC9C5EF7D492AC5F965AF9F051140000137011200371DCA1058A940';
wwv_flow_imp.g_varchar2_table(167) := 'B52A8562A5AE69AE5096C9D9A29C3F7E484AD3132BED01CB2360A900617B0990007809518E408B048AE5AAE8518416AD9ED5228040CC054800623EC084175D81AA397AA0537423A0E708B44E80357B0B9000781B5103010410400081D8099000C46E4809';
wwv_flow_imp.g_varchar2_table(168) := '08010410B05D80F8FD089000F851A20E0208208000023113200188D980124EB804F44E80E9544252C9C593CED332E10B01040217A0417F022400FE9CA885C0B20436F5E565CF70BBEC186C5B34E93C2D5B56A32C84000208042040021000224D20B09480';
wwv_flow_imp.g_varchar2_table(169) := 'D9E997CE6C4A9266573F974ECAC249E75D2D5B6A49E62180C0F20558D2AF40D26F45EA2180407D025553BD58D1EFE6C512FFB4CCB97489059885000208042840021020264D21709380DB16DEADECA686988100027E04A8E35F8004C0BF15351140000104';
wwv_flow_imp.g_varchar2_table(170) := '10888D0009406C8692401088960077395CE178958B22550E232D56E45D3D022400F5685117010402132817E645742316588B763554991A954AA96057D0441BA8000940A09C348600027E05A6462FC8D40B0F49757E5AAA85D9FAA7186CFCAA8599FAE336';
wwv_flow_imp.g_varchar2_table(171) := '5E95A911993EFE94CC1A4327EF842948E837F3D3967FC4599F0009407D5ED446008180048A33D3F2CCC77E431EFFED0FC913BFFBBFCA93BFF7CF7C4D8FFFD607E5F1DFF8809CFFD4EF47FB0842B52267FFFADFC953BFF72179F277FEA9AFD89F34464F98';
wwv_flow_imp.g_varchar2_table(172) := 'E9F1DFFB0979EAE3BF2DC5A92B8EA3A11F354D26C9001C81281012007E091040A06502A54241A62F9E96A973C765F2EC315FD3F4C533323D72412E3CF3B054A69D37802D0BCAE78AABB39372F1E0633271F6A44C9E3FE52B76359A3A7742662E9F936AA9';
wwv_flow_imp.g_varchar2_table(173) := 'E8BAA67C262929AB0E01B87250B8840009C01228CC420081F00B14E766CCE1F399F077D4A1875573F8BFECB1117758D4D7ECDEB6B47000C01795B5954800AC1D7A024720DA02C918ECDD36EA0F703A9990DE7C3ADA035C67EFA95EBF40A37EFFEAEF094B';
wwv_flow_imp.g_varchar2_table(174) := '20800002080422B0A63B5B7B0055208DD1486C054800623BB404860002360A0C7766A4AF3D6359E884BB1C011280E5A8B10C0208201032013D23A27BFE6BBA73C2B5FF211B9C9076870420A40343B710B04140375A995442B2E9C593CE33A7B16D20708D';
wwv_flow_imp.g_varchar2_table(175) := '517D6EB4C9A593D2954B498F39C7AF17FA0D7664645D4F4E760EB5CB7067D6B5BDB81612D7F20492CB5B8CA5104000819509A4CC5F1FDD5BDD61365CDB06DA656B7F5B6DDA6E5E6F1B6893F5BD39B17D57768B315968A3465BFAF3B50DFEDA9EAC6C3046';
wwv_flow_imp.g_varchar2_table(176) := 'BAF1D724206F1203E10B813A04CCFF8275D4A62A020820109040D664003DF99464CCAE7ED61C05D03D5B9D74EF5F7F76E7D2B5B2805617B96674EFBF2B97928536EA727DCA1ABFA45612DBBF887FB9022400CB95633904105891806EBB52C984731BA6C8';
wwv_flow_imp.g_varchar2_table(177) := 'ADD879C1F894F0AC9FF88C651823210108E3A8D027042C1130DB788F48BD6B783410E9629EF5E73D7CD458BE0009C0F2ED5812010410400081C80A90004476E8E83802082060BB00F1AF44800460257A2C8B00020820804044054800223A70741B010410';
wwv_flow_imp.g_varchar2_table(178) := 'B05D80F857264002B0323F964600010410402092022400911C363A8D000208D82E40FC2B15200158A920CB2380000208201041011280080E1A5D460001046C1720FE950B9000ACDC9016104000010410889C000940E4868C0E23800002B60B107F100224';
wwv_flow_imp.g_varchar2_table(179) := '004128D2060208208000021113200188D880D15D041040C07601E20F4680042018475A4100010410402052022400911A2E3A8B000208D82E40FC410990000425493B08208000020844488004204283455711400001DB05883F38011280E02C6909010410';
wwv_flow_imp.g_varchar2_table(180) := '400081C80890004466A8E82802082060BB00F10729400210A4266D2180000208201011011280880C14DD440001046C1720FE6005480082F5A43504104000010422214002108961A29308208080ED02C41FB4000940D0A2B4870002082080400404480022';
wwv_flow_imp.g_varchar2_table(181) := '30487411010410B05D80F88317200108DE941611400001041008BD000940E887880E22800002B60B107F230448001AA14A9BBE04AA5591642ABABF82A9A4E9BB06E12B5A2A21800002E112307FC1C2D5217A131F8184E87FEEF114AA29A99844A064BE45';
wwv_flow_imp.g_varchar2_table(182) := '652A9BBE9A2ECB5CB92AE54AC531C0842949E837F3937F0820B07C01966C8C000940635C69D508D4367EB56FE6CD12FFAA95B23CFB8DCFCB335FFB943CFBF5CF46667AC6F4F5A9AF7C4A5EF8DADF2E11D52BB39226F664920CE015115E21804098044800';
wwv_flow_imp.g_varchar2_table(183) := 'C2341A31EC4BDA63036876A6A5303F2FC5B9D9684D8579A91DBA7019B37C2629299304B854A10801043C05A8D02801128046C9D26E4DA0339BAAFDB4F15B6F5B5A3CF21F1B598819010442224002109281886B377423984ED977185C8F7CF4E6D3711D56';
wwv_flow_imp.g_varchar2_table(184) := 'E242A06902ACA8710224008DB3A56523A01BC2355D59F3CAAE7F6BBAB39262F7DFAE41275A042226400210B1018B6277FBDB33D2630E8747B1EFCBE9F3706746FA4CCCCB599665104060A100AF1B29906C64E3B48DC075814D7D7959658E04C4F99A388D';
wwv_flow_imp.g_varchar2_table(185) := '4DF7FCD774E7C4BE931ED7479A9F08201015011280A88C54C4FBA91BC4D52601D839D42E6BCDE1F1818E8CE8F501DDF994B46592924D272233E5D249E9CAA5A4C79CE3D718064D2CEB7A72A2B10D77DA77BA23E2BF9A743FC40274ADB102C9C6364FEB08';
wwv_flow_imp.g_varchar2_table(186) := '2C16C89B8DE790D948AE371B4CDD68EAA44707B6F6B74954A62DFD79D17EAFEDC9CA86DE5CEDB526011ADBE26879870002088457800420BC6313FB9EA59309C9A692A27BD4519CB4EF493DEE1FFB912240045A21C03A1B2D906CF40A681F010410400001';
wwv_flow_imp.g_varchar2_table(187) := '04C227400210BE31A14708208080F50200345E8004A0F1C6AC01010410400081D0099000846E48E81002082060BB00F137438004A019CAAC0381A504124BCD5C3C2F95EF583C2342EF92999C48823F31C217022115E0FFCE900E0CDD8ABF80D7F6BF5C2A';
wwv_flow_imp.g_varchar2_table(188) := 'CBDCA5D322E5B2540D47D57C8BCA24958A94C6CE49B552363D77FE97E09649CE381697107A730448009AE3CC5A10B84920994CB83F2FA05A91C38FFE833CFDA5BF92E7BEF897F2DC97A2333DFDC5BF90A7BFFA19930054C4E92B99309BFF845329F31140';
wwv_flow_imp.g_varchar2_table(189) := 'A0D10224008D16A67D041C04526603A8F73F7028AECD2E4E8DC9CCD9633275E648A4A699B3C7A53031528BC1E99BDE07C2A98CF9360B107BB30448009A25CD7A10B8412069F67EF596C237CCB6E6ADDE02DA9A60091481100A9000847050E8923D02FD6D';
wwv_flow_imp.g_varchar2_table(190) := '19F7D30031A5D0BDFF3E137B4CC323AC1508B068F30448009A67CD9A10B84920934AC87067E6A6F9B19E618E7CE8B31434F658C7497008845C800420E40344F7E22FA04F10EC6F4FC73FD06B110EB65F7D12E4B5B7FC406081002F9B294002D04C6DD685';
wwv_flow_imp.g_varchar2_table(191) := '8083C086DEBC6CECCB99D3010E1562303B69FEDA6CECCBD79E9E188370080181C80B98FF25231F030120100B013D27BE6BA843D6F7E6A42B9F927C2629B97442B2E63441D4024C24A4D677BDD04F6359D595158DADAFCD9E231D511BB330F4973E345720';
wwv_flow_imp.g_varchar2_table(192) := 'D9DCD5B13604107013D0F3E203E610F9D6FE36D9D29F97F53DF9DA1EB3BE8ED2B4D9ECE96BDF37999F1ACB6A9300443191711B2BCA1088BA000940D44790FEC756209B4A4A672E25DDF9742427EDBBD77D0E623B7804B60C011669B6000940B3C5591F02';
wwv_flow_imp.g_varchar2_table(193) := '08208000022110200108C120D005041040C07601E26FBE000940F3CD59230208208000022D17200168F910D0010410588E40B55A95443AB79C45C3B14C2A138E7E84A21774A215022400AD50679D0820E02990F0A851AE5445FFF3A816DAE26AB5221A43';
wwv_flow_imp.g_varchar2_table(194) := '683B48C7622F400210FB21264004A229909084E978D54C4BFF2B964A3273F83B521E392395898B919ACAA32FC9B4E9BBC6B0747457E7AAC0D557F1FE4E74AD112001688D3B6B4500010F01BD995022E1BC09AC140BF2C4C77E4BBEFBDB1F92277FFF27E4';
wwv_flow_imp.g_varchar2_table(195) := 'A9884C4FFEDE4FC863DAE78FFE86948A4547057D60924BF88ECB5180805F81A4DF8AD4430001049A2D90493A2700B5BE54AB52989992A9918B321991696AF4A2CC4D4F8A98BED76270F866CF3D141C0098DD700112808613B302041058AE80DE0E79B9CB';
wwv_flow_imp.g_varchar2_table(196) := '467D39BD8D72D463A0FFE116200108F7F8D03B04AC16E86BCB88DE1ED936846C3A217A4B681BE226C6D6099000B4CE9E352380808780EE05EB83843CAAC5AE78B0232BB9347F9E6337B0210B88DFB0900D08DD410081C502BA273CDC995D3C33C6EF863B';
wwv_flow_imp.g_varchar2_table(197) := '3332D4918971840B43E3752B0548005AA9CFBA1140C097C09AEEAC6CEECF4B3E13DF3F59BAC7BFBE27276BBA73BE4CA884C04A05E2FB7FD34A65581E01044225D0934F8B3E5A788D4906BA722973883C51BB3E206BCE97E72236699FF5F1C8FAB33D9B34';
wwv_flow_imp.g_varchar2_table(198) := '1BFDAC6C1DC8CB80657BFEC2574B0548005ACACFCA1140A01E814C2A217A3A60EB409BEC1AEE909D43EDB263B05DB6476CD23EEF307DDF6D62D0D71A5336C59FE37A7E17A8BB72017EE3566E480B0820D002818459673A9990284F1A8309C3D27F84DD6A';
wwv_flow_imp.g_varchar2_table(199) := '011280568F00EB470001041040A0050224002D40679508208080ED02C4DF7A011280D68F013D400001041040A0E90224004D27678508208080ED02C41F06011280308C027D400001041040A0C90224004D06677508208080ED02C41F0E011280708C03BD';
wwv_flow_imp.g_varchar2_table(200) := '400001041040A0A90224004DE5666508208080ED02C41F16011280B08C04FD400001041040A0890224004DC4665508208080ED02C41F1E011280F08C053D410001041040A0690224004DA3664508208080ED02C41F26011280308D067D410001041040A0';
wwv_flow_imp.g_varchar2_table(201) := '490224004D82663508208080ED02C41F2E011280708D07BD410001041040A0290224004D61662508208080ED02C41F36011280B08D08FD410001041040A0090224004D40661508208080ED02C41F3E011280F08D093D420001041040A0E10224000D2766';
wwv_flow_imp.g_varchar2_table(202) := '0508208080ED02C41F46011280308E0A7D420001041040A0C10224000D06A679041040C07601E20FA700094038C7855E218000020820D05001128086F2D23802082060BB00F18755800420AC2343BF10400001041068A00009400371691A010410B05D80';
wwv_flow_imp.g_varchar2_table(203) := 'F8C32B400210DEB1A167082080000208344C8004A061B4348C000208D82E40FC6116200108F3E8D0370410400001041A244002D020589A450001046C1720FE700B9000847B7CE81D0208208000020D11200168082B8D22800002B60B107FD8054800C23E';
wwv_flow_imp.g_varchar2_table(204) := '42F40F010410400081060890003400952611400001DB05883FFC022400E11F237A88000208208040E00224008193D22002082060BB00F147418004200AA3441F114000010410085880042060509A430001046C1720FE6808900044639CE8250208208000';
wwv_flow_imp.g_varchar2_table(205) := '02810A900004CA496308208080ED02C41F15011280A88C14FD44000104104020400112800031690A010410B05D80F8A3234002109DB1A2A7082080000208042640021018250D21800002B60B107F94044800A2345AF415010410400081800448000282A4';
wwv_flow_imp.g_varchar2_table(206) := '19041040C07601E28F96000940B4C68BDE2280000208201088000940208C3482000208D82E40FC5113200188DA88D15F041040000104021020010800912610400001DB05885976670A00000479494441543F7A022400D11B337A8C0002082080C08A0548';
wwv_flow_imp.g_varchar2_table(207) := '00564C480308208080ED02C41F45011280288E1A7D46000104104060850224002B046471041040C07601E28FA600094034C78D5E238000020820B02201128015F1B13002082060BB00F14755800420AA2347BF11400001041058810009C00AF058140104';
wwv_flow_imp.g_varchar2_table(208) := '10B05D80F8A32B400210DDB1A3E70820800002082C5B800460D9742C88000208D82E40FC5116200188F2E8D17704104000010496294002B04C3816430001046C1720FE680B9000447BFCE83D020820800002CB12200158161B0B21800002B60B107FD405';
wwv_flow_imp.g_varchar2_table(209) := '4800A23E82F41F010410400081650890002C038D4510400001DB05883FFA022400D11F4322400001041040A06E011280BAC95800010410B05D80F8E32040021087512406041040000104EA142001A8138CEA08208080ED02C41F0F011280788C23512080';
wwv_flow_imp.g_varchar2_table(210) := '0002082050970009405D5C54460001046C1720FEB8089000C4652489030104104000813A044800EAC0A22A02082060BB00F1C7478004203E634924082080000208F8162001F04D4545041040C07601E28F930009409C469358104000010410F0294002E0';
wwv_flow_imp.g_varchar2_table(211) := '138A6A08208080ED02C41F2F011280788D27D1208000020820E04B8004C017139510400001DB05883F6E022400711B51E2410001041040C0870009800F24AA20800002B60B107FFC044800E237A64484000208208080A700098027111510400001DB0588';
wwv_flow_imp.g_varchar2_table(212) := '3F8E022400711C5562420001041040C0438004C0038862041040C07601E28FA70009403CC795A81040000104107015200170E5A110010410B05D80F8E32A400210D791252E0410400001045C0448005C7028420001046C1720FEF80A9000C4776C890C01';
wwv_flow_imp.g_varchar2_table(213) := '041040000147011200471A0A10400001DB05883FCE022400711E5D62430001041040C0418004C00186D908208080ED02C41F6F011280788F2FD1218000020820B0A40009C0922CCC440001046C1720FEB80B9000C47D84890F0104104000812504480096';
wwv_flow_imp.g_varchar2_table(214) := '40611602082060BB00F1C75F800420FE634C84082080000208DC2440027013093310400001DB0588DF060112001B469918114000010410B8418004E00610DE22800002B60B10BF1D022400768C3351228000020820B04880046011076F10400001DB0588';
wwv_flow_imp.g_varchar2_table(215) := 'DF160112005B469A3811400001041058204002B000839708208080ED02C46F8F0009803D634DA4082080000208BC2C4002F032052F10400001DB0588DF260112009B469B58114000010410B8264002700D821F08208080ED02C46F970009805DE34DB408';
wwv_flow_imp.g_varchar2_table(216) := '2080000208D40448006A0C7C430001046C17207EDB0448006C1B71E2450001041040C00890001804FE21800002B60B10BF7D022400F68D3911238000020820202400FC1220800002D60B0060A30009808DA34ECC0820800002D60B900058FF2B00000208';
wwv_flow_imp.g_varchar2_table(217) := 'D82E40FC760A9000D839EE448D0002082060B9000980E5BF00848F0002B60B10BFAD022400B68E3C712380000208582D400260F5F0133C0208D82E40FCF60A9000D83BF6448E0002082060B1000980C5834FE8082060BB00F1DB2C400260F3E8133B0208';
wwv_flow_imp.g_varchar2_table(218) := '208080B5022400D60E3D81238080ED02C46FB7C0FF0F0000FFFFA3869BE800000006494441540300C5C867F0FF4CBDDE0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5813959103671581)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5805158052671568)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5805442685671568)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5805778852671568)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5806052441671570)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5806303360671570)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5806647845671571)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5806953494671571)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5807282037671571)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5807525993671571)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5807863585671571)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5808142532671573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5808474317671573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5808798909671573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5809013653671573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>7718301
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5816861519671587)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>7718329
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5816965960671587)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>7718329
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5817080286671587)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>7718329
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(5816407249671585)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>7718326
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(5816630273671587)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>7718326
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(5816767455671587)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>7718326
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(5817886064671590)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(5814379554671582)
,p_version_scn=>7718332
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(5818133326671592)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(5814189704671582)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>7718332
);
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
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5940144961671882)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>7718625
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5839780599671646)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>7718402
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5947668307671896)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(5947668307671896)||'.'
,p_location=>'STATIC'
,p_version_scn=>7718632
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5947955455671896)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5964901169671928)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(5964901169671928)||'.'
,p_location=>'STATIC'
,p_version_scn=>7718653
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5965224490671928)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5965601882671928)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5966089838671928)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5977362923671940)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(5977362923671940)||'.'
,p_location=>'STATIC'
,p_version_scn=>7718656
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5977679701671942)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5978067545671942)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5978471143671942)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5978890126671942)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5859332392671720)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>7718455
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5840475127671659)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(5840475127671659)||'.'
,p_location=>'STATIC'
,p_version_scn=>7718407
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5840755047671660)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5906949192671810)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(5906949192671810)||'.'
,p_location=>'STATIC'
,p_version_scn=>7718596
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5907255774671812)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5907679306671812)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(5818482799671593)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(6021449471672029)
,p_group_name=>'User Settings'
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
 p_id=>wwv_flow_imp.id(5809995365671575)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5810153052671575)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6003352136671982)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6060068858786032)
,p_short_name=>'Cadastro de CEP'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
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
 p_id=>wwv_flow_imp.id(5810835643671576)
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
null;
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
null;
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
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5809330678671573)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>7718301
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5814189704671582)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7718320
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5814280540671582)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7718320
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5814379554671582)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7718320
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5814522891671582)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7718320
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5814891565671582)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7718320
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5814961943671582)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7718320
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6021664337672029)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7718723
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6021932092672029)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>7718723
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(5809666073671575)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>7718301
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'consulta-cep'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5826448773671604)
,p_plug_name=>'consulta-cep'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Cadastro de CEP'
,p_alias=>'CADASTRO-DE-CEP'
,p_step_title=>'Cadastro de CEP'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6050255182786023)
,p_plug_name=>'Cadastro de CEP'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'ENDERECOS_VIACEP'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Cadastro de CEP'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6051584470786025)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Editar'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP,7:P7_CEP,P7_STATE:\&CEP.\,\&STATE.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6052555757786025)
,p_name=>'CEP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CEP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CEP'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6053552269786026)
,p_name=>'Estado'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6054503640786026)
,p_name=>'Cidade'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CITY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cidade'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6055536230786028)
,p_name=>'Bairro'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEIGHBORHOOD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bairro'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6056513739786028)
,p_name=>'Rua'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STREET'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Rua'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>150
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6050794755786023)
,p_internal_uid=>6050794755786023
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6051164277786023)
,p_interactive_grid_id=>wwv_flow_imp.id(6050794755786023)
,p_static_id=>'60512'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6051334371786023)
,p_report_id=>wwv_flow_imp.id(6051164277786023)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6051947325786025)
,p_view_id=>wwv_flow_imp.id(6051334371786023)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6051584470786025)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6052949457786026)
,p_view_id=>wwv_flow_imp.id(6051334371786023)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6052555757786025)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6053989375786026)
,p_view_id=>wwv_flow_imp.id(6051334371786023)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6053552269786026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6054962227786028)
,p_view_id=>wwv_flow_imp.id(6051334371786023)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6054503640786026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6055998312786028)
,p_view_id=>wwv_flow_imp.id(6051334371786023)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6055536230786028)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6056946651786029)
,p_view_id=>wwv_flow_imp.id(6051334371786023)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6056513739786028)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6060121544786032)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5809995365671575)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6058599670786031)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6050255182786023)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6058862580786031)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6050255182786023)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6059386767786031)
,p_event_id=>wwv_flow_imp.id(6058862580786031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6050255182786023)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Formulario de CEP'
,p_alias=>'FORMULARIO-DE-CEP'
,p_page_mode=>'MODAL'
,p_step_title=>'Formulario de CEP'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6040854388786009)
,p_plug_name=>'Formulario de CEP'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ENDERECOS_VIACEP'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6045471948786017)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6045841227786018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6045471948786017)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6047232321786020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6045471948786017)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P7_CEP is not null and :P7_STATE is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6047611718786020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6045471948786017)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>':P7_CEP is not null and :P7_STATE is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6048097649786020)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6045471948786017)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>':P7_CEP is null or :P7_STATE is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5750160616724718)
,p_name=>'P7_CEP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6040854388786009)
,p_prompt=>'CEP'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6041686960786010)
,p_name=>'P7_STATE'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6040854388786009)
,p_item_source_plug_id=>wwv_flow_imp.id(6040854388786009)
,p_prompt=>'Estado'
,p_source=>'STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6042018380786012)
,p_name=>'P7_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6040854388786009)
,p_item_source_plug_id=>wwv_flow_imp.id(6040854388786009)
,p_prompt=>'Cidade'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6042490712786014)
,p_name=>'P7_NEIGHBORHOOD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6040854388786009)
,p_item_source_plug_id=>wwv_flow_imp.id(6040854388786009)
,p_prompt=>'Bairro'
,p_source=>'NEIGHBORHOOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6042869681786014)
,p_name=>'P7_STREET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6040854388786009)
,p_item_source_plug_id=>wwv_flow_imp.id(6040854388786009)
,p_prompt=>'Rua'
,p_source=>'STREET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6045976219786018)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6045841227786018)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6046760714786020)
,p_event_id=>wwv_flow_imp.id(6045976219786018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5751500318724732)
,p_name=>'Dynamic _Action_no_Item_CEP'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_CEP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5751645903724733)
,p_event_id=>wwv_flow_imp.id(5751500318724732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_CEP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6048847627786021)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6040854388786009)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Formulario de CEP'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6048847627786021
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6049275219786021)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6049275219786021
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6048467440786020)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6040854388786009)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Formulario de CEP'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6048467440786020
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'consulta-cep - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5819064155671595)
,p_plug_name=>'consulta-cep'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5821114369671598)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5819064155671595)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5819505913671596)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5819064155671595)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5819946749671596)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5819064155671595)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5820336091671596)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5819064155671595)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5820752577671598)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5819064155671595)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5823324168671601)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5823324168671601
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5823868667671601)
,p_page_process_id=>wwv_flow_imp.id(5823324168671601)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5824372630671601)
,p_page_process_id=>wwv_flow_imp.id(5823324168671601)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5821497734671600)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5821497734671600
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5821959839671600)
,p_page_process_id=>wwv_flow_imp.id(5821497734671600)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5822455357671600)
,p_page_process_id=>wwv_flow_imp.id(5821497734671600)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5822920222671601)
,p_page_process_id=>wwv_flow_imp.id(5821497734671600)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5825203372671603)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5825203372671603
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5824826142671603)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>5824826142671603
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6002808686671979)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(5809995365671575)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6009412933671989)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6009830263671990)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(6009412933671989)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(6003553184671982)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(5814522891671582)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6010293488671990)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(6009412933671989)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(6004225357671984)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(5814961943671582)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6010691764671992)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(6009412933671989)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(6004972597671984)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(5814280540671582)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6011018986671992)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6011413073671993)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(6011018986671992)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(5814189704671582)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6012267702671993)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(6011413073671993)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6012692814671995)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(6011413073671993)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6013371502672001)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6013774987672001)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6014138090672001)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6017254385672014)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(6011413073671993)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(6007699141671987)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6017660718672014)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(6011018986671992)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(5814379554671582)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6018096353672014)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(6017660718672014)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6018788441672020)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6019177949672020)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6021021830672028)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(6017660718672014)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(6008726010671989)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6011838487671993)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6011413073671993)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6016319357672012)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6011838487671993)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6016881392672012)
,p_event_id=>wwv_flow_imp.id(6016319357672012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6012692814671995)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814522891671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5827088015671606)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5827290471671607)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5827897223671609)
,p_name=>'Configuration Options'
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
,p_owner=>'ADMIN_CEP'
,p_internal_uid=>5827897223671609
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5828579762671621)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5828945452671623)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5829327976671623)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5829782490671625)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5830119894671625)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5830574548671625)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5830962833671626)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5833797044671635)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'58338'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5835369992671640)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5827088015671606)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5834671715671639)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5827290471671607)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5836199907671640)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5835726773671640)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>5835726773671640
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814961943671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5836421747671642)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5836596282671642)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5838975281671646)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5836421747671642)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5837541997671643)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5836421747671642)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5839318102671646)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5839617003671646)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5836596282671642)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5840308605671659)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5836596282671642)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(5840475127671659)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5837661962671643)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5837541997671643)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5838338696671645)
,p_event_id=>wwv_flow_imp.id(5837661962671643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5841544049671665)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>5841544049671665
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5841958053671665)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>5841958053671665
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814280540671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5842206345671667)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5842374152671667)
,p_region_id=>wwv_flow_imp.id(5842206345671667)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5844340792671670)
,p_chart_id=>wwv_flow_imp.id(5842374152671667)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5844907001671673)
,p_chart_id=>wwv_flow_imp.id(5842374152671667)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5845570652671675)
,p_chart_id=>wwv_flow_imp.id(5842374152671667)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5842465333671667)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5842588209671667)
,p_region_id=>wwv_flow_imp.id(5842465333671667)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5849385004671679)
,p_chart_id=>wwv_flow_imp.id(5842588209671667)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5849940721671679)
,p_chart_id=>wwv_flow_imp.id(5842588209671667)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5850537077671681)
,p_chart_id=>wwv_flow_imp.id(5842588209671667)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5842680199671667)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5842750735671667)
,p_region_id=>wwv_flow_imp.id(5842680199671667)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5846876483671676)
,p_chart_id=>wwv_flow_imp.id(5842750735671667)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5847449272671678)
,p_chart_id=>wwv_flow_imp.id(5842750735671667)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5848052505671678)
,p_chart_id=>wwv_flow_imp.id(5842750735671667)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5842853264671667)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5851685943671689)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5852086962671690)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5842922490671667)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5854879417671709)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5855228185671709)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5843020457671667)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5857520089671718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5842206345671667)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5857900510671718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5842465333671667)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5858367000671718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5842680199671667)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5858796507671718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5842853264671667)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5843112324671667)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5843020457671667)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5843258079671667)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5860398156671723)
,p_event_id=>wwv_flow_imp.id(5843258079671667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5842206345671667)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5860856727671723)
,p_event_id=>wwv_flow_imp.id(5843258079671667)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5842680199671667)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5861362572671723)
,p_event_id=>wwv_flow_imp.id(5843258079671667)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5842465333671667)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5861834170671723)
,p_event_id=>wwv_flow_imp.id(5843258079671667)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5842853264671667)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5862399299671725)
,p_event_id=>wwv_flow_imp.id(5843258079671667)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5842922490671667)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814280540671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5895145979671787)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5896221118671787)
,p_name=>'Top Users'
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
,p_owner=>'ADMIN_CEP'
,p_internal_uid=>5896221118671787
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5896973855671795)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5897312217671796)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5897763291671796)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5898115205671798)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5898541697671798)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5898900651671798)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5899360010671800)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5899767885671800)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5902825057671804)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'59029'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5895262496671787)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5895479834671787)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5895510228671787)
,p_region_id=>wwv_flow_imp.id(5895479834671787)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5906449622671810)
,p_chart_id=>wwv_flow_imp.id(5895510228671787)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5903710444671806)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5895145979671787)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5895655794671787)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5895262496671787)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(5906949192671810)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5895826998671787)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5895262496671787)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5895331954671787)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5905097299671807)
,p_event_id=>wwv_flow_imp.id(5895331954671787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5895145979671787)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5908492432671817)
,p_event_id=>wwv_flow_imp.id(5895331954671787)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5895145979671787)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814280540671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5888186849671775)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5888785226671776)
,p_name=>'Application Error Log'
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
,p_owner=>'ADMIN_CEP'
,p_internal_uid=>5888785226671776
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5889436961671778)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5889878637671779)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5890233887671779)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5890645084671779)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5891016212671779)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5891486714671781)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5893985371671785)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'58940'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5894834432671785)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5888186849671775)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814280540671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5874101394671748)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5874711546671748)
,p_name=>'Page Performance'
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
,p_owner=>'ADMIN_CEP'
,p_internal_uid=>5874711546671748
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5875419690671759)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5875843072671759)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5876240303671760)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5876651633671760)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5877026232671760)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5877444183671762)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5877825599671762)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5878294312671762)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5878639403671762)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5879040073671764)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5879453589671764)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5879806468671764)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5880232013671765)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5880663858671765)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5885419596671771)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'58855'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5874240195671748)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5886347388671773)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5874101394671748)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5874038335671748)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5874240195671748)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5874305267671748)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5887635461671775)
,p_event_id=>wwv_flow_imp.id(5874305267671748)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5874101394671748)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814280540671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5862824530671725)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5863448474671725)
,p_name=>'Page Views'
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
,p_owner=>'ADMIN_CEP'
,p_internal_uid=>5863448474671725
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5864129861671734)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5864547157671735)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5864963443671735)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5865314887671735)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5865711947671737)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5866149756671737)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5866575547671737)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5866972225671737)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5867324949671739)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5867728634671739)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5871465605671743)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'58715'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5862939313671725)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5872320755671745)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5862824530671725)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5862785834671725)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5862939313671725)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5863061313671725)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5873606904671746)
,p_event_id=>wwv_flow_imp.id(5863061313671725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5862824530671725)
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814280540671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5908913899671817)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5909593573671818)
,p_name=>'Automations Log'
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
,p_owner=>'ADMIN_CEP'
,p_internal_uid=>5909593573671818
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5910264726671835)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5910676920671835)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5911005714671835)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5911478139671837)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5911873059671837)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5912238581671839)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5912620769671839)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5913092335671839)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5913488493671840)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5916817779671845)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'59169'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5917733564671845)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5908913899671817)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814280540671582)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5918331362671846)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5920714380671850)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5921109179671854)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5921508198671854)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5921950313671854)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5922343535671854)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5918778640671846)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5918331362671846)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5919180475671848)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5918331362671846)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5919550681671848)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5918331362671846)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5919923951671848)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5918331362671846)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5920393499671850)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5920393499671850
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814189704671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5924539583671859)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5924653253671859)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5925831440671860)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5924653253671859)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5926109401671860)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5924653253671859)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5927539890671862)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5927809550671862)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5924539583671859)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5926232208671860)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5926109401671860)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5926999487671860)
,p_event_id=>wwv_flow_imp.id(5926232208671860)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5928294827671864)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>5928294827671864
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814189704671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5928617668671864)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5929444241671864)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN_CEP'
,p_internal_uid=>5929444241671864
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5930091961671870)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5930428598671870)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5930858500671871)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5932462584671873)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'59325'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5933315158671875)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5928617668671864)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5933707767671875)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5928617668671864)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5934190984671875)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5928617668671864)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5928791943671864)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5928617668671864)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5934765633671876)
,p_event_id=>wwv_flow_imp.id(5928791943671864)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5928617668671864)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814189704671582)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5935226692671876)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5935355420671876)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5938185759671879)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5935355420671876)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5938524177671881)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5935355420671876)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5936360777671878)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5935355420671876)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5937791920671879)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5935355420671876)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5938868311671881)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5935226692671876)
,p_item_source_plug_id=>wwv_flow_imp.id(5935226692671876)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5939238489671881)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5935226692671876)
,p_item_source_plug_id=>wwv_flow_imp.id(5935226692671876)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5939684103671881)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5935226692671876)
,p_item_source_plug_id=>wwv_flow_imp.id(5935226692671876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5940031434671882)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5935226692671876)
,p_item_source_plug_id=>wwv_flow_imp.id(5935226692671876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5941355360671889)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5936458702671878)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5936360777671878)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5937104414671879)
,p_event_id=>wwv_flow_imp.id(5936458702671878)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5941689315671889)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(5935226692671876)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5941689315671889
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5942087372671889)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5935226692671876)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5942087372671889
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5942448444671890)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5942448444671890
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814189704671582)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5942835240671890)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5942918268671890)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5943084511671890)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5942835240671890)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5945021882671893)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5942835240671890)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5946301735671895)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(5943084511671890)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5946724157671895)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5942918268671890)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5947136449671895)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5942918268671890)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5947530124671896)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5942918268671890)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(5947668307671896)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5945101346671893)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5945021882671893)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5945858900671893)
,p_event_id=>wwv_flow_imp.id(5945101346671893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5948696388671898)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5943084511671890)
,p_internal_uid=>5948696388671898
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814189704671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5943176692671890)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5943279800671890)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5943483601671890)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(5943279800671890)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5950570916671904)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5950975013671904)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5943541680671890)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(5943279800671890)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5943666345671890)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5954057253671915)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5954755957671917)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5943702139671890)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5943176692671890)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5955432643671918)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5943176692671890)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5955828358671918)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5943176692671890)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5957155310671920)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5943666345671890)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5957518851671920)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5943666345671890)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5957932134671921)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5943666345671890)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5955966706671918)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5955828358671918)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5956682776671920)
,p_event_id=>wwv_flow_imp.id(5955966706671918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5958342024671921)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5943702139671890)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>5958342024671921
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5958768345671921)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5958768345671921
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(5814379554671582)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5959123952671921)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5959295732671921)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5959320803671921)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5959295732671921)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5962350093671925)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5959295732671921)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5970095847671932)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5963644139671926)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5959123952671921)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5964099708671926)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5959123952671921)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5964473115671926)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5959123952671921)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5964826392671928)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(5959123952671921)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(5964901169671928)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5966717415671929)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5959123952671921)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5969615511671932)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5962490855671925)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5962350093671925)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5963165500671926)
,p_event_id=>wwv_flow_imp.id(5962490855671925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5967133938671929)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5959320803671921)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>5967133938671929
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5967617511671931)
,p_page_process_id=>wwv_flow_imp.id(5967133938671929)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5968183670671931)
,p_page_process_id=>wwv_flow_imp.id(5967133938671929)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5968601380671931)
,p_page_process_id=>wwv_flow_imp.id(5967133938671929)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5969143556671931)
,p_page_process_id=>wwv_flow_imp.id(5967133938671929)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(5814379554671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5959751507671921)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5959653636671921)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5959751507671921)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5959868722671921)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5959653636671921)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5971698890671934)
,p_event_id=>wwv_flow_imp.id(5959868722671921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814379554671582)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5961066250671921)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5984548139671948)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN_CEP'
,p_internal_uid=>5984548139671948
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5985295974671954)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5985687935671954)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5986086566671954)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5986420943671954)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5986852453671956)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5987237739671956)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(5964901169671928)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5987631474671956)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5988078437671957)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(5977362923671940)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5988490871671957)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5988882933671957)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5989216842671959)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5989636027671959)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5990034399671959)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5994624572671965)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'59947'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5995511129671967)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5961066250671921)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5960913624671921)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5961066250671921)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5996201103671967)
,p_event_id=>wwv_flow_imp.id(5960913624671921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5961066250671921)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5816861519671587)
,p_required_patch=>wwv_flow_imp.id(5814379554671582)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5960300584671921)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5960431872671921)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5960570963671921)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5960431872671921)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5973279931671935)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5960431872671921)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5960798128671921)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5960431872671921)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5974821324671937)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5960300584671921)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5975284168671939)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5960300584671921)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5975670881671939)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5960300584671921)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5976096637671939)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5960300584671921)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5976430627671940)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5960300584671921)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5976838764671940)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5960300584671921)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5977231389671940)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5960300584671921)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(5977362923671940)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5979594541671943)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5960300584671921)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5973346407671935)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5973279931671935)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5974083405671937)
,p_event_id=>wwv_flow_imp.id(5973346407671935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5980037547671943)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5980037547671943
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5980376135671943)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5960570963671921)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>5980376135671943
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5980816205671945)
,p_page_process_id=>wwv_flow_imp.id(5980376135671943)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5981309835671945)
,p_page_process_id=>wwv_flow_imp.id(5980376135671943)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5981864015671945)
,p_page_process_id=>wwv_flow_imp.id(5980376135671943)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5982288108671945)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5960798128671921)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>5982288108671945
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5982773272671946)
,p_page_process_id=>wwv_flow_imp.id(5982288108671945)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5983273377671946)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5960798128671921)
,p_internal_uid=>5983273377671946
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5983690133671946)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5983690133671946
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5818482799671593)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(5814891565671582)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5997021698671970)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(5814891565671582)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5997728653671971)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5998178867671971)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5997728653671971)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6021449471672029)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(6021932092672029)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6026502780672040)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6026901123672042)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(6027409191672042)
,p_region_id=>wwv_flow_imp.id(6026901123672042)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6027922587672043)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(6025555064672037)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(6021449471672029)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(6021664337672029)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6022984580672032)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6023311024672034)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6022628140672032)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6023850755672034)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6023311024672034)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6024182344672035)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6024638695672035)
,p_event_id=>wwv_flow_imp.id(6024182344672035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6025154246672037)
,p_event_id=>wwv_flow_imp.id(6024182344672035)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
null;
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
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, true)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
