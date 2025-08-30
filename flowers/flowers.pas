program flowers;
var a,b,c,max:longint;
    f,g:text;
function solve(a,b,c:longint): longint;
var x,y,val:longint;
begin
   max:=-1;
   for x:=0 to c div a do
   begin
      y:=(c-a*x) div b;
      val:=a*x + b*y;
      if (val > max) then max:= val;
   end;
   exit(max);
end;
begin
   assign(f,'flowers.inp'); reset(f);
   assign(g,'flowers.out'); rewrite(g);
   readln(f,a,b,c);
   write(g,solve(a,b,c));
   close(f);
   close(g);
end.