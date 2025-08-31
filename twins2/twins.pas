program twins;
var n,k,i,j,l,dem:longint;
    a:array[1..1000000]of boolean;
    b:array[1..1000000]of longint;
procedure input;
var f:text;
begin
   assign(f,'twins.inp');
   reset(f);
   readln(f,n,k);
   close(f);
end;
procedure taosangnt;
begin
   fillchar(a,sizeof(a),true);
   a[1]:=false;
   for i:=2 to 1000000 do
   if a[i]=true then for j:=i to 1000000 div i do a[i*j]:=false;

end;
procedure output;
var g:text;
begin
   assign(g,'twins.out');
   rewrite(g);
   dem:=0;
   l:=1;
   for i:=2 to n-k do
   begin
      if (a[i]=true)and(a[i+k]=true) then dem:=dem+1;
   end;
   writeln(g,dem);
   close(g);
end;
begin
   input;
   taosangnt;
   output;
end.