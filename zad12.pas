program z12;
var a,b,c:integer;
begin 
  writeln('введите четырехзначное число');
  readln(a);
  b:=(a div 1000)+((a div 100)mod 10)+((a div 10)mod 10)+(a mod 10);
  writeln('сумма= ',b);
  c:=(a div 1000)*((a div 100)mod 10)*((a div 10)mod 10)*(a mod 10);
  writeln('произведение= ',c);
end.