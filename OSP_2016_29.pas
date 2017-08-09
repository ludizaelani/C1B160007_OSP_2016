uses crt;
var
ar : array[1..10] of integer;
procedure mantaps(n : integer);
var
i : integer;
iNi : integer;
temp : integer;

begin
ar[1]:=1;
ar[2]:=6;
ar[3]:=2;
ar[4]:=3;
ar[5]:=4;
ar[6]:=7;
ar[7]:=2;
ar[8]:=4;
ar[9]:=2;
ar[10]:=1;

if(n > 1) then begin
iNi := n;
for i := 1 to n-1 do begin
if(ar[i] < ar[iNi]) then iNi := i;
end;
temp := ar[n];
ar[n] := ar[iNi];
ar[iNi] := temp;
mantaps(n-1);
end;
end;
var
n:integer;
begin
read(n);
mantaps(n-1);
write(n);
readkey;
end.
