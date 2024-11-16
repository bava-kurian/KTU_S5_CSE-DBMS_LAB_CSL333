declare
	i hostel_mess%rowtype;
	cursor c is select * from hostel_mess;
	fees number;
begin
	open c;
	loop
		fetch c into i;
		exit when c%notfound;
		if i.veg_nonveg='veg' then
			fees:=i.messfee+i.messfee*0.1;
			insert into vegetarian values(i.stud_no,i.name,i.messfee*0.1,sysdate);
		else
			fees:=i.messfee+i.messfee*0.2;
			insert into non_vegetarian values(i.stud_no,i.name,i.messfee*0.1,sysdate);
		end if;
	end loop;
end;
/
		