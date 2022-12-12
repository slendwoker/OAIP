procedure pr;
var A:array[1..8,1..8] of integer;
var B:array[1..8] of integer;
var i,j,c,d,min,sr,sum:integer;
begin
  for i:=1 to 8 do
    for j:= 1 to 8 do
      A[i,j]:=random(10000)-1;
    writeln(A);
    c:=1;
   while c<=8 do begin
     min:=1;
     for d:=2 to 8 do
       if A[c,d]<A[c,min] then min:=d; 
       B[c]:=A[c,min];
       c:=c+1;
       end;
       for i:=1 to 8 do
         sum:=b[i]+sum;
       sr:=round(sum/8);
         writeln(sr);
      writeln(B);
      for i:=1 to 8 do begin
         if B[i]=sr then begin 
         writeln('YES');
         break;
         end
         else begin writeln('NO'); break;
         end; end;
end;
begin
  pr;
end.
