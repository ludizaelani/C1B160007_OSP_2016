uses crt;
var x,y: integer;
begin
x := 1;
y := 0;
while(x <= 10) do begin
y := y + x;
x := x + x;
end;
writeln(y);
readkey;
end.
