var a:array[1..20] of integer;
n,m,k,i: integer; 
begin
for i := 1 to 20 do
 begin
  a[i] := random(100);
 end;
  write(a);
 m:=0;
 k:=1;
 for i:=2 to 20 do
  if a[i]>=a[i-1] then k:=k+1
  else if (a[i]<a[i-1])or(i=20) then
 begin
  if k>m then m:=k;
  k:=1;
 end;
writeln('Максимальная длина  = ',m)
end.