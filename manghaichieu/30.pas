program b1;
var b,a:array[1..101,1..101] of longint;
   m,n:integer;
   x:longint;
procedure input;
var i,j:integer;
begin
   fillchar(a,sizeof(a),0);
   readln(m,n);
   for i:= 1 to m do
   begin
      for j:=1 to n  do read(a[i,j]);
      readln;
   end;
end;
procedure output;
var j,i:integer;
begin
   for i:=1 to m do
      for j:=1 to n do
         b[i,j]:=a[i-1,j]+a[i,j+1]+a[i+1,j]+a[i,j-1]+a[i-1,j-1]+a[i+1,j+1]+a[i+1,j-1]+a[i-1,j+1];
   for i:=1 to m do
   begin
      for j:=1 to n do write(b[i,j],' ');
      writeln;
   end;
end;
begin
   input;
   output;
end.
