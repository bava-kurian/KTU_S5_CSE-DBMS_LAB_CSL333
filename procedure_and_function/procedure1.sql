create or replace procedure pr(no number) is 
tot number; 
begin 
	select mark into tot from student5 where rno=no; 
	if(tot>100)then 
		dbms_output.put_line('A'); 
	elsif(tot>70 and tot<100) then 
		dbms_output.put_line('B'); 
	elsif(tot>50 and tot<70) then 
		dbms_output.put_line('C'); 
	else 
		dbms_output.put_line('Fail'); 
	end if; 
end;