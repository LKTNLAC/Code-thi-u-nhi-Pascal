program b9;
var s1,s2:string;
    i:integer;
begin
   readln(s1);
   readln(s2);
   if (pos(s1,s2)<>0) then writeln('yes')
   else writeln('no');
end.
