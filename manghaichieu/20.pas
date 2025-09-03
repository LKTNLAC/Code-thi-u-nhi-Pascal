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
var i,j,flag:integer;
begin
   for i:=1 to m do
   begin
      flag:=1;
      for j:=1 to n-1 do
      begin
            if (a[i,j]<a[i,j+1]) then flag:=0;
      end;
      if (flag=1) then writeln('yes')
      else writeln('no');
   end;
end;
begin
   input;
   output;
end.
