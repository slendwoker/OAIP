procedure pr;
var a:array[1..5] of integer;
   i,g,p,n,min:integer;
 begin
   n:=5;
for i:=1 to n do
 readln(a[i]);
p:=1;
  for i:=2 to n do
   if abs(a[i]) < abs(a[i-1]) then
    p:=i;
   min:=1;
   for i:=2 to n do
     if a[i]<0 then if a[min]>a[i] then min:=i;
  writeln('Минимальный по модулю элемент ', p, ' ', abs(a[p]));
  writeln('Максимальный отрицательный элемент ', min, ' ', a[min]);
 end;
begin
  pr;
  end.

