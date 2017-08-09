uses crt;
var
daebak : array [0..2015] of char;
w, x, y, z, i : integer;
procedure saranghae(x : integer; len : integer);
var
i : integer;
store : char;
begin
store := daebak[x];
for i := len-1 downto 0 do begin
if (i = 0) then
daebak[x+((i+1) mod len)] := store
else
daebak[x+((i+1) mod len)] := daebak[x+i];
end;
end;
procedure anyeong(arr_sz : integer; part_sz : integer);
var
i : integer;
begin
for i:= 0 to (arr_sz div part_sz)-1 do
begin
saranghae(i * part_sz, part_sz);
end;
end;
procedure oppa(n : integer);
var
i : integer;
begin
for i := 0 to n-1 do begin
if(i mod 4 = 0) then daebak[i] := 'T'
else if(i mod 4 = 1) then daebak[i] := 'O'
else if(i mod 4 = 2) then daebak[i] := 'K'
else daebak[i] := 'I';
end;
end;
begin
readln(w, x, y, z);
oppa(w);
for i := 1 to x do
anyeong(y, z);
for i := 0 to w-1 do
begin
if(i mod 4 = 0) and (i <> 0) then write(' ');
write(daebak[i]);
end;
writeln;
readkey;
end.
