Program z10;
var i,n,b,m,k: integer;
a:array[1..7] of integer;
begin
  n:=7;
  m:=1;
for i:=1 to n do
 begin
 readln(a[i]);
  end;
  i:=1;
begin
      while i <= n do
        if a[i] < 0 then begin
            for k := i to n - 1 do
                a[k] := a[k+1];
            n := n - 1
        end
        else
            i := i + 1;
        
      for i := 1 to n do
        write(a[i], ' ');
      writeln('');
  end;
end.
