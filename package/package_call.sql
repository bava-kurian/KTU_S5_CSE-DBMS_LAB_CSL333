declare 
r number; 
t number; 
begin 
r:=&rollno; 
t:=s.f(r); 
s.p(r); 
dbms_output.put_line('total mark: '||t); 
end; 