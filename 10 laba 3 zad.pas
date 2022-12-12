var perv:array[1..8,1..8] of integer;
var vtor:array[1..8] of integer;
var i,j,c,d,g:integer;
begin
  for i:=1 to 8 do
    for j:= 1 to 8 do
      perv[i,j]:=random(7)-1;
    writeln(perv);
    c:=1;
   while c<=8 do 
     for d:=2 to 8 do begin
       if (perv[c,d]+perv[c,d-1])=7 then begin 
       vtor[c]:=1;
       c:=c+1;
       break;
       end;
       if d=8 then begin 
       vtor[c]:=-1;
       c:=c+1;
       end;
       end;
      writeln(vtor);
end.
