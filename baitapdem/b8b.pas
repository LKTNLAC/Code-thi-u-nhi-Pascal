program bai8b;
var n,a,dem:int64;
begin
        readln(n);
        dem:=0;
        while(n>0)do
        begin
                a:=n mod 10;
                n:=n div 10;
                if(a<>0) then
                dem:=dem+1;
                end;
        end;
        writeln(dem);
end.