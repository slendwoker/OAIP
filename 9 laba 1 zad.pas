function proz(x,y: integer) := x*y;
const n=5;
var a:array[1..n]of integer;
var i,x,y:integer;
begin 
  for i:=1 to n do
 readln(a[i]);
x:=1;
for i:=1 to n do 
  if i mod 2 = 0  then 
  begin
    y:=a[i];
  x:=proz(x,y);
  end;
  Writeln(x);
end.