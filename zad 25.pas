program z25;
var a,b,c,d,e,f,v,g,n,l:integer;
begin 
  writeln('введите 2 числа:руб,коп');
  readln(a,b);
  writeln('введите 2 числа превышающих числа a и b');
  readln(c,d);
  v:= a*100 +b;
  g:= c*100 + d;
  f:= g-v;
  n:= f div 100;
  l:= f mod 100;
  writeln(n, ' руб ', l,' коп')
  
end.