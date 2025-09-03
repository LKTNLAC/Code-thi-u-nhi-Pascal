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
function shp(k:longint):boolean;
var r,s1,s2,q:integer;
begin
   r:=0;
   s1:=0;
   s2:=0;
   while (k>0) do
   begin
      q:=k mod 10;
      k:=k div 10;
      r:=r+1;
      if(r<=3) then s1:=s1+q;
      if(r>3) then s2:=s2+q;
   end;
   if (r<>6) then exit(false);
   if(s1=s2) then exit(true)
   else exit(false);
end;
procedure output;
var j,i:integer;
    max:longint;
begin
   max:=-2000000000;
   for i:=1 to m do
      for j:=1 to n do
         if(shp(a[i,j])=true)and(a[i,j]>max) then max:=a[i,j];
   if(max=-2000000000) then writeln(-1)
   else writeln(max);
end;
begin
   input;
   output;
end.
