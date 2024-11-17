create or replace trigger tg_mark before update or insert on t1 for each row
begin
	if :new.univ_mark >70 then
		raise_application_error(-20001,'Invalid univ mark');
	end if;
end;
/