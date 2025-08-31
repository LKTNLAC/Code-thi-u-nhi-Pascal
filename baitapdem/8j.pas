program bai8j;
var d,n,a,c,b:int64;
begin
        readln(n);
        d:=n;
        b:=0;
        while(n>0) do
        begin
                a:=n mod 10;
                n:=n div 10;
                b:=b*10+a;
        end;
        c:=b+d;
        writeln(c);

end.