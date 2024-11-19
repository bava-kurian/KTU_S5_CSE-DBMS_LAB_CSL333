declare
n number;
s number;
i number;
l number;
r number;
p number;
begin;
n:=&n;
p:=n;
l=lenghth(to_char(p));
while(p>0)
loop
r:=mod(p,10);
s:=power(r,len);
p:=trunc(p/10);
end loop;
if p=s then
	dbms_output.put_line("Is armstring");
else
	dbms_output.put_line("Not armstring");
end if;
end;
