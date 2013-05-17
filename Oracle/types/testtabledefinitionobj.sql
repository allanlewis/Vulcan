CREATE OR REPLACE TYPE "TEST_MK2"."TESTTABLEDEFINITIONOBJ" 
as
  object
  (
    TableName varchar2(30),
    TableColumns TestTableColumnListObj,
    DefaultColumns TestTableColumnListObj,
    constructor function TestTableDefinitionObj(
        pTableColumns TestTableColumnListObj)
      return self as result,
    member procedure CreateTestTable(
        pExecute boolean := false),
    member procedure DropTestTable(
        pExecute boolean := false),
    member procedure CreatePackage(
        pExecute boolean := false)
  );
/
CREATE OR REPLACE TYPE BODY "TEST_MK2"."TESTTABLEDEFINITIONOBJ" 
as
constructor function TestTableDefinitionObj(
    pTableColumns TestTableColumnListObj)
  return self as result
as
begin
  self.TableName := TEST_INIT.kTestTableName;
  --TODO: check column validity
  self.TableColumns := pTableColumns;
  self.DefaultColumns := new TestTableColumnListObj();
  self.DefaultColumns.extend;
  self.DefaultColumns(1) := new TestTableColumnObj( pColumnName => 'test_id', pDataType => 'number', pDataLength => null);
  self.DefaultColumns.extend;
  self.DefaultColumns(2) := new TestTableColumnObj( pColumnName => 'test_name', pDataType => 'varchar2', pDataLength => 50);
  return;
end TestTableDefinitionObj;
member procedure CreateTestTable(
    pExecute boolean := false)
as
  sCreateTable StringBuilder := new StringBuilder();
begin
  sCreateTable.Append('create global temporary table ' || self.TableName || '(');
  for col in
  (select   *
    from table(self.DefaultColumns)
  )
  loop
    sCreateTable.Append(col.ColumnName || ' ' || col.DataType);
    if col.DataLength is not null then
      sCreateTable.Append('(' || col.DataLength || ')');
    end if;
    sCreateTable.Append(', ');
  end loop;
  for col in
  (select   *
    from table(self.TableColumns)
  )
  loop
    sCreateTable.Append(col.ColumnName || ' ' || col.DataType);
    if col.DataLength is not null then
      sCreateTable.Append('(' || col.DataLength || ')');
    end if;
    sCreateTable.Append(', ');
  end loop;
  sCreateTable.String := rtrim(sCreateTable.String, ', ');
  sCreateTable.Append(')');
  dbms_output.put_line(sCreateTable.String);
  if pExecute then
    begin
      execute immediate sCreateTable.String;
    exception
    when others then
      dbms_output.put_line('Error creating table: ' || sqlerrm);
      raise;
    end;
  end if;
end CreateTestTable;
member procedure DropTestTable(
    pExecute boolean := false)
as
  sDropTable StringBuilder := new StringBuilder();
begin
  sDropTable.Append('drop table ' || self.TableName);
  dbms_output.put_line(sDropTable.String);
  if pExecute then
    begin
      execute immediate sDropTable.String;
    exception
    when others then
      dbms_output.put_line('Error dropping table: ' || sqlerrm);
      raise;
    end;
  end if;
end DropTestTable;
member procedure CreatePackage(
    pExecute boolean := false)
as
  sTestTablePkg_Spec StringBuilder := new StringBuilder();
  --  sTestTablePkg_Body StringBuilder;
begin
  sTestTablePkg_Spec.AppendLine(TEST_INIT.sTestTablePkg_Spec_Header);
  sTestTablePkg_Spec.AppendLine(TEST_INIT.sTestTablePkg_Spec_InsertRow);
  for col in
  (select   *
    from table(self.DefaultColumns)
  )
  loop
    declare
      lColumnName varchar2(30) := TEST_INIT.UnderscoreToCamelCase(pString => col.ColumnName);
    begin
      sTestTablePkg_Spec.Append('p' || lColumnName || ' ' || col.DataType || ', ');
    end;
  end loop;
  for col in
  (select   *
    from table(self.TableColumns)
  )
  loop
    declare
      lColumnName varchar2(30) := TEST_INIT.UnderscoreToCamelCase(pString => col.ColumnName);
    begin
      sTestTablePkg_Spec.Append('p' || lColumnName || ' ' || col.DataType || ', ');
    end;
  end loop;
  sTestTablePkg_Spec.String := rtrim(sTestTablePkg_Spec.String, ', ');
  sTestTablePkg_Spec.Append(');');
  sTestTablePkg_Spec.AppendLine(TEST_INIT.sTestTablePkg_Spec_Footer);
  dbms_output.put_line(sTestTablePkg_Spec.String);
  if pExecute then
    begin
      execute immediate sTestTablePkg_Spec.String;
    exception
    when others then
      dbms_output.put_line('Error creating package: ' || sqlerrm);
      raise;
    end;
  end if;
end CreatePackage;
end;
/
