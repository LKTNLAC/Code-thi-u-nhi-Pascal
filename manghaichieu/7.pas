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
var i,max,j:integer;
begin
   max:=-1;
   for i:=1 to m do
      for j:=1 to n do
        if(a[i,j] mod 2=0)and(a[i,j]>max) then max:=a[i,j];
   writeln(max);
end;
begin
   input;
   output;
end.
