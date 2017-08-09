uses crt;
var
n,i : integer;
s,k : string;
begin
k:='';
readln(s);
n:=length(s);
for i:=n downto 1 do
begin
k:=k+s[i];
end;
if s=k then writeln('PALINDROM')
else writeln('Bukan PALINDROM');
readkey;
end.
