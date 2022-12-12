uses GraphABC;
var i:integer;
begin
    Circle(50,100,10);
   FloodFill(50,100,rgb(random(256), random(256), random(256)));
  for i:=1 to 4 do begin
    Circle(50+(30*i),100,10);
   FloodFill(50+(30*i),100,rgb(random(256), random(256), random(256)));
   end;
end.
