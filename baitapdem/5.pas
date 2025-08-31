program b5;
var s:real;
    x,n,y:int64;
begin
   readln(n);
   s:=0;
   x:=0;
   while(s<n) do
   begin
      x:=x+1;
      s:=s+sqrt(x);
   end;
   writeln(x);
end.