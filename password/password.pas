program password;
const maxn = 1000000;
var a:array[1..maxn] of longint;
    sum,b: array[1..maxn] of longint;
    m,n,x,y:longint;

function tongscs(n:longint):longint;
var s:longint;
begin
   s:=0;
   while n>0 do
   begin
      s:=s+n mod 10;
      n:=n div 10;
   end;
   exit(s);
end;
procedure input;
var f:text;
    i,s:longint;
begin
   assign(f,'password.inp');
   reset(f);
   readln(f,n);
   fillchar(b,sizeof(b),0);
   m:=0;
   for i:=1 to n do
   begin
      read(f,a[i]);
      s:= tongscs(a[i]);
      if (b[s] = 0) then
      begin
         b[s]:=i;
         inc(m);
         sum[m]:=s;
      end;
   end;
   close(f);
end;
procedure solve;
var i,j,min:longint;
begin
   min:=1000;
   for i:=1 to m-1 do
      for j:=i+1 to m do
         if (abs(sum[i]-sum[j])<min)then
         begin
            min:=abs(sum[i]-sum[j]);
            x:=a[b[sum[i]]];
            y:=a[b[sum[j]]];
         end;
end;
procedure output;
var g:text;
begin
   assign(g,'password.out');
   rewrite(g);
   write(g,x,y);
   close(g);
end;
begin
   input;
   solve;
   output;
end.