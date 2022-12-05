var A:array[1..8,1..8] of integer;
var B:array[1..8] of integer;
var sr:array[1..8] of integer;
var i,j,c,d,max,sum:integer;
begin
  for i:=1 to 8 do
    for j:= 1 to 8 do
      A[i,j]:=random(1)-1;
    writeln(A);
    c:=1;
   while c<=8 do begin
     max:=1;
     for d:=2 to 8 do
       if A[c,d-1]=A[c,d] then max:=max+1; 
     if max=8 then sr[c]:=1
     else sr[c]:=-1;
       c:=c+1;
       end;
       print(sr);
end.
