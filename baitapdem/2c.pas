program bai2c;
var p,i,gt,x,n:extended;
        s:real;
begin
   readln(n,x);
   p:=1;
   i:=1;
   while(i<=n) do
   begin
      p:=p*x;
      i:=i+1;
   end;
   s:=0;
   i:=1;
   gt:=1;
   while(i<=n) do
   begin
      p:=p/x;
      gt:=gt*i;
      s:=s+p/gt;
      i:=i+1;
   end;
writeln(s:0:2);
end.