uses crt;
Var
s, t: string;
x, l, r, k: byte;
temp: char;
begin
readln(s);
k := 0;
x := 0;
l := 1;
r := length(s);
t := '';
while (l <= r) do
begin
if (k mod 2) = 0 then
begin
temp:=s[r];
r := r - 1;
end
else
begin
temp := s[l];
l := l + 1;
end;
k := k + 1;
// ord(c) adalah fungsi untuk mengubah
// karakter c menjadi nilai pada ASCII
// ord('A') = 65
// ord('B') = 66
// ...
// ord('Z') = 90
x := (x + ord(temp) - ord('A')) mod 26;
t := t + chr(x + ord('A'));
end;
writeln(t);
readkey;
end.
