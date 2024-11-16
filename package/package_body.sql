create or replace package body s as
procedure p(r in number) is
g varchar(1); 
t number; 
begin 
select physics_mark+chemistry_mark+maths_mark into t from student1 where reg_no=r; 
t:=t/3; 
if t between 80 and 100 then 
g:='a'; 
elsif t between 70 and 80 then 
g:='b'; 
elsif t between 50 and 70 then 
g:='c'; 
else 
g:='f'; 
end if; 
dbms_output.put_line('grade is: '||g); 
end p;
function f(r in number) return number is
t number;
begin 
select physics_mark+chemistry_mark+maths_mark into t from student1 where reg_no=r;return t; 
end f; 
end; 
/

