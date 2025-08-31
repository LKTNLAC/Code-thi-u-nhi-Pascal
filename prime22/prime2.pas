program prime2;
var a:array[0..10000000]of boolean;
    b:array[0..10000000]of longint;
    dem,m,n,i,j:longint;
procedure input;
var f:text;
begin
   assign(f,'prime2.inp');
   reset(f);
   readln(f,m,n);
   close(f);
end;
procedure taosangnt;
var i,j:longint;
begin
   fillchar(a,sizeof(a),true);
   a[1]:=false;
   for i:=2 to 10000000 do
   begin
      if a[i]=true then
         for j:=i to 10000000 div i do a[i*j]:=false;
   end;

end;
procedure output;
var g:text;
begin
   assign(g,'prime2.out');
   rewrite(g);
   dem:=0;
   for i:=m to n do
   begin
      if a[i]=true then
         dem:=dem+1;
   end;
   writeln(g,dem);
   close(g);
end;
begin
   input;
   taosangnt;
   output;
end.
