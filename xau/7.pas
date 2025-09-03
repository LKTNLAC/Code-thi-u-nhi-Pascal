program b6;
var s:string;
    i:integer;
begin
   readln(s);
   for i:=1 to length(s) do
   begin
      if (i mod 2<>0) then s[i]:=upcase(s[i])
      else s[i]:=lowercase(s[i]);
   end;
   writeln(s);
end.
