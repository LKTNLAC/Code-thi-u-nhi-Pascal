program b3b;
var  s,a,i,k,n,m:int64;
begin
   readln(k,n,m);
   k:=1;
   i:=1;
   a:=0;
   while(i<=n) do
   begin
      k:=k*i;
      a:=a+k;
      i:=i+1;
   end;
   s:=a mod m;
   write(s);
end.