program perfect;
var n:int64;
procedure input;
var f:text;
begin
   assign(f,'perfect.inp');
   reset(f);
   readln(f,n);
   close(f);
end;
function shh(n:int64):boolean;
var i,s:int64;
begin
   s:=1;
   i:=2;
   while (i<=sqrt(n)) do
   begin
      if(n mod i = 0 ) then s:=s+i+n div i;
      i:=i+1;
   end;
   if(s=n)then exit(true)
   else exit(false);
end;
procedure output;
var g:text;
begin
   assign(g,'perfect.out');
   rewrite(g);
   if ( shh(n)=true ) then writeln(g,'yes')
   else writeln(g,'no');
   close(g);
end;
begin
   input;
   output;
end.
