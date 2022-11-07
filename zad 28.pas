program z28;
var a,b,c:integer;
begin
writeln('Введите количество коров, непрывышающее 100');
readln(a);
if (10<a) and (a<20) then writeln(a, ' korov') else
if a mod 10=1 then writeln(a,' korova') else
if a mod 10=0 then writeln(a,' korov') else
if (a mod 10<5) and (a mod 10>1) then writeln(a, ' korovy')
else
  if a mod 10 >4 then writeln(a, ' korov');



end.