program b13;
var s,s1:string;
    i:integer;
procedure input;
begin
        readln(s);
end;
function sdx(s1:string):boolean;
begin
   s1:='';
   for i:=length(s) downto 1 do s1:=s1+s[i];
   if s1=s then exit(true)
   else exit(false);
end;
procedure output;
begin
      if sdx(s)=true then writeln('yes')
      else writeln('no');
end;
begin
   input;
   output;
end.
