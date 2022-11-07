Program z1;
var i :integer;
a:array [1..20] of integer;
begin
  for i:= 1 to 20 do
    begin
    readln(a[i]);
  if a[i]>0 then
    a[i]:= 0;
  if a[i]<0 then 
    a[i]:=sqr(a[i]);
  end;
  writeln(a)
end.