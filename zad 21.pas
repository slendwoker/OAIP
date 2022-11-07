program z21;
var a,b,c:integer;
begin 
  writeln('введите 3 целых числа');
  readln(a,b,c);
  if (a mod 2=0) or (b mod 2=0) or (c mod 2=0) and ((a mod 2=1) or (b mod 2=1) or (c mod 2=1)) then 
    writeln('ecть число четное ') else
      writeln('все числа нечетные');
   
end.