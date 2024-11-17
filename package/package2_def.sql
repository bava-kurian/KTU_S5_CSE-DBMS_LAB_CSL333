create or replace package pkg2 as
	procedure p1(r in number);
	function f1(r in number)
	return number;
end;
/