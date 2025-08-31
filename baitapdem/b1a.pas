program b1a;
var s,i,n:real;
begin
        readln(n);
        s:=0;
        i:=2;
        while(i<=n) do
        begin
           s:=s+(i-1)/i;
           i:=i+1;
        end;
        writeln(s:0:2);
end.