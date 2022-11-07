program z13;
var a,b,c,d:integer;
begin 
  writeln('введите 3 числа');
  readln(a,b,c);
  d:=a;
  if b<d then d:=b;
  if c<d then d:=b;
  writeln(d);
end.