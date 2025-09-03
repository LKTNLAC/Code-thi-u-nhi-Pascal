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
procedure ouput;
var i,j:integer;
    s:longint;
begin
   s:=0;
   for i:=1 to m do
      for j:=1 to n do s:=s+a[i,j];
   writeln(s);
end;
begin
   input;
   ouput;
end.