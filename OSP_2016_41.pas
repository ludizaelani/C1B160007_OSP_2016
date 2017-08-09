uses crt;
Var
Q : array[1..15] of integer ;
P : array[0..15] of integer;
i, a, b,total : integer;
begin
Q[1]:=1;
Q[2]:=5;
Q[3]:=2;
Q[4]:=3;
Q[5]:=4;
Q[6]:=6;
Q[7]:=2;
Q[8]:=7;
Q[9]:=3;
Q[10]:=4;
Q[11]:=6;
Q[12]:=0;
Q[13]:=-1;
Q[14]:=2;
Q[15]:=3;
P[0] := 0;
for i := 1 to 15 do begin
P[i] := P[i-1] + Q[i];
end;
readln (a,b);
total := 0; // baris-1
for i := a to b do begin // baris-2
total := total + Q[i]; // baris-3
end; // baris-4
writeln(total);
readkey;
end.
