declare 
	total income.salary%type;
begin
	update income set salary=salary+salary*0.2;
	select sum(salary) into total from income;
	if total>100000 then
		rollback;
	else 
		commit;
	end if;
end;
/