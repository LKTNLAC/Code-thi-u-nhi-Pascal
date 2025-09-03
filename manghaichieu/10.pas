program b1;
var a:array[1..100,1..100] of longint;
   m,n:integer;
procedure input;
var i,j:integer;
begin
   readln(m,n);
   for i:= 1 to m do
   begin
      for j:=1 to n  do read(a[i,j]);
      readln;
   end;
end;
procedure output;
var  max:longint;
    i,j:integer;
begin
   max:=-2000000000;
   for i:=1 to m do
      for j:=1 to n do
         if max<a[i,j] then max:=a[i,j];
   writeln(max);
end;
begin
   input;
   output;
end.
