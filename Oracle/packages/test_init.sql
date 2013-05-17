CREATE OR REPLACE PACKAGE "TEST_MK2"."TEST_INIT" 
as
  sTestTablePkg_Spec_Header varchar2(32767) := 
    'create or replace
    package test_data_pkg
    as';
  sTestTablePkg_Spec_InsertRow varchar2(32767) :=
    'procedure InsertRow(';
  sTestTablePkg_Spec_InsertRows varchar2(32767) :=
    'procedure InsertRows(';
  sTestTablePkg_Spec_Footer varchar2(32767) :=
    'end test_data_pkg;';
  kTestTableName constant varchar2(30) := 'GTT_TEST_DATA';
  function UnderscoreToCamelCase(
      pString varchar2)
    return varchar2;
end test_init;
/
CREATE OR REPLACE PACKAGE BODY "TEST_MK2"."TEST_INIT" 
as
function UnderscoreToCamelCase(
    pString varchar2)
  return varchar2
as
  lResult varchar2(32767) := replace(initcap(replace(pString, '_', ' ')), ' ');
begin
  return lResult;
end UnderscoreToCamelCase;
end test_init;
/
