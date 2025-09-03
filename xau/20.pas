program b13;
var s,s1,s2,s3:string;
    i:integer;
procedure input;
begin
        readln(s);
end;
procedure output;
begin
   s3:='';
   s1:=copy(s,1,pos(' ',s)-1);
   delete(s,1,pos(' ',s));
   for i:=length(s) downto 1 do
      if(s[i]=' ') then
      begin
         s2:=copy(s,i+1,length(s)-i);
         delete(s,i,length(s)-i+1);
         s3:=s3+' '+s2;
      end;
   s3:=s3+' '+s+' '+s1;
   writeln(s3);
end;
begin
   input;
   output;
end.