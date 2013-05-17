CREATE OR REPLACE PACKAGE "TEST_MK2"."ERROR" 
as
  ------------------
  --ora exceptions--
  ------------------
  --deadlock_detected
  deadlock_detected constant string(64) := 'ora_deadlock_detected';
  ora_deadlock_detected exception;
  pragma exception_init(ora_deadlock_detected, -60);
  --cannot_acquire_lock
  cannot_acquire_lock constant string(64) := 'ora_cannot_acquire_lock';
  ora_cannot_acquire_lock exception;
  pragma exception_init(ora_cannot_acquire_lock, -69);
  --sql_cmd_improperly_ended
  sql_cmd_improperly_ended constant string(64) := 'ora_sql_cmd_improperly_ended';
  ora_sql_cmd_improperly_ended exception;
  pragma exception_init(ora_sql_cmd_improperly_ended, -933);
  --missing_expresion
  missing_expresion constant string(64) := 'ora_missing_expresion';
  ora_missing_expresion exception;
  pragma exception_init(ora_missing_expresion, -936);
  --identifier_is_too_long
  identifier_is_too_long constant string(64) := 'ora_identifier_is_too_long';
  ora_identifier_is_too_long exception;
  pragma exception_init(ora_identifier_is_too_long, -972);
  --insufficient_privileges
  insufficient_privileges constant string(64) := 'ora_insufficient_privileges';
  ora_insufficient_privileges exception;
  pragma exception_init(ora_insufficient_privileges, -1031);
  --oracle_initial_or_shutdown
  oracle_initial_or_shutdown constant string(64) := 'ora_oracle_initial_or_shutdown';
  ora_oracle_initial_or_shutdown exception;
  pragma exception_init(ora_oracle_initial_or_shutdown, -1033);
  --numeric_overflow
  numeric_overflow constant string(64) := 'ora_numeric_overflow';
  ora_numeric_overflow exception;
  pragma exception_init(ora_numeric_overflow, -1426);
  --numeric_exceeded_precision
  numeric_exceeded_precision constant string(64) := 'ora_numeric_exceeded_precision';
  ora_numeric_exceeded_precision exception;
  pragma exception_init(ora_numeric_exceeded_precision, -1438);
  --format_code_appears_twice
  format_code_appears_twice constant string(64) := 'ora_format_code_appears_twice';
  ora_format_code_appears_twice exception;
  pragma exception_init(ora_format_code_appears_twice, -1810);
  --date_format_not_recognized
  date_format_not_recognized constant string(64) := 'ora_date_format_not_recognized';
  ora_date_format_not_recognized exception;
  pragma exception_init(ora_date_format_not_recognized, -1821);
  --invalid_year
  invalid_year constant string(64) := 'ora_invalid_year';
  ora_invalid_year exception;
  pragma exception_init(ora_invalid_year, -1841);
  --invalid_month
  invalid_month constant string(64) := 'ora_invalid_month';
  ora_invalid_month exception;
  pragma exception_init(ora_invalid_month, -1843);
  --invalid_julian_date
  invalid_julian_date constant string(64) := 'ora_invalid_julian_date';
  ora_invalid_julian_date exception;
  pragma exception_init(ora_invalid_julian_date, -1854);
  --unexpected_non_numeric
  unexpected_non_numeric constant string(64) := 'ora_unexpected_non_numeric';
  ora_unexpected_non_numeric exception;
  pragma exception_init(ora_unexpected_non_numeric, -1858);
  --unexpected_non_alpha_found
  unexpected_non_alpha_found constant string(64) := 'ora_unexpected_non_alpha_found';
  ora_unexpected_non_alpha_found exception;
  pragma exception_init(ora_unexpected_non_alpha_found, -1859);
  --literal_string_mismatch
  literal_string_mismatch constant string(64) := 'ora_literal_string_mismatch';
  ora_literal_string_mismatch exception;
  pragma exception_init(ora_literal_string_mismatch, -1861);
  --year_invalid_for_calendar
  year_invalid_for_calendar constant string(64) := 'ora_year_invalid_for_calendar';
  ora_year_invalid_for_calendar exception;
  pragma exception_init(ora_year_invalid_for_calendar, -1863);
  --date_invalid_for_calendar
  date_invalid_for_calendar constant string(64) := 'ora_date_invalid_for_calendar';
  ora_date_invalid_for_calendar exception;
  pragma exception_init(ora_date_invalid_for_calendar, -1864);
  --invalid_era
  invalid_era constant string(64) := 'ora_invalid_era';
  ora_invalid_era exception;
  pragma exception_init(ora_invalid_era, -1865);
  --invalid_interval
  invalid_interval constant string(64) := 'ora_invalid_interval';
  ora_invalid_interval exception;
  pragma exception_init(ora_invalid_interval, -1867);
  --interval_and_date_mismatch
  interval_and_date_mismatch constant string(64) := 'ora_interval_and_date_mismatch';
  ora_interval_and_date_mismatch exception;
  pragma exception_init(ora_interval_and_date_mismatch, -1870);
  --invalid_seconds
  invalid_seconds constant string(64) := 'ora_invalid_seconds';
  ora_invalid_seconds exception;
  pragma exception_init(ora_invalid_seconds, -1871);
  --invalid_time_zone_hour
  invalid_time_zone_hour constant string(64) := 'ora_invalid_time_zone_hour';
  ora_invalid_time_zone_hour exception;
  pragma exception_init(ora_invalid_time_zone_hour, -1874);
  --invalid_time_zone_minutes
  invalid_time_zone_minutes constant string(64) := 'ora_invalid_time_zone_minutes';
  ora_invalid_time_zone_minutes exception;
  pragma exception_init(ora_invalid_time_zone_minutes, -1875);
  --year_is_too_long_ago
  year_is_too_long_ago constant string(64) := 'ora_year_is_too_long_ago';
  ora_year_is_too_long_ago exception;
  pragma exception_init(ora_year_is_too_long_ago, -1876);
  --invalid_hh24_hour
  invalid_hh24_hour constant string(64) := 'ora_invalid_hh24_hour';
  ora_invalid_hh24_hour exception;
  pragma exception_init(ora_invalid_hh24_hour, -1879);
  --invalid_fractional_seconds
  invalid_fractional_seconds constant string(64) := 'ora_invalid_fractional_seconds';
  ora_invalid_fractional_seconds exception;
  pragma exception_init(ora_invalid_fractional_seconds, -1880);
  --invalid_timezone_region_id
  invalid_timezone_region_id constant string(64) := 'ora_invalid_timezone_region_id';
  ora_invalid_timezone_region_id exception;
  pragma exception_init(ora_invalid_timezone_region_id, -1881);
  --invalid_timezone_region
  invalid_timezone_region constant string(64) := 'ora_invalid_timezone_region';
  ora_invalid_timezone_region exception;
  pragma exception_init(ora_invalid_timezone_region, -1882);
  --nls_error_detected
  nls_error_detected constant string(64) := 'ora_nls_error_detected';
  ora_nls_error_detected exception;
  pragma exception_init(ora_nls_error_detected, -1890);
  --parent_key_not_found
  parent_key_not_found constant string(64) := 'ora_parent_key_not_found';
  ora_parent_key_not_found exception;
  pragma exception_init(ora_parent_key_not_found, -2291);
  --plsql_compilation_error
  plsql_compilation_error constant string(64) := 'ora_plsql_compilation_error';
  ora_plsql_compilation_error exception;
  pragma exception_init(ora_plsql_compilation_error, -6550);
  --got_no_xml_content
  got_no_xml_content constant string(64) := 'ora_got_no_xml_content';
  ora_got_no_xml_content exception;
  pragma exception_init(ora_got_no_xml_content, -19032);
  --source_too_large
  source_too_large constant string(64) := 'ora_source_too_large';
  ora_source_too_large exception;
  pragma exception_init(ora_source_too_large, -29330);
  --xml_parsing_failed
  xml_parsing_failed constant string(64) := 'ora_xml_parsing_failed';
  ora_xml_parsing_failed exception;
  pragma exception_init(ora_xml_parsing_failed, -31011);
  -------------------
  --test exceptions--
  -------------------
  --assertion_failure
  assertion_failure constant string(64) := 'test_assertion_failure';
  test_assertion_failure exception;
  pragma exception_init(test_assertion_failure, -20101);
  --exception_during_test
  exception_during_test constant string(64) := 'test_exception_during_test';
  test_exception_during_test exception;
  pragma exception_init(test_exception_during_test, -20102);
  ------------------
  --app exceptions--
  ------------------
  --application_exception
  application_exception constant string(64) := 'app_application_exception';
  app_application_exception exception;
  pragma exception_init(app_application_exception, -20000);
  --string_too_large
  string_too_large constant string(64) := 'app_string_too_large';
  app_string_too_large exception;
  pragma exception_init(app_string_too_large, -20001);
  --parameter_cannot_be_null
  parameter_cannot_be_null constant string(64) := 'app_parameter_cannot_be_null';
  app_parameter_cannot_be_null exception;
  pragma exception_init(app_parameter_cannot_be_null, -20002);
  --sparsity_not_allowed
  sparsity_not_allowed constant string(64) := 'app_sparsity_not_allowed';
  app_sparsity_not_allowed exception;
  pragma exception_init(app_sparsity_not_allowed, -20003);
  --not_one_based
  not_one_based constant string(64) := 'app_not_one_based';
  app_not_one_based exception;
  pragma exception_init(app_not_one_based, -20004);
  --lookup_table_is_corrupt
  lookup_table_is_corrupt constant string(64) := 'app_lookup_table_is_corrupt';
  app_lookup_table_is_corrupt exception;
  pragma exception_init(app_lookup_table_is_corrupt, -20005);
  --parameter_did_not_conform
  parameter_did_not_conform constant string(64) := 'app_parameter_did_not_conform';
  app_parameter_did_not_conform exception;
  pragma exception_init(app_parameter_did_not_conform, -20006);
  --fatal_html_syntax_error
  fatal_html_syntax_error constant string(64) := 'app_fatal_html_syntax_error';
  app_fatal_html_syntax_error exception;
  pragma exception_init(app_fatal_html_syntax_error, -20007);
  --package_state_undefined
  package_state_undefined constant string(64) := 'app_package_state_undefined';
  app_package_state_undefined exception;
  pragma exception_init(app_package_state_undefined, -20008);
  --invalid_user
  invalid_user constant string(64) := 'app_invalid_user';
  app_invalid_user exception;
  pragma exception_init(app_invalid_user, -20009);
  --excep_outside_user_range
  excep_outside_user_range constant string(64) := 'app_excep_outside_user_range';
  app_excep_outside_user_range exception;
  pragma exception_init(app_excep_outside_user_range, -20010);
  --decision_tree_failed
  decision_tree_failed constant string(64) := 'app_decision_tree_failed';
  app_decision_tree_failed exception;
  pragma exception_init(app_decision_tree_failed, -20011);
  --exception_does_not_exist
  exception_does_not_exist constant string(64) := 'app_exception_does_not_exist';
  app_exception_does_not_exist exception;
  pragma exception_init(app_exception_does_not_exist, -20012);
  --security_violation
  security_violation constant string(64) := 'app_security_violation';
  app_security_violation exception;
  pragma exception_init(app_security_violation, -20013);
  --data_integrity_failed
  data_integrity_failed constant string(64) := 'app_data_integrity_failed';
  app_data_integrity_failed exception;
  pragma exception_init(app_data_integrity_failed, -20014);
  --not_implemented
  not_implemented constant string(64) := 'app_not_implemented';
  app_not_implemented exception;
  pragma exception_init(app_not_implemented, -20015);
  --procedures
  procedure throw(
      p_exception in varchar2);
  procedure throw(
      p_exception in varchar2,
      p_message in varchar2 );
  function get_message_prefix(
      p_ex varchar2)
    return varchar2;
