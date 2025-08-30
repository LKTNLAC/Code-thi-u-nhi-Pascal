program ird;
var a,b,c,d,x,y:int64;
procedure input;
var f:text;
begin
   assign(f,'ird.inp');
   reset(f);
   readln(f,a,b,c,d);
   close(f);
end;
function ucln(e,f:int64):int64;
begin
   while e<>f do
   begin
      if e>f then e:=e-f
      else f:=f-e;
   end;
   exit(e);
end;
procedure output;
var i,j,k:int64;
    g:text;
begin
   assign(g,'ird.out');
   rewrite(g);
   x:=a*d+b*c;
   y:=b*d;
   j:=ucln(x,y);
   x:=x div j;
   y:=y div j;
   writeln(g,x,' ',y);
   close(g);
end;
begin
   input;
   output;
end.
