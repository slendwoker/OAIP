uses GraphABC;
var a,b:integer;
begin
SetWindowWidth(1000); 
SetWindowHeight(1000);
Moveto(100,100);
lineto(300,200);
lineto(500,100);
a := 100;
b := 100;
repeat 
  SetPenColor(clwhite);
  Rectangle (a, b, a+10, b+10);
  SetPenColor(clblack);
	Rectangle (a, b, a+10, b+10);
  a:=a+1;
  if (a mod 2)=0 then
		b:=b+1;
until b>200;
repeat
  SetPenColor(clwhite);
  Rectangle (a, b, a+10, b+10);
  SetPenColor(clblack);
	Rectangle (a, b, a+10, b+10);
  a:=a+1;
  if (a mod 2)=0 then
		b:=b-1;
until b<100;
end.