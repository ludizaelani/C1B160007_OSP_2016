uses crt;
var
arr: array [1..20] of integer;
function get : integer;
var
m: integer;
left, right: integer;
begin
arr[1]:=303;
arr[2]:=304;
arr[3]:=365;
arr[4]:=454;
arr[5]:=487;
arr[6]:=6;
arr[7]:=12;
arr[8]:=15;
arr[9]:=78;
arr[10]:=90;
arr[11]:=155;
arr[12]:=169;
arr[13]:=183;
arr[14]:=205;
arr[15]:=209;
arr[16]:=218;
arr[17]:=5;
arr[18]:=269;
arr[19]:=282;
arr[20]:=287;
if (arr[1] < arr[20]) then
get := 1
else begin
left := 1;
right := 20;
while (left < right) do
begin
m := (left+right) div 2;
if (arr[1] <= arr[m]) then
left := m+1
else
right := m;
end;
get := left;
end;
end;

begin
write(get);
readkey;
end.

