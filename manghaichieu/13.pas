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
function shh(k:longint):boolean;
var  i,s,j:longint;
begin
   s:=0;
   for i:=1 to k-1 do
      if(k mod i=0) then s:=s+i;
   if(s=k) then exit(true)
   else exit(false);
end;
procedure output;
var i,j:integer;
begin
   for i:=1 to m do
      for j:=1 to n do
         if(shh(a[i,j])=true) then write(a[i,j],' ');
end;
begin
   input;
   output;
end.
