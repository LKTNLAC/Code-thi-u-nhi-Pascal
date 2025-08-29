program calendar;
var  w,s,m,k,d:int64;
procedure input;
var f:text;
begin
   assign(f,'calendar.inp');
   reset(f);
   readln(f,w,d,m);
end;
procedure solve;
begin
   s:=(m div 2)*31+((m-1) div 2)*30+d;
   k:=(s+(w-1)-1) mod 7 +1;
end;
procedure output;
var g:text;
begin
   assign(g,'calendar.out');
   rewrite(g);
   writeln(g,k);
   close(g);
end;
begin
   input;
   solve;
   output;
end.