end error;
/
CREATE OR REPLACE
PACKAGE BODY "TEST_MK2"."ERROR"
is
function get_message_prefix(
    p_ex varchar2)
  return varchar2
as
  lPrefix varchar2(4000);
begin
  select   initcap(replace(substr(substr( p_ex, instr( p_ex, '.') + 1), instr( p_ex, '_') - instr( p_ex, '.') + 1), '_', ' ')) || ': '
    into lPrefix
    from dual;
  return lPrefix;
end get_message_prefix;
procedure throw(
    p_exception in varchar2)
is
begin
  throw(p_exception, p_exception);
end;
procedure throw(
    p_exception in varchar2,
    p_message in varchar2 )
is
  lPrefix varchar2(4000) := get_message_prefix(p_exception);
begin
  begin
    begin
      execute immediate ('begin raise ' || p_exception || '; end;');
      -- exception is raised and immediately trapped
    exception
    when ora_plsql_compilation_error then
      throw(error.exception_does_not_exist, p_exception);
    end;
  exception
  when others then
    if sqlcode between - 20999 and - 20000 then
      raise_application_error(sqlcode, lPrefix || p_message);
      -- this is the best/only use of raise_application_error
      -- and eliminates the need in application code
    else
      raise;
      -- nothing extra to do for extra for exceptions outside raise_application_error range
    end if;
  end;
exception
when others then
  raise; -- finally, bubbles up the original throw() call
end throw;
end error;
/
