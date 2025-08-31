program b8t;
var a,b,n,m,dem,max,k:int64;
begin
        readln(n);
        while (n mod 10=0) do n:=n div 10;
        m:=0;
        while(n>0) do
        begin
           a:=n mod 10;
           b:=(n mod 100) div 10;
           if (a<>0)or((a=0)and(b<>0)) then m:=m*10+a;
           n:=n div 10;
        end;
        max:=-1;
        k:=0;
        while(m>0) do
        begin
           a:=m mod 10;
           if(a<>0)then k:=k*10+a;
           if(a=0)then
           begin
              if(k>max)then max:=k;
              k:=0;
           end;
           m:=m div 10;
        end;
        if(k>max) then max:=k;
        dem:=0;
        while(max>0) do
        begin
           max:=max div 10;
           dem:=dem+1;
        end;
        writeln(dem);
end.
