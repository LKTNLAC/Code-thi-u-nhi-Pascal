program  b8a;
var n,dem,i:int64;
begin
   readln(n);
   dem:=0;
   while(n>0) do
   begin
      n:=n*i;
      dem:=dem+1;
   end;
   writeln(dem);
end.