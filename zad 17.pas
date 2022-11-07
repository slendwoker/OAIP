program z17;
var a,b,c,d,x,x1,x2:real;
begin 
  writeln('введите 3 числа ');
  readln(a,b,c);
  writeln('ваше уравнение ',a,'x^2+',b,'x+',c,'=0');
  d:=sqr(b)+4*a*c;
  writeln('D= ',d);
  if d<0 then writeln('уравнение не имеет смысла ')
  else 
   if d=0 then x:=-b/(2*a)
  else 
    if d>0 then x1:=(-b+sqrt(d))/(2*a);
    writeln('x1= ',x1);
    x2:=(-b-sqrt(d))/(2*a);
    writeln('x2=',x2);
  end.