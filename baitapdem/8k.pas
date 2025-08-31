program bai8k;
var a,n,yes,no,c,b:int64;
begin
        readln(n);
        c:=n;
        b:=0;
        while(n>0) do
        begin
        a:=n mod 10;
        n:=n div 10;
        b:=b*10+a;
        end;
        if(b=c) then
        writeln('yes')
        else
        writeln('no');
end.