program sbd;
var a,e,c,x,h:real;
function m(x:real):real;
begin
readln(x);
if x<-9 then 
  m:=(11 / x)*(power(x,3) / cos(x));
  if (x>=-4) and (x<2) then
   m:= (96 / power(x,2))*(exp(x) / 27);
  if (x>=-9) and (x<-4 )then
  m:=(power(x,(1/3))/cos(x))*(sin (x)/cos (x) / power(e,x));
  if x>=2 then
  m:=cos(2*a)+power(x,2)
end;
begin
x:=-11;
e:=4;
h:=0.3;
while x<=4 do 
begin
  if x<-9 then 
  c:=(11 / x)*(power(x,3) / cos(x));
  if (x>=-4) and (x<2) then
   c:= (96 / power(x,2))*(exp(x) / 27);
  if (x>=-9) and (x<-4 )then
  c:=(power(x,(1/3))/cos(x))*(sin (x)/cos (x) / power(e,x));
  if x>=2 then
  c:=cos(2*a)+power(x,2);
  writeln('x = ',x, ' y = ',c:3:2);
  x:=x+0.3;
  end;
end.
