program b6;
var f1,f2,i,fn,f3,n:int64;
begin
   readln(n);
   f1:=1;
   f2:=2;
   i:=3;
   while(i<=n) do
   begin
      f3:=3*f2-2*f1;
      f1:=f2;
      f2:=f3;
      i:=i+1;
   end;
   writeln(f3);
end.