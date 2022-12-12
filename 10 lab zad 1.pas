var a:array[1..6,1..8] of integer;
var b:array[1..6] of integer;
var i,j,c,d:integer;
begin
  for i:=1 to 6 do
    for j:= 1 to 8 do
      a[i,j]:=random(8)-1;
    writeln(a);
    c:=1;
   while c<=6 do 
     for d:=1 to 8 do begin
       if abs(a[c,d])>4 then begin
       b[c]:=a[c,d];
       c:=c+1;
       break;
       end;
       if d=8 then begin
       b[c]:=0;
       c:=c+1;
       break
       end;
       end;
      writeln(b);
end.