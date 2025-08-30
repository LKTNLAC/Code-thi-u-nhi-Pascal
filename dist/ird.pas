program ird;
var
procedure input;
var f:test;
begin
   assign(f,'ird.inp');
   reset(f);
   readln(f,a,b,c,d);
   close(f);
end;
procedure output;
var
begin
   assign(g,'ird.out');
   rewrite(g);
end;