uses crt;
var
ar : array[1..10] of integer;
a, b, c, i : integer;
begin
ar[1]:=4;
ar[2]:=5;
ar[3]:=10;
ar[4]:=5;
ar[5]:=51;
ar[6]:=33;
ar[7]:=49;
ar[8]:=64;
ar[9]:=2;
ar[10]:=7;
a := -1;
for i := 1 to 10 do begin
if a = -1 then a := i
else if ar[i] > ar[a] then a := i;
end;
b := -1;
for i := 1 to 10 do begin
if i <> a then begin
if b = -1 then b := i
else if ar[i] > ar[b] then b := i;
end;
end;
c := -1;
for i := 1 to 10 do begin
if (i <> a) and (i <> b) then begin
if c = -1 then c := i
else if ar[i] > ar[c] then c := i;
end;
end;
writeln(a, ' ', b, ' ', c);
readkey;
end.
