program rotate;
var a,b,c,d:longint;
procedure input;
var f:text;
begin
   assign(f,'rotate.inp');
   reset(f);
   read(f,a,b,c,d);
   close(f);
end;
procedure output;
var g:text;
    i,j:longint;
    o:array[1..5] of real;
    max:real;
begin
   assign(g,'rotate.out');
   rewrite(g);
   o[1]:=c/d-a/b;
   o[2]:=d/b-c/a;
   o[3]:=b/a-d/c;
   o[4]:=a/c-b/d;
   max:=o[4];
   j:=0;
   for i:=1 to 3 do if (o[i]>max) then
   begin
      max:=o[i];
      j:=i;
   end;
   writeln(g,j);
   close(g);
end;
begin
   input;
   output;
end.

