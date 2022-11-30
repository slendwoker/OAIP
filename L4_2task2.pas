uses GraphABC;
begin
setpencolor(clRed);
setbrushcolor(clRed);
Circle(175, 100, 10);
Line(150, 180, 175, 100);
Line(175, 100, 200, 180);
Line(200, 180, 150, 180);
floodfill(175, 170, clred);
setpencolor(clBlue);
setbrushcolor(clBlue);
Circle(100, 100, 10);
Line(100, 100, 130, 180);
Line(130, 180, 150, 180);
Line(160, 150, 100, 100);
floodfill(110, 120, clblue);
setpencolor(clGreen);
setbrushcolor(clGreen);
Circle(245, 100, 10);
Line(200, 180, 225, 180);
Line(225, 180, 245, 100);
Line(245, 100, 190, 150);
floodfill(210, 170, clgreen);
end.