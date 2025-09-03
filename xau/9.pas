program b9;
var s,n:string;
    i,dem,flag:integer;
begin
   readln(s);
   readln(n);
   dem:=0;
   flag:=0;
   for i:=1 to length(s) do
   begin
      if(s[i]=' ')and(s[i-1]<>' ') then dem:=dem+1;
      if(s[i]=n)and(flag=0) then
      begin
         write(dem);
         flag:=1;
      end;
   end;
end.
