program sum;
var a:array[1..10000000] of boolean;
    n:int64;
procedure input;
var f:text;
begin
   assign(f,'prime.inp');
   reset(f);
   readln(f,n);
   close(f);
end;
procedure taosangnt;
var i,j:longint;
begin
   fillchar(a,sizeof(a),true);
   a[i]:=false;
   for i:=2 to 10000000 do
      if a[i]=true then
      begin
         for j:=i to 10000000 div i do
            a[i*j]:=false;
      end;
end;
procedure output;
var g:text;
    dem,i:longint;
begin
   assign(g,'prime.out');
   rewrite(g);
   dem:=0;
   for i:=1 to n do
   if (a[i]=true) then dem:=dem+1;
   writeln(g,dem);
   close(g);
end;
begin
   taosangnt;
   input;
   output;
end.
