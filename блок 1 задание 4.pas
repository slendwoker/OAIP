Program z4;
var i,c,d,k: integer;
a:array[1..30] of integer;
b:array[1..30] of integer;
begin
  c:=-99;
  d:=67;
  k:=0;
  write('Первый массив(А): ');
for i:=1 to 30 do
 begin
  a[i]:=random(d-c+1)+c;    
       write(a[i], ' ');
       if a[i] mod 2 =0 then
         begin
         inc(k);
         b[k]:=a[i];
         end;
    end;
    writeln;
    write('Второй массив(В): ');
    for i:=1 to k do
     write(b[i], ' ');
end.
