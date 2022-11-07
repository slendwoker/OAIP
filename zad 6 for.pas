program z6;
var a,b,i:integer;
begin 
  writeln('Введите число: ');
  readln(a);
  for i:=a downto 1 do 
    if a mod i=0 then 
    begin
      b:= b+1;
    end;
    writeln(b);
end.