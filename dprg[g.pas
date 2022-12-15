uses graphabc;
var i,n: integer;
x1, y1, x0, y0,a,b,h,o,y1h,x1h,x: real;
begin
  writeln('Введите  A');
  readln(a);
  Writeln('Введите B');
  readln(b);
  writeln('Введите шаг');
  readln(h);
  writeln('Введите масштаб');
  readln(n);
ClearWindow;
setwindowsize (900,700);
setwindowtitle (' График функции: 2 * x^3 + (2) * x^2 + (2) * x + (6)');
SetFontColor(clDarkRed);
SetFontSize(10);
setpencolor (clChocolate);
setpenwidth (1);
line (400,0,400,700);
line (0,400,900,400);
SetFontSize(8);
for i:=-20 to 40 do
begin
line (400+i*n,395,400+i*n,405);
textout (395+i*n,410, floattostr (i));
end;
textout (720,430, 'X');
for i:=-30 to 20 do
begin
line (395,400+i*n,405,400+i*n);
textout (370,400+i*n, '');
textout (375,395+i*n, floattostr (-i*(10)));
end;
textout (425,10, 'Y');
a:=400+(a*n);
b:=400+(b*n);
h:=n*h;
o:=a;
for i:=-500 to 500 do
begin
x1:=i/n;
y1:= 2 * power(x1, 3) + (2) * power(x1, 2) + (2) * x1 + (6);
line(trunc(x0), trunc(y0), trunc(400+x1*n), trunc(400-y1*(n/10)), 	clLimeGreen);
if trunc(400+x1*n)=a then line(trunc(400+x1*n), trunc(400-y1*(n/10)), trunc(a), 400, clblue);
if (trunc(400+x1*n)=o) and (o<b) then 
begin 
line(trunc(400+x1*n), trunc(400-y1*(n/10)), trunc(o), 400, clblue); 
x1h:=(i+h)/n;
y1h:=2 * power(x1h, 3) + (2) * power(x1h, 2) + (2) * x1h + (6);
line(trunc(400+x1h*n),trunc(400-y1h*(n/10)), trunc(400+x1*n), trunc(400-y1*(n/10)),clblue);
o:=o+h; 
end;
if trunc(400+x1*n)=b then line(trunc(400+x1*n), trunc(400-y1*(n/10)), trunc(b), 400, clblue); 
x0:=trunc(400+x1*n);
y0:=trunc(400-y1*(n/10));
end;
end.