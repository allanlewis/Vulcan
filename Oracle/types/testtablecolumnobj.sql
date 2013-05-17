CREATE OR REPLACE TYPE "TEST_MK2"."TESTTABLECOLUMNOBJ" 
as
  object
  (
    ColumnName varchar2(30),
    DataType   varchar2(30),
    DataLength integer,
    constructor
  function TestTableColumnObj(
      pColumnName varchar2,
      pDataType   varchar2,
      pDataLength integer)
    return self
  as
    result,
    member function IsValid
    return boolean);
/
CREATE OR REPLACE TYPE BODY "TEST_MK2"."TESTTABLECOLUMNOBJ" 
as
  constructor
function TestTableColumnObj(
    pColumnName varchar2,
    pDataType   varchar2,
    pDataLength integer)
  return self
as
  result
as
begin
  self.ColumnName := pColumnName;
  self.DataType := pDataType;
  self.DataLength := pDataLength;
  return;
end;
member function IsValid
  return boolean
as
begin
  return true;
end IsValid;
end;
/
