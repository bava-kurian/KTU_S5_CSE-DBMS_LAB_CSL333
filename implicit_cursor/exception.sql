-- create table student(rollno int primary key,name,varchar(10),sessionals number,univ_mark number);
declare  
c exception;  
s int;  
t int;  
sval student%rowtype;  
begin 
	s:=&rollno;  
	select sessionals, univ_mark into sval.sessionals, sval.univ_mark from student  where rollno=s;  
	t:=sval.sessionals+sval.univ_mark;  
	if t>150 then  
		raise c;  
	else  
		dbms_output.put_line('NO ERROR'); 
	end if;
	exception  
when c then  
dbms_output.put_line('ERROR! SESSIONALS+UNIV MARK CANNOT BE 
 GREATER  THAN 150');  
when NO_DATA_FOUND then  
dbms_output.put_line('ERROR! NO DATA FOUND');  
when OTHERS then  
dbms_output.put_line('ERROR! OPERATION NOT POSSIBLE');  
end;
/