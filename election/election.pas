program election;
const
   fi='election.inp';
   fo='election.out';
var a,b:array[1..100000] of longint;
    n,m,i,j,x,y,z:longint;
procedure solve;
var f,g:text;
begin
   assign(f,fi);reset(f);
   assign(g,fo);rewrite(g);
   read(f,n,m);
   for i:=1 to m do
   begin
      x:=1;
      for j:=1 to n do
      begin
         read(f,a[j]);
         if a[j]>a[x] then x:=j;
      end;
      inc(b[x]);
   end;
   x:=1;
   for i:=1 to n do
      if b[i]>b[x] then x:=i;
   write(g,x);
   close(f);
   close(g);
end;
begin
    solve;
end.