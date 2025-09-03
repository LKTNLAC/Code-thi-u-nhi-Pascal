program b9;
var s,n:string;
    i,dem:integer;
begin
   readln(s);
   readln(n);
   dem:=0;
   for i:=1 to length(s) do
      if(s[i]=n)then dem:=dem+1;
   writeln(dem);
end.