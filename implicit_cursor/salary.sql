--create table income(name varchar(10),salary int);
declare
	i income%rowtype;
begin
	select salary into i.salary from income where ename='Sindhu';
	if(i.salary>10000) then 
		i.salary:=i.salary+(i.salary*0.3);
	elsif(i.salary>8000) then
		i.salary:=i.salary+(i.salary*0.2);
	else
		i.salary:=i.salary+(0.1*i.salary);
	end if;

	update income set salary=i.salary where ename='Sindhu';
end;
/