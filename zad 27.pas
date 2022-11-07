program z27;
var a, b, c:integer;
begin
writeln('Введите 3 стороны треугольника');
readln(a,b,c);
if (a>=b+c) or (b>=a+c) or (c>=b+a) then writeln('impossible')
else if ((sqr(a))=(sqr(b))+(sqr(c))) or ((sqr(b))=(sqr(a))+(sqr(c))) or ((sqr(c))=(sqr(b))+(sqr(a))) then writeln('rectangular')
else if ((sqr(a))>(sqr(b))+(sqr(c))) or ((sqr(b))>(sqr(a))+(sqr(c))) or ((sqr(c))>(sqr(b))+(sqr(a))) then writeln('obtuse')
else writeln('acute');
end.
