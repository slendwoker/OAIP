program zad13;
var a,b:integer;
var h,k,m:real;
begin
writeln('Введите отрезок');
readln(a,b);
writeln('Введите шаг');
readln(h);
m:=a;
repeat
  k:=3*(sqr(m))-(Power (2,m));
  m:=m+h;
  writeln('y=',k);
until m>b;
end.
