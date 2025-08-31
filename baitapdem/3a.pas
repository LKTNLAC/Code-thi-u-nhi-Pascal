program b3a;
var gt,i,a,m,n,s:int64;
begin
   readln(n,m);
   gt:=1;
   i:=1;
   a:=0;
   while(i<=n)do
   begin
      gt:=gt*i;
      a:=a+gt;
      i:=i+1;
   end;
   s:=a mod m;
   writeln(s);
end.
