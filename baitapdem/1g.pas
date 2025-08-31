program b1f;
var  n,i,p:int64;
        s:real;
begin
        readln(n);
        p:=1;
        i:=1;
        s:=0;
        while (i<=n) do
        begin
           p:=p*i;
           if(i mod 2=0) then s:=s-1/p
           else s:=s+1/p;
           i:=i+1;
        end;
        writeln(s:0:2);
end.

