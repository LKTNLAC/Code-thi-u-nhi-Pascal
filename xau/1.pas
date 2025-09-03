program b1;
var s:string;
   i,dem:integer;
begin
   readln(s);
   dem:=0;
   for i:=1 to length(s) do
      if(s[i]=' ') then dem:=dem+1;
   writeln(dem);
end.