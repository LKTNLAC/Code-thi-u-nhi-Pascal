program b6;
var s:string;
    i:integer;
procedure input;
begin
   readln(s);
end;
procedure output;
var s1:string;
begin
   s1:='';
   for i:=1 to length(s) do
      if (ord(s[i])>48) and (ord(s[i])<=57) then s1:=s1+s[i];
   writeln(s1);
end;
begin
   input;
   output;
end.
