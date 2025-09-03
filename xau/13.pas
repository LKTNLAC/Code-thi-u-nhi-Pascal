program b13;
var s,s1,s2,s3:string;
    i:integer;
procedure input;
begin
        readln(s);
end;
procedure output;
begin
   s1:=copy(s,1,pos(' ',s)-1);
   delete(s,1,pos(' ',s));
   for i:=length(s) downto 1 do
      if(s[i]=' ') then
      begin
         s2:=copy(s,i+1,length(s)-1);
         delete(s,i,length(s)-1+1);
         break;
      end;
   s3:=s2+' '+s+' '+s1;
   writeln(s3);
end;
begin
   input;
   output;
end.