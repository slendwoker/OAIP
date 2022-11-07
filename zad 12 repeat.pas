Program z12;
var a,b,n,c,d:integer;
begin
  d:=1;
writeln('Введите диапазон чисел');
readln(a,b);
n:=a;
repeat
if (n mod 2)=0 then
begin
  d:=d*n;
end
else
begin
  c:=c+n;
end;
inc(n);
until n>b;
writeln('sum ', c,' pro ', d);
end.


