program bai8o;
var n,dem,i,tong,a,b:int64;
begin
        readln(n);
        dem:=0;
        i:=1;
        while(i<=n)and(n>0) do
        begin
           if(n mod i=0) then dem:=dem+i;
           i:=i+1;
        end;
        writeln(dem);
end.