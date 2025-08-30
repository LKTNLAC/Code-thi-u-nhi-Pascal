program sum;
var n,m:int64;
procedure input;
var f:text;
begin
   assign(f,'friend.inp');
   reset(f);
   readln(f,m,n);
   close(f);
end;
function tonguoc(n:int64):int64;
var s,i:int64;
begin
   s:=0;
   i:=1;
   while (i<=n div 2) do
   begin
      if (n mod i=0) then s:=s+i;
      i:=i+1;
   end;
   tonguoc:=s;
end;
function sbb(m,n:int64):boolean;
begin
   if (tonguoc(m)=n) and (tonguoc(n)=m)  then  exit(true)
   else exit(false);
end;
procedure output;
var g:text;
begin
   assign(g,'friend.out');
   rewrite(g);
   if (sbb(m,n)=true) then writeln(g,'yes')
   else writeln(g,'no');
   close(g);
end;
begin
   input;
   output;
end.
