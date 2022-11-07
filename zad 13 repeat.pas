program z13;
var a, h, c, n: integer;
var j: real;
begin
  a:=3;
  h:=6;
  repeat
    inc(c);
    j:=j+a;
    a:=a+h;
  until c=10;
  writeln( j/10);
end.
