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
var i,k,l,j:integer;
    s,max:longint;
begin
   max:=-2000000000;
   for i:=1 to m do
      for j:=1 to n do
         if a[i,j]>max then
      begin
         max:=a[i,j];
         k:=i;
         l:=j;
      end;
   writeln(k,' ',l);
end;
begin
   input;
   output;
end.
