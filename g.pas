Uses Crt;
var a, b, h, s, y: real; // ввод интервалов, s - формула трапеций, у - ньютона лейбница
n:integer;
function f(x: real): real; // задаем функцию кривой
begin
  f := 2 * power(x, 3) + (2) * power(x, 2) + (2) * x + (6); // функция самой кривой
end;
//первообразная
function f1(x: real): real;
begin
  f1 := 0.5 * power(x, 4) + 2 / 3 * power(x, 3) + power(x, 2) + 6 * x; // нашли первообразнуюn
end;
procedure vvod_a ;
begin
writeln('Введите левую границу интервала a=');
  readln(a);
writeln('Введите правую границу интервала b=');
  readln(b);
writeln('Введите число разбиений n=');
  readln(n);
end;
procedure nl ;
var i: integer;
begin
  h := (b - a) / n; //по формуле  Ньютона-Лейбница
  s := (f(a) + f(b)) / 2;
  for i := 1 to n - 1 do
    s := s + f(a + i * h);
  s := s * h;
  writeln('Площадь трапеции ', s:0:5);
  Writeln(' ')
end;
procedure yt ;
begin
y := f1(b) - f1(a);
  writeln('Абсолютная погрешность=', (y - s):0:5);
  writeln('Относительная погрешность=', (y - s) / y);
  Writeln('')
end;
var bl:integer;
begin
   ClrScr;
  Writeln('███████████████████████████');
  Writeln('███████████████████████████');
  Writeln('███████▀▀▀░░░░░░░▀▀▀███████');
  Writeln('████▀░░░░░░░░░░░░░░░░░▀████');
  Writeln('███│░░░░░░░░░░░░░░░░░░░│███');
  Writeln('██▌│░░░░░░░░░░░░░░░░░░░│▐██');
  Writeln('██░└┐░░░░░░░░░░░░░░░░░┌┘░██');
  Writeln('██░░└┐░░░░░░░░░░░░░░░┌┘░░██');
  Writeln('██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██');
  Writeln('██▌░│██████▌░░░▐██████│░▐██');
  Writeln('███░│▐███▀▀░░▄░░▀▀███▌│░███');
  Writeln('██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██');
  Writeln('██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██');
  Writeln('████▄─┘██▌░░░░░░░▐██└─▄████');
  Writeln('█████░░▐█─┬┬┬┬┬┬┬─█▌░░█████');
  Writeln('████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████');
  Writeln('█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████');
  Writeln('███████▄░░░░░░░░░░░▄███████');
  Writeln('██████████▄▄▄▄▄▄▄██████████');
  Writeln('███████████████████████████');
  While True do 
  begin
  Textcolor(Yellow);
  Writeln('ПОСМОТРИТЕ JOJO!!!!! JOJO ЛУЧШЕЕ АНИМЕ В МИРЕ');
  textcolor(green);
  Writeln('Выберите команду для дальнейших действий:');
  Writeln('1 - ввод значений ');
  Writeln('2- площадь трапеции');
  Writeln('3- погрешность');
  Writeln('4 - выход из программы');
  readln(bl);
   ClrScr;
  Case bl of 
  1: vvod_a;
  2: if (a=b) or (n=0) then
    begin
    textcolor(red);
    writeln('Вы не ввели значения. PS.Всегда выбирайте сначала 1-ю команду:)');
        end
        else nl;
  3: if (a=b) or (n=0) then
    begin
    textcolor(red);
    writeln('Вы не ввели значения PS.Всегда выбирайте сначала 1-ю команду:)'); 
        end
        else yt;
  4: exit;
  end;
end;
end.


