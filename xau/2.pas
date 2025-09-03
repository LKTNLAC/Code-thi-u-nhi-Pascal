program b1;
var s:string;
begin
   readln(s);
   while (pos(' ',s)<>0) do
   begin
      delete(s,pos(' ',s),1);
   end;
   writeln(s);
end.
