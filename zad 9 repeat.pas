Program z9;
var x,n:integer; y:real;
begin 
  readln(n);
  x:=1;
  y:=1;
  begin 
    repeat
      y:=y*1/x;
      x:=x+1;
    until x>n;
  end;
  writeln(y:3:2);
end.