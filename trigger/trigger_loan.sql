create or replace trigger tr_loan after update on account for each row when (new.balance<0) 
begin
	insert into loan values(:old.accno,:new.balance*-1,:old.branch);
	insert into borrower values(:old.cname,:old.accno);
end;
/