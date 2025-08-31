program tickets;
var n,k,p1,p2:int64;
procedure input;
var f:text;
begin
   assign(f,'tickets.inp');
   reset(f);
   readln(f,n,k,p1,p2);
   close(f);
end;
function min(x,y:int64):int64;
begin
   min:=x;
   if min>y then min:=y;
end;
function fix(n,k,p1,p2:int64):int64;
begin
   exit(min(k*p1, p2) * (n div k) + min((n mod k) * p1,p2));
end;
procedure output;
var g:text;
begin
   assign(g,'tickets.out');
   rewrite(g);
   writeln(g,fix(n,k,p1,p2));
   close(g);
end;
begin
   input;
   output;
end.
