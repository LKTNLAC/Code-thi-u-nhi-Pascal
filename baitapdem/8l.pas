program bai8l;
var n,a,b,c,flag:int64;
begin
        readln(n);
        flag:=0;
        while(n>9) do
        begin
           a:=n mod 100;
           n:=n div 10;
           b:=a mod 10;
           c:=a div 10;
        if(c>b) then flag:=1;
        end;
        if(flag=1) then  writeln('no')
        else   writeln('yes');
end.
