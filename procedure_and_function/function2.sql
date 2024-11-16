create or replace function f1(no in number) return number is 
s number:=0; 
i number:=2; 
ab number:=1; 
begin 
while(ab<=no) 
loop 
s:=s+i; 
i:=i+2; 
ab:=ab+1; 
end loop; 
return(s); 
end; 