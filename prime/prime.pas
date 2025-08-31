program prime;
var n:int64;
procedure input;
var f:text;
begin
   assign(f,'prime.inp');
   reset(f);
   readln(f,n);
   close(f);
end;
function isprime(n:int64):boolean;
var i:longint;
begin
   if(n<2)then exit(false);
   for i:=2 to trunc(sqrt(n)) do
      if( n  mod i = 0 )then exit(false);
   exit(true);
end;
procedure output;
var g:text;
begin
   assign(g,'prime.out');
   rewrite(g);
   if( isprime(n)=true ) then writeln(g,'yes')
   else writeln(g,'no');
   close(g);
end;
begin
   input;
   output;
end.
