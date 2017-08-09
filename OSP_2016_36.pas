var
isi : array[1..10] of integer ;
function X(l, r, v : integer) : longint;
var
temp : integer;
begin
isi[1]:=-4;
isi[2]:=1;
isi[3]:=7;
isi[4]:=9;
isi[5]:=0;
isi[6]:=1;
isi[7]:=2;
isi[8]:=4;
isi[9]:=3;
isi[10]:=-1;
if(l = r) then X := isi[l]
else begin
temp := (l + r) div 2;
if(isi[temp] > v) then begin
X := X(l, temp, v);
end else
X := X(temp + 1, r, v);
end;
end;
var
hasil,a,b,c : integer;
begin
read(a);
read(b);
read(c);
hasil:=x(a,b,c);
write(hasil);
readln;
readln;
end.
