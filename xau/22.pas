program b13;
var s1,s2:string;
    vt:integer;
procedure input;
begin
        readln(s1);
        readln(s2);
        readln(vt);
end;
procedure output;
begin
   insert(s2,s1,vt);
   writeln(s1);
end;
begin
   input;
   output;
end.