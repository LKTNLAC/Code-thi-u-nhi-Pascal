program b15;
var s,s1,s2,s3:string;
    i:integer;
procedure input;
begin
        readln(s);
        readln(s1);
end;
procedure output;
var i:integer;
    s2:string;
begin
   s2:=copy(s,pos(s1,s),length(s)-pos(s1,s)+1);
   writeln(s2);
end;
begin
   input;
   output;
end.