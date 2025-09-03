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
var i,j:integer;
    max:longint;
begin
   max:=-1;
   for i:=1 to m do
   begin
      for j:=1 to n do
         if(snt(a[i,j])=true)and(a[i,j]>max)then max:=a[i,j];
   end;
   writeln(max);
end;
begin
   input;
   output;
end.
