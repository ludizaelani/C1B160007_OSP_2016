uses crt;
var
isi : array[1..10] of integer;
i : integer;
procedure Whatsup(l, r : integer);
var
X : integer;
begin
X := isi[l];
isi[l] := isi[r];
isi[r] := X;
end;
procedure naoooon(l, r : integer);
var
ini : integer;
kiri, kanan : integer;
begin
if(l < r) then begin
kiri := l;
kanan := r;
ini := isi[(kiri + kanan) div 2];
while(kiri < kanan) do begin
while(isi[kiri] > ini) do kiri := kiri + 1;
while(isi[kanan] < ini) do kanan := kanan - 1;
if(kiri < kanan) then Whatsup(kiri, kanan);
end;
naoooon(l, kanan);
naoooon(kanan+1, r);
end;
end;
begin
isi[1] := 5; isi[2] := 10; isi[3] := 18; isi[4] := 1; isi[5] := 7;
isi[6] := 9; isi[7] := 3; isi[8] := 8; isi[9] := 100; isi[10] := 29;
naoooon(1,10);
for i := 1 to 9 do
write(isi[i], ' ');
writeln(isi[10]);
readln;
end.

