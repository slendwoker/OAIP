var i,sua,sub: integer;
A:array[1..5] of integer;
B:array[1..5] of integer;
begin
for i:=1 to 5 do
 begin
  readln(A[i]);
  sua:=A[i]+sua;
  end;
  for i:=1 to 5 do
 begin
  readln(B[i]);
sub:=B[i]+sub;
end;
if sua>sub then
for i:=1 to 5 do
  begin
  B[i]:=B[i]*10;
  end;
  if sub>sua then
    for i:=1 to 5 do
      begin
    A[i]:=A[i]*10;
    end;
writeln('первый массив= ',A, 'второй массив= ',B);
end.
