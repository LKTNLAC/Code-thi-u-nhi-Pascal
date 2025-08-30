program gifts;
var n,i,x:longint;
    a:array[1..1000000]of longint;
procedure input;
var f:text;
begin
   assign(f,'gifts.inp');
   reset(f);
   readln(f,n);
   for i:=1 to n do
   begin
      readln(f,x);
      a[x]:=i;
   end;
   close(f);
end;
procedure output;
var g:text;
begin
   assign(g,'gifts.out');
   rewrite(g);
   for i:=1 to n do
      writeln(g,a[i]);
   close(g);
end;
begin
   input;
   output;
end.