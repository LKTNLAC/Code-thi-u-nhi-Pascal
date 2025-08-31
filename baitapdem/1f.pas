program b1f;
var  n,i,s:integer;
begin
        readln(n);
        if(n mod 2=0) then
        begin
           s:=1;
           i:=2;
        while(i<=n) do
           begin
           s:=s*i;
           i:=i+2;
           end;
        end;
        if(n mod 2=1) then
        begin
           s:=1;
           i:=3;
        while(i<=n) do
           begin
           s:=s*i;
           i:=i+2;
           end;
        end;
        writeln(s);
end.

