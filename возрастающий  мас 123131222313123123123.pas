begin
var a:array[1..5] of integer;
begin
for var i := 1 to 5 do
 begin
  readln(A[i]);
 end;
  print(a);
 var m:=0;
 var k:=1;
 var i1:=0;
 for var i:=2 to 5 do
   begin
   if a[i]>=a[i-1] then k:=k+1;
   i1:=i;
   end;
 begin
  if i1=k then
    print('YES')
  else print('No');
 end;
end;
end.