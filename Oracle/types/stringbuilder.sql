CREATE OR REPLACE TYPE "TEST_MK2"."STRINGBUILDER" 
as
  object
  (
    String varchar2(32767),
    constructor function StringBuilder
      return self as result,
    constructor function StringBuilder(
        pString varchar2)
      return self as result,
    member procedure Append(
        pString varchar2),
    member procedure AppendLine(
        pString varchar2)
  );
/
CREATE OR REPLACE TYPE BODY "TEST_MK2"."STRINGBUILDER" 
as
constructor function StringBuilder
  return self as result
as
begin
  self.String := null;
  return;
end StringBuilder;
constructor function StringBuilder(
    pString varchar2)
  return self as result
as
begin
  self.String := pString;
  return;
end StringBuilder;
member procedure Append(
    pString varchar2)
as
begin
  self.String := self.String || pString;
end Append;
member procedure AppendLine(
    pString varchar2)
as
begin
  if self.String is not null then
    self.String := self.String || chr(10);
  end if;
  self.Append(pString);
end AppendLine;
end;
/
