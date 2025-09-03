program b13;
var s,s1:string;
    i:integer;
procedure input;
begin
        readln(s);
end;
procedure output;
begin
  for i:=length(s) downto 1 do
  begin
     if(s[i]=' ')then
     begin
        s1:=copy(s,i+1,length(s)-i);
        delete(s,i,length(s)-i+1);
        break;
     end;
  end;
  writeln(s);
  writeln(s1);
end;
begin
   input;
   output;
end.