program b6;
var s:string;
    i:integer;
begin
   readln(s);
   s[1]:=upcase(s[1]);
   for i:=2 to length(s) do
   begin
      if(s[i-1]=' ')and(s[i]<>' ')then s[i]:=upcase(s[i])
      else s[i]:=s[i];
   end;
   writeln(s);
end.
