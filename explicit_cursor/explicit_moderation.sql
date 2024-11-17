declare 
	cursor c is select*from t1;
	t t1%rowtype;
	
begin
	open c;
	loop
		fetch c into t;
		exit when c%notfound;
		if(t.sessionals between 30 and 34) then
			t.sessionals:=35;
			update t1 set sessionals=t.sessionals where roll_no=t.roll_no;
		end if;
		if(t.univ_mark+t.sessionals>75) then
			insert into t2 values(t.roll_no,t.univ_mark,t.sessionals);
		end if;
	end loop;
end;
/