program b18;
var s,s1:string;
    i:integer;
procedure input;
begin
   readln(s);
   readln(s1);
end;
procedure output;
begin
   for i:=1 to length(s) do
      if (s[i]=s1)then delete(s,i,1);
   writeln(s);
end;
begin
   input;
   output;
end.