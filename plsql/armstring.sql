declare
n number;
s number:=0;
i number;
l number;
r number;
p number;
begin
n:=&n;
p:=n;
l:=length(to_char(p));
while(p>0)
loop
r:=mod(p,10);
s:=s+power(r,l);
p:=trunc(p/10);
end loop;
dbms_output.put_line('s='||s);

if n=s then
	dbms_output.put_line('Is armstring');
else
	dbms_output.put_line('Not armstring');
end if;
end;
/
