uses GraphABC;
begin
  SetWindowWidth(1000); 
  SetWindowHeight(1000);
  SetPenColor(clblue);
  moveto(300,200);
  lineto(400,250);
  lineto(300,300);
  lineto(200,250);
  Lineto(300,200);
  Moveto(400,250); // линия 
  Lineto(200,250);
  Circle(450,250,50);
  Circle(150,250,50);
  FloodFill(150,250,clred);// закрасил левый круг
  FloodFill(450,250,clyellow);// закрасил правый круг
  floodfill(300,225,clblue);
  floodfill(300,270,clgreen);
  
end.