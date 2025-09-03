program b1;
var a:array[1..100,1..100] of longint;
   m,n:integer;
   x:longint;
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
function sdx(k:longint):boolean;
var c,b,h:integer;
begin
   c:=k;
   b:=0;
   while (k>0) do
   begin
      h:=k mod 10;
      k:=k div 10;
      b:=b*10+h;
   end;
   if (b=c) then exit(true)
   else exit(false);
end;
procedure output;
var j,i:integer;
    max:longint;
begin
   max:=-2000000000;
   for i:=1 to m do
      for j:=1 to n do
         if(sdx(a[i,j])=true)and(a[i,j]>max) then max:=a[i,j];
   if (max=-2000000000) then writeln(-1)
   else writeln(max);
end;
begin
   input;
   output;
end.
