uses crt;
var
n,m : longint;
jml : int64;

begin
read(n,m);
while (n>0) or (m>0) do
begin
jml:=jml+n*m;
dec(n);dec(m);
end;
writeln(jml);
readkey;
end.
