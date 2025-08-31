program palnum;
var
procedure input;
var f:text;
begin
   assign(f,'palnum.inp');
   reset(f);
   close(f);
end;
procedure output;
var g:text;
begin
   assign(g,'palnum.out');
   rewrite(g);
   close(g);
end;
begin
   input;
   output;
end.