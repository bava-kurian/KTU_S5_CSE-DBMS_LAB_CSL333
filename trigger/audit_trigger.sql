create or replace trigger t2 after update or delete on student3 for each row 
begin
	if deleting then
		insert into student_audit values(:old.rollno,:old.name,'deleted data',sysdate);
	else
		insert into student_audit values(:old.rollno,:old.name,'updated data',sysdate);
	end if;
end;
