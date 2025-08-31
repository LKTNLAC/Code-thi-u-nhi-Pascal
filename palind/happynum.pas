program sum;
var n:int64;
procedure input;
var f:text;
begin
   assign(f,'palind.inp');
   reset(f);
   readln(f,n);
   close(f);
end;
function sdx(n:int64):boolean;
var m,a,q:int64;
begin
   m:=n;
   q:=0;
   while m>0 do
         begin
            a:=m mod 10;
            q:=q*10+a;
            m:=m div 10;
         end;
   if (q=n) then exit(true)
   else exit(false);
end;
procedure output;
var g:text;
begin
   assign(g,'palind.out');
   rewrite(g);
   if (sdx(n)=true) then  writeln(g,'yes')
      else writeln(g,'no');
   close(g);
end;
begin
   input;
   output;
end.
