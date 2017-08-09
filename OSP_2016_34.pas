uses crt;
Var
ar : array[1..1000] of Boolean;
i,j : integer;
begin
for i := 1 to 1000 do
ar[i] := false;
for i := 1 to 1000 do begin
j := i;
while(j <= 1000) do begin
ar[j] := not(ar[j]);
j := j + i;
end;
end;
writeln(i);
writeln(j);
readln;
end.
