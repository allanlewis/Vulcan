CREATE OR REPLACE FUNCTION "TEST_MK2"."EXAMPLE1" (
      str varchar2,
      num number)
    return varchar2
  as
  begin
    return str || to_char(num);
  end example1;
/
