program bai8d;
var n,a,b,c,d,t,dem:int64;
begin
        readln(n);
        dem:=0;
        begin
                a:=n mod 100;
                n:=n div 10;
                b:=a mod 10;
                c:=a div 10;
                d:=abs(b-c);
                dem:=dem+d;
        end;
        writeln(dem);
end.