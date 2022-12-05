function pravno(p,i:integer) :=i;
var a:array[1..5] of integer;
   i,g,p,n,min:integer;
 begin
   n:=5;
for i:=1 to n do
 readln(a[i]);
p:=1;
  for i:=1 to n do
   if a[i]<0 then p:=pravno(p,i);
   print('Номер последнего отрицательного элемента ', p);
 end.
