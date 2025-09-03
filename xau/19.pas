program b19;
var s:string;
   i:integer;
procedure input;
begin
   readln(s);
end;
procedure output;
begin
   for i:=2 to length(s) do
   begin
      if(s[i-1]=' ')and(s[i]<>' ')then s[i]:=upcase(s[i])
      else s[i]:= lowercase(s[i]);
   end;
   writeln(s);
end;
begin
   input;
   output;
end.