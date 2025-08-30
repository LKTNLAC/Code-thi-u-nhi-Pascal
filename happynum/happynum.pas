program sum;
var n:int64;
procedure input;
var f:text;
begin
   assign(f,'happynum.inp');
   reset(f);
   readln(f,n);
   close(f);
end;
function shh(n:int64):boolean;
var r,s1,s2,q:int64;
begin
   r:=0;
   s1:=0;
   s2:=0;
   while n>0 do
   begin
      q:=n mod 10;
      n:=n div 10;
      r:=r+1;
      if (r<=3) then s1:=s1+q;
      if (r>3) then s2:=s2+q;
   end;
   if (r<>6) then exit(false);
   if (s1=s2) then exit(true)
   else exit(false);
end;
procedure output;
var g:text;
begin
   assign(g,'happynum.out');
   rewrite(g);
   if (shh(n)=true) then  writeln(g,'yes')
   else writeln(g,'no');
   close(g);
end;
begin
   input;
   output;
end.
