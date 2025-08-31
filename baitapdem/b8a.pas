program bai8a;
var n,dem:int64;
begin
        readln(n);
        dem:=0;
        while(n>0) do
        begin
                n:=n div 10;
                dem:=dem+1;
        end;
        writeln(dem);
end.