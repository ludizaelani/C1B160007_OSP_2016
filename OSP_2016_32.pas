uses crt;
function meong(x: longint):integer;
begin
if (x = 0) then
meong := 0
else if (x mod 2 = 1) and ((x div 2) mod 2 = 1) then
meong := meong((x div 2) div 2) + 1
else
meong := meong(x + 1) + 1;
end;
begin
writeln(meong(888));
readkey;
end.
