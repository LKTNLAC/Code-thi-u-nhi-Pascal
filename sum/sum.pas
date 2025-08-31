program sum;
var a,b,c:int64;
procedure input;
var f:text;
begin
   assign(f,'sum.inp');
   reset(f);
   readln(f,a,b);
   close(f);
end;
procedure output;
var g:text;
begin
   assign(g,'sum.out');
   rewrite(g);
   c:=a+b;
   writeln(g,c);
   close(g);
end;
begin
   input;
   output;
end.