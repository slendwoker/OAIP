Program z12;
var a, b, c, n: integer;

begin
  writeln('Введите число');
  readln(n);
  c:=1;
  while n>0 do
    begin
  a:=a+(n mod 10);
  c:=c*(n mod 10);
  inc(b);
  n:=n div 10;
  end;
  writeln('sum ', a);
  writeln('kol ', b);
  writeln('pro ', c);
end.

