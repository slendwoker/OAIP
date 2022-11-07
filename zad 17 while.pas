program z17;
var k,b,c:integer;
begin
  writeln('Введи время в минутах ');
  readln(b);
  k:=1;
  while c<b do 
    begin
  k:=k*2;
  inc(c);
  end;
   writeln(k);
end.