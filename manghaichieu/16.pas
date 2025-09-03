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
function snt(k:longint):boolean;
var  i,s,j:longint;
begin
   if(k<2)then exit(false);
   for i:=2 to trunc(sqrt(k)) do
      if(k mod i=0) then exit(false);
   exit(true);
end;
procedure output;
var i,j,dem:integer;
begin
   dem:=0;
   for i:=1 to m do
      for j:=1 to n do
         if(snt(a[i,j])=true)then dem:=dem+1;
   writeln(dem);
end;
begin
   input;
   output;
end.
