program divisor;
const maxn=50;
           maxa=100000000;
var i,j,m,dem,n:int64;
    a,k:array[1..maxn] of int64;
    c:array[0..maxa] of int64;
    b:array[1..maxa] of boolean;
procedure Input;
var f:text;
begin
   assign(f,'divisor.inp');
   reset(f);
   readln(f,n);
   i:=1;
   while (i<=n) do
   begin
      readln(f,a[i]);
      inc(i);
   end;
   close(f);
end;
procedure snt;
begin
   dem:=0;
   fillchar(b,sizeof(b),true);
   i:=2;
   while (i<=10000000) do
   begin
      if b[i]=true then
      begin
         inc(dem);
         c[dem]:=i;
         j:=2;
         while (j<=(10000000 div i)) do
         begin
            b[i*j]:=false;
            inc(j);
         end;
      end;
      inc(i);
   end;
end;
procedure Output;
var g:text;
begin
   assign(g,'divisor.out');
   rewrite(g);
   i:=1;
   while (i<=n) do
   begin
      k[i]:=1;
      j:=1;
      while (j<=dem) do
      begin
         m:=0;
         while (a[i] mod c[j]=0) do
         begin
            a[i]:=a[i] div c[j];
            inc(m);
         end;
         k[i]:=k[i]*(m+1);
         inc(j);
      end;
      if a[i]>1 then k[i]:=k[i]*2;
      inc(i);
   end;
   i:=1;
   while (i<=n) do
   begin
       writeln(f,k[i]);
       inc(i);
   end;
   close(g);
end;
BEGIN
   Input;
   snt;
   Output;
END.
