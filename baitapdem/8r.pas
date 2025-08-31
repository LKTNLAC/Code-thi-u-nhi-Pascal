program b8r;
var n,i:int64;
begin
        readln(n);
        i:=2;
        while(n<>1) do
        begin
           while(n mod i=0) do
              begin
                 write(i,' ');
                   n:=n div i;
              end;
                i:=i+1;
        end;
end.