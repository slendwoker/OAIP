var i,n,k,m: integer;
a:array[1..7] of integer;
begin
  n:=7;
  m:=1;
for i:=1 to n do
 begin
 readln(a[i]);
  end;
  for i:= 1 to n do
    begin
    if a[i]>0 then begin
    k:=i;
    break;
    end;
      end;
      for i:= 1 to n do
        begin
        if (a[m]> a[i]) then
         m:=i;
end;
begin
      for i := k to n-1 do
        a[i] := a[i+1];
      n := n-1;
      for i := m to n-1 do
        a[i] := a[i+1];
      n := n-1;
        
      for i := 1 to n do
        write(a[i], ' ');
      writeln('');
  end;
end.
