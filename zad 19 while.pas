program z19;
var k,n:integer;
begin
  writeln('Введие число ');
  readln(n);
 while n<>0 do
        begin
         k:=n mod 10;
        write(k);
         n:=n div 10;
        end;
end.