Program z6;
var i,b: integer;
a:array[1..5] of integer;
begin
for i:=1 to 5 do
 begin
  readln(a[i]);
  end;
  for i:=2 to 5 do
    begin
    if a[i]<a[i-1] then inc(b) 
  end;
if b=0 then writeln('УПОРЯДОЧНЫ') else writeln('НЕУПОРЯДОЧНЫ');
end.
