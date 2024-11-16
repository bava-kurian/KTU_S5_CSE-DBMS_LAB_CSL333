create or replace function f1(r in number) return number is
p student1.physics_mark%type;
c student1.chemistry_mark%type;
m student1.maths_mark%type;
t number;
begin
	select physics_mark,chemistry_mark,maths_mark into p,c,m from student where REG_NO=r;
	t:=p+c+m;
	return(t);
end;
/