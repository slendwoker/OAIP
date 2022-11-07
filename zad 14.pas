program z14;
var a,b,c:integer;
begin 
  writeln('введите 3 числа ');
  readln(a,b,c);
  if (b>c) and (b>a) then write(b);
  if (a>c) and (a>b) then write(a);
  if (c>a) and (c>b) then write(c);
end.