program sodep;
var
procedure input;
var f:text;
begin
   assign(f,'sodep.inp');
   reset(f);
   readln(n);
   close(f);
end;
procedure output;
var g:text;
begin
   assign(g,'sodep.out');
   rewrite(g);
   if (n>=9) then writeln(g,
end;
