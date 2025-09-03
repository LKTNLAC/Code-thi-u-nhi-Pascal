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
var i,dem,j:integer;
begin
   dem:=0;
   for i:=1 to m do
      for j:=1 to n do
        if(a[i,j] mod 2=0) then dem:=dem+1;
   writeln(dem);
end;
begin
   input;
   output;
end.