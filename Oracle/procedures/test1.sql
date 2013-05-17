CREATE OR REPLACE PROCEDURE "TEST_MK2"."TEST1" 
as
  lColumns TestTableColumnListObj := new TestTableColumnListObj();
  lTable TestTableDefinitionObj;
--  sPkg varchar2(32767);
begin
  lColumns.extend;
  lColumns(1) := new TestTableColumnObj( pColumnName => 'col_1', pDataType => 'varchar2', pDataLength => 100);
  lColumns.extend;
  lColumns(2) := new TestTableColumnObj( pColumnName => 'col_2', pDataType => 'number', pDataLength => null);
  lTable := new TestTableDefinitionObj(pTableName => 'test_table_1', pTableColumns => lColumns);
  lTable.CreatePackage;
  null;
end test1;
/
