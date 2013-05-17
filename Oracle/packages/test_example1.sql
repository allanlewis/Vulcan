CREATE OR REPLACE PACKAGE "TEST_MK2"."TEST_EXAMPLE1" 
as
  procedure Setup;
  procedure TearDown;
  procedure Run;
end test_example1;
/
CREATE OR REPLACE PACKAGE BODY "TEST_MK2"."TEST_EXAMPLE1" 
as
procedure Setup
as
  lColumns TestTableColumnListObj := new TestTableColumnListObj();
  lTable TestTableDefinitionObj;
begin
  --define test table columns
  lColumns.extend;
  lColumns(1) := new TestTableColumnObj( pColumnName => 'str', pDataType => 'varchar2', pDataLength => 100);
  lColumns.extend;
  lColumns(2) := new TestTableColumnObj( pColumnName => 'num', pDataType => 'number', pDataLength => null);
  --create test table
  lTable := new TestTableDefinitionObj(pTableColumns => lColumns);
  lTable.CreateTestTable(true);
  --insert test data
end Setup;
procedure TearDown
as
begin
  execute immediate 'drop table ' || TEST_INIT.kTestTableName;
end TearDown;
procedure Run
as
begin
  Setup;
  TearDown;
end Run;
end test_example1;
/
