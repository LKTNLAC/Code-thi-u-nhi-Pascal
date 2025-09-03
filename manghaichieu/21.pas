program b1;
var a:array[1..100,1..100] of longint;
   m,n:integer;
   x:longint;
procedure input;
var i,j:integer;
begin
   readln(m,n,x);
   for i:= 1 to m do
   begin
      for j:=1 to n  do read(a[i,j]);
      readln;
   end;
end;
procedure output;
var i,j,flag:integer;
begin
   flag:=1;
   for i:=1 to m do
     for j:=1 to n do
     begin
        if(a[i,j]=x) then
        begin
           flag:=0;
           writeln(i,' ',j);
        end;
     end;
   if (flag=1) then writeln(-1);
end;
begin
   input;
   output;
end.
