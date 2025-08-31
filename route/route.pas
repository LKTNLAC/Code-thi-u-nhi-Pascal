uses math;
const
   maxn=100000;

var x1,x2,y1,y2:longint;

procedure input;
var f:text;
begin
   assign(f,'route.inp');
   reset(f);
   readln(f,x1,y1,x2,y2);
   close(f);
end;

procedure output;
var g:text;
    amin,amax,bmin,bmax,i:longint;

begin
   assign(g,'route.out');
   rewrite(g);
   amin:=min(x1,x2);
   amax:=max(x1,x2);
   bmin:=min(y1,y2);
   bmax:=max(y1,y2);
   if (x1<x2) then
     for i:=amin+1 to amax do write(g,'E')
     else  for i:=amin+1 to amax do write(g,'W');
   if (y1<y2) then
      for i:=bmin+1 to bmax  do write(g,'N')
      else for i:=bmin+1 to bmax do write(g,'S');

   close(g);
end;

begin
   input;
   output;
end.


