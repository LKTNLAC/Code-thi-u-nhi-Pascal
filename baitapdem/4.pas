program b4;
var y,x,n:int64;
begin
   readln(n);
   x:=0;
   while(x<=n div 2) do
   begin
      y:=n -2*x;
      writeln(x,' ',y);
      x:=x+1;
   end;
end.