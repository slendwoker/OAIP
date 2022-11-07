Program z13;
var i,n,p1,min,max,j: integer;
a:array[1..5] of integer;
begin
  n:=5;
for i:=1 to n do
 begin
 readln(a[i]);
  end;
  min := 1;
  max := 1;
  for i := 1 to n do
  begin
    if a[i] > a[max] then
      max := i;
    if a[i] < a[min] then
      min := i;
  end;
  j:= a[max];
  a[max] := a[min];
  a[min] := j;
  writeln(a);
end.
