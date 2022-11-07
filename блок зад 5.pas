var i,su,sum: integer;
a:array[1..5] of integer;
b:array[1..5] of integer;
begin
for i:=1 to 5 do
 begin
  readln(a[i]);
  su:=a[i]+su;
  end;
  for i:=1 to 5 do
 begin
  readln(b[i]);
sum:=b[i]+sum;
end;
if su>sum then
for i:=1 to 5 do
  begin
  b[i]:=b[i]*10;
  end;
  if sum>su then
    for i:=1 to 5 do
      begin
    a[i]:=a[i]*10;
    end;
writeln('a= ',a,'b= ',b);
end.
