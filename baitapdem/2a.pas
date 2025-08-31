program bai2a;
var n,i:int64;
    s,x:extended;
begin
        readln(n,x);
        s:=1;
        i:=1;
        while(i<=n) do
        begin
                s:=s*x;
                i:=i+1;
        end;
        writeln(s:0:2);
end.
