program sum;
var a:array[1..10000000] of boolean;
    p:array[1..10000000] of longint;
    r:array[1..10000000] of longint;
    n,k:int64;
procedure input;
var f:text;
begin
   assign(f,'twins.inp');
   reset(f);
   readln(f,n,k);
   close(f);
end;
procedure taosangnt;
var i,j:longint;
begin
   fillchar(a,sizeof(a),true);
   a[1]:=false;
   for i:=2 to 1000000 do
      if a[i]=true then
      begin
         for j:=i to 1000000 div i do
            a[i*j]:=false;
      end;
end;
procedure output;
var g:text;
    dem,i:longint;
begin
   assign(g,'twins.out');
   rewrite(g);
   dem:=0;
   for i:=2 to 10000000 do
      if (a[i]=true) then
         begin
            dem:=dem+1;
            p[dem]:=i;
         end;
   dem1:=0;
   for i:=2 to dem-1 do
      if (p[i]=(p[i-1]+p[i+1])/2) then
         begin
            dem1:=dem1+1;
            r[dem1]:=a[i];
         end;
   writeln(g,a[i]);
   close(g);
end;
begin
   taosangnt;
   input;
   output;
end.
