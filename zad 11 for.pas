Program z11;
var n, i, c:integer;
begin 
  Writeln('Введите число: ');
  readln(n);
  if n=0 then writeln('0!=1');
  if n<0 then writeln('Только для положительных чисел ')
  else 
  begin
    c:=1;
    for i:=1 to n do 
      c:=c*i;
    writeln('Факториал: ',c);
  end;
  
end.