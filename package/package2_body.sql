create or replace package body pkg2 as 
	procedure p1(r in number) is
begin
	dbms_output.put_line('hello,'||r);
end p1;
	function f1(r in number) return number is
begin
	return(r);
end f1;
end;
