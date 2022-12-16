var text1,text2:text;
var s:string;
i,k:integer;
begin
  i:=0;
  var n:=readinteger('введите переменную');
  assign(text1,'C:\Users\yarov\OneDrive\Рабочий стол\13-14 Python\text1.txt');
  assign(text2,'C:\Users\yarov\OneDrive\Рабочий стол\13-14 Python\text2.txt');
  reset(text1);
  rewrite(text2);
  while not eof(text1) do 
  begin
    readln(text1,s);
    inc(i);
    if i=k then
    begin
      s:=' ';
      writeln(text2,s);
      s:='';
      end;
    writeln(text2,s)
  end;
close(text1);
close(text2);
end.
