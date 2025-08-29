const
   fi='coins.inp';
   fo='coins.out';
   maxN= 100000;
type longarr = array[1..maxN] of longint;
var a,b:longarr;
    n,m:longint;
    coins:int64;
procedure readData;
var f:text;
    i,x:longint;
begin
   assign(f,fi);
   reset(f);
   readln(f,n,m);
   for i:=1 to n do read(f,a[i]);
   readln(f);
   for i:=1 to n do
   begin
      read(f,x);
      b[i]:= x-a[i];
   end;
   close(f);
end;
procedure swap(var a:longarr; i,j:longint);
var c:longint;
begin
   c:=a[i];
   a[i]:=a[j];
   a[j]:=c;
end;
procedure sort(l,r:longint);
var i,j,x:longint;
begin
  i:=l; j:=r;
  x:= b[l + random(r-l+1)];
  while(i<j) do
  begin
     while (b[i] < x) do inc(i);
     while (b[j] > x) do dec(j);
     if (i<=j) then
     begin
        swap(a, i, j);
        swap(b, i, j);
        inc(i); dec(j);
     end;
  end;
  if (i < r) then sort(i, r);
  if (l < j) then sort(l, j);
end;
procedure solve;
var i: longint;
begin
   sort(1, n);
   coins :=m;
   for i:=1 to n do
      if (coins >= b[i]) then coins:= coins+a[i];
end;
procedure WriteANS;
var f: text;
begin
   assign(f,fo);
   rewrite(f);
   write(f, coins);
   close(f);
end;
begin
   readData;
   solve;
   WriteANS;
end.