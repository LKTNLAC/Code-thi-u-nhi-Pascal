program bai8q;
var n,i,dem,flag:int64;
begin
        readln(n);
        dem:=0;
        flag:=1;
        i:=2;
        while(i<=sqrt(n))do
        begin
           if(n mod i=0)then
           begin
              flag:=0;
              break;
           end;
           i:=i+1;
        end;
        if(flag=1) then writeln('yes')
        else
        writeln('no');
end.
