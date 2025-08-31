program bai8p;
var  i,p,n,dem:int64;
begin
        readln(n);
        p:=1;
        i:=1;
        while(i<=n) do
        begin
           p:=p*i;
           i:=i+1;
        end;
        while(p mod 10=0) do
        begin
        dem:=dem+1;
        p:=p div 10;
        end;
        writeln(dem);
end.
