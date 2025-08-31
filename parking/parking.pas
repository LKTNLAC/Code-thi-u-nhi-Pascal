program parking;
var n,m:int64;
procedure input;
var f:text;
begin
   assign(f,'parking.inp');
   reset(f);
   read(f,n,m);
   close(f);
end;
procedure output;
var a:int64;
    f:text;
begin
   assign(f,'parking.out');
   rewrite(f);
   a:=(n div 2 + n mod 2)*(m div 2 + m mod 2);
   writeln(f,a);
   close(f);
end;
begin
   input;
   output;
end.
