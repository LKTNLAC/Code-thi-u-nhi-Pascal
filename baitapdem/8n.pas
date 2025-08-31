program bai8n;
var n,a,dem,i:int64;
begin
        readln(n);
        dem:=0;
        i:=1;
        while(i<=n)and(n>0) do
        begin
           if(n mod i=0) then dem:=dem+1;
           i:=i+1;
        end;
        writeln(dem);
end.