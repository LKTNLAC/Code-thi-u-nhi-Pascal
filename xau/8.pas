program b;
var s,s1:string;
    i:integer;
begin
   readln(s);
   s1:=' ';
   for i:=length(s) downto 1 do s1:=s1+s[i];
   writeln(s1);
end.
