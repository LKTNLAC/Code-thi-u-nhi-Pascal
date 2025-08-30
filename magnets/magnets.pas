program magnets;
var x,y,n:int64;
    i:longint;
    a:array[0..10000]of longint;
procedure input;
var f:text;
begin
   assign(f,'magnets.inp');
   reset(f);
   readln(f,n);
   for i:=1 to n do
   readln(f,a[i]);
   close(f);
end;
procedure output;
var j,k,dem:int64;
    i:longint;
    g:text;
begin
   assign(g,'magnets.out');
   rewrite(g);
   dem:=0;
   a[0]:=-1;
   for i:=1 to n do
   begin
      if a[i-1] mod 10=a[i] mod 10 then dem:=dem+1;
   end;
   writeln(g,dem);
   close(g);
end;
begin
   input;
   output;
end.
