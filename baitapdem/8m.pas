program bai8m;
var  max,a,n:int64;
begin
        readln(n);
        max:=-1;
        while(n>0) do
        begin
           a:=n mod 10;
           n:=n div 10;
           if(a mod 2=0)and(a>max) then max:=a;
        end;
        writeln(max);
end.