declare 
s varchar(20);
r varchar(20);
l number;
i number;
begin
	s:='&s';
	l:=length(s);
	for i in reverse 1..l loop
		r:=r||substr(s,i,1);
	end loop;
	dbms_output.put_line('reverse'||r);
end;