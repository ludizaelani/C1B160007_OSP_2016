uses crt;
function noan(n : integer) : integer;
begin
if(n < 4) then noan := n
else noan := noan(n-1) + noan(n-2) + noan(n-4);
end;
var n:integer;
begin
read(n);
n:=noan(n);
write(n);
readkey;
end.
