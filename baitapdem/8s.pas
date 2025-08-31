program b8s;
var n,dem,m,a,b:int64;
begin
        readln(n);
        m:=0;
        dem:=0;
        while(n>0) do
        begin
            a:=n mod 10;
            b:=(n mod 100) div 10;
            if(a<>0)or((a=0)and(b<>0))then m:=m*10+a;
            n:=n div 10;
        end;
        dem:=0;
        while(m>0)do
        begin
                b:=m mod 10;
                m:=m div 10;
                if(b=0) then
                dem:=dem+1;
        end;
        writeln(dem+1);
end.