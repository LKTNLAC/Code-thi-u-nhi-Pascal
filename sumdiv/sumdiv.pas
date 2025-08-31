program divisor;
const maxn=50;
      maxa=100000000;
var m,dem,n,mu:int64;
    a,k,s:array[1..maxn] of int64;
    c:array[0..maxa] of int64;
    b:array[1..maxa] of boolean;
    z,i,j:longint;
procedure Input;
var f:text;
begin
   assign(f,'sumdiv.inp');
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
   assign(g,'sumdiv.out');
   rewrite(g);
   for i:=1 to n do
   begin
      k[i]:=1;
      for j:=1 to dem do
      begin
         mu:=1;
         while (a[i] mod c[j]=0) do
         begin
            a[i]:=a[i] div c[j];
            mu:=mu*c[j];
         end;
         mu:=mu*c[j];
         k[i]:=k[i]*((mu-1) div (c[j]-1));
      end;
   end;
   i:=1;
   while (i<=n) do
   begin
       writeln(g,k[i]);
       inc(i);
   end;
   close(g);
end;
BEGIN
   Input;
   snt;
   Output;
END.
