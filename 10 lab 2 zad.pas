var perv:array[1..8,1..6] of integer;
var vtor:array[1..8] of integer;
var i,j,c,d,g:integer;
begin
  for i:=1 to 8 do
    for j:= 1 to 6 do
      perv[i,j]:=random(40)-1;
    writeln(perv);
    c:=1;
   while c<=8 do begin
     for d:=1 to 6 do begin
       if perv[c,d]<0 then begin 
       vtor[c]:=-1;
       break;
       end;
       if d=6 then vtor[c]:=1;
       end;
       c:=c+1;
       end;
      writeln(vtor);
end.
