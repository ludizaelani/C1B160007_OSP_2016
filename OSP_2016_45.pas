uses crt;
Var
ar : array[1..5] of integer;
i : integer;
procedure S(a,b : integer);
var
temp : integer;
begin
temp := ar[a];
ar[a] := ar[b];
ar[b] := temp;
end;
begin
for i := 1 to 5 do read(ar[i]);
S(3,4);
S(4,1);
S(5,2);
S(5,1);
for i := 1 to 4 do begin
write(ar[i], ' ');
end;
writeln(ar[5]);
readkey;
end.
