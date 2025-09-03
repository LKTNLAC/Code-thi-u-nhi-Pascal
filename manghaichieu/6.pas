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
var i,s,j:integer;
begin
   s:=0;
   for i:=1 to m do
      for j:=1 to n do
        if(a[i,j] mod 2<>0) then s:=s+a[i,j];
   writeln(s);
end;
begin
   input;
   output;
end.
