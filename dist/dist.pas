program dist;
var a,b:int64;
    i:longint;
procedure input;
var f:text;
begin
   assign(f,'dist.inp');
   reset(f);
   readln(f,a,b);
   close(f);
end;
procedure output;
var i,c,d,k:longint;
    g:text;
begin
   assign(g,'dist.out');
   rewrite(g);
   k:=0;
   for i:=1 to 9 do
   begin
      c:=a mod 10;
      d:=b mod 10;
      k:=k+abs(c-d);
      c:=0;
      d:=0;
      a:=a div 10;
      b:=b div 10;
   end;
   writeln(g,k);
   close(g);
end;
begin
   input;
   output;
end.
