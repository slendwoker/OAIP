
program z11;
var a, b, c, d, e, p:integer;
begin
writeln('Введите трехзначное число');
readln(a);
b:=(a div 100);
c:=((a div 10)mod 10)*10;
d:=(a mod 10)*100;
e:=b+c+d;
p:=a-e;
writeln(p);
end.
