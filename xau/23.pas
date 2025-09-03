program b13;
var s,s1:string;
    i:integer;
procedure input;
begin
        readln(s);
        readln(s1);
end;
procedure output;
begin
   while (pos(s1,s)<>0) do
       delete(s,pos(s1,s),length(s1));
   writeln(s);
end;
begin
   input;
   output;
end.