program z19;
var p,a,b,c,d:integer;
begin 
  writeln('p');
  readln(p);
  a:=p div 1000; 
  b:=p div 100 mod 10; 
  c:= p div 10 mod 10;
  d:= p  mod 10;
  if (a=d) and (b=c) then writeln(p, '-палиндром') 
  else writeln(p,'-непалиндром');
end.