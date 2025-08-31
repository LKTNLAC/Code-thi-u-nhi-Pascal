program bai1h;
var i,n:int64;
        s:real;
begin
   readln(n);
   s:=1;
   i:=2;
   while(i<=n) do
   begin
      if(i mod 2=1) then s:=s*(1-1/sqrt(i))
      else s:=s*(1+1/sqrt(i));
      i:=i+1;
   end;
   writeln(s:0:2);
end.