program bcells;
var m,n,c,r,kq:int64;
procedure input;
var f:text;
begin
   assign(f,'bcells.inp');
   reset(f);
   readln(f,m,n,c,r);
   close(f);
end;
procedure solve;
begin
   kq:=m*n div 2;
   if (m*n mod 2 <>0) and ((r+c) mod 2=0) then kq:=kq+1;
end;
procedure output;
var g:text;
begin
   assign(g,'bcells.out');
   rewrite(g);
   writeln(g,kq);
   close(g);
end;
begin
   input;
   solve;
   output;
end.