CREATE OR REPLACE PACKAGE "TEST_MK2"."TEST_ASSERT" 
as
  procedure Fail(
      pMessage varchar2);
  procedure is_true(
      pCondition boolean,
      pMessage   varchar2);
  procedure equals(
      pExpected varchar2,
      pActual   varchar2,
      pMessage  varchar2);
end test_assert;
/
CREATE OR REPLACE PACKAGE BODY "TEST_MK2"."TEST_ASSERT" 
as
procedure Fail(
    pMessage varchar2)
as
begin
  error.throw(error.assertion_failure, pMessage);
end Fail;
procedure is_true(
    pCondition boolean,
    pMessage   varchar2)
as
  lMessage varchar2(4000) := pMessage;
begin
  if not pCondition then
    Fail(lMessage);
  end if;
end is_true;
procedure equals(
    pExpected varchar2,
    pActual   varchar2,
    pMessage  varchar2)
as
  lMessage varchar2(4000) := pMessage || ' (Expected: ''' || pExpected || '''; actual: ''' || pActual || ''')';
begin
  if pExpected != pActual then
    Fail(lMessage);
  end if;
end equals;
end test_assert;
/
