program z26;
var a, b, c:integer;
begin
writeln('Введите 3 стороны треугольника');
readln(a,b,c);
if (a>=b+c) or (b>=a+c) or (c>=b+a) then writeln(' треугольник не существует') else writeln(' треугольник существует');
end.
