program b13;
var s:string;
    n,i,vt:integer;
procedure input;
begin
        readln(s);
        readln(vt,n);
end;
procedure output;
begin
   delete(s,vt,n);
   writeln(s);
end;
begin
   input;
   output;
end.
