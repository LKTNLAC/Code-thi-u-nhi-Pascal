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
function scp(n:longint):boolean;
var  k:longint;
begin
   k:=trunc(sqrt(n));
   if (k*k=n) then exit(true)
   else exit(false);
end;
procedure output;
var i,j:integer;
    max:longint;
begin
   max:=-1;
   for i:=1 to m do
      for j:=1 to n do
         if(scp(a[i,j])=true)and(a[i,j]>max) then max:=a[i,j];
   writeln(max);
end;
begin
   input;
   output;
end.
