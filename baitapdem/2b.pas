program bai2b;
var i,p,n,a,x:int64;
    s:extended;
begin
   readln(n,x);
   p:=1;
   i:=1;
   s:=0;
   a:=1;
   while(i<=n) do
   begin
      a:=a*x;
      p:=p*i;
      if(i mod 2=0) then s:=s-a/p
           else s:=s+a/p;
           i:=i+1;
   end;
        writeln(s:0:2);
   end.
