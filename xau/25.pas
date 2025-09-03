program b24;
var s,s1:string;
    i,j,dem:integer;
procedure input;
begin
   readln(s);
end;
procedure output;
var  ch:char;
begin
    s1:='';
    for i:=1 to length(s) do if(pos(s[i],s1)=0) then s1:=s1+s[i];
    for i:=1 to length(s1)-1 do
       for j:=i+1 to length(s1) do
          if(s1[i]>s1[j]) then
          begin
             ch:=s1[i];
             s[i]:=s1[j];
             s1[j]:=ch;
          end;
    for i:=1 to length(s1) do
    begin
       dem:=0;
       for j:=1 to length(s) do if(s[i]=s[j]) then dem:=dem+1;
       writeln(s1[i],' ',dem);
    end;
end;
begin
   input;
   output;
end.
