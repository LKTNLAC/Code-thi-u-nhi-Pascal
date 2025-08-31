const
   fi='trip.inp';
   fo='trip.out';
   maxN=100000;
var
  f,g:text;
  n,d,i,j,tong:longint;
  m:array[1..maxN] of longint;
procedure swap(var a,b:longint);
var c:longint;
begin
   c:=a;
   a:=b;
   b:=c;
end;
procedure sort(l,r:longint);
var i,j,s:longint;
begin
  i:=l; j:=r;
  s:= m[l + random(r-l+1)];
  while(i<j) do
  begin
     while (m[i] < s) do inc(i);
     while (m[j] > s) do dec(j);
     if (i<=j) then
     begin
        swap(m[i],m[j]);
        inc(i);
        dec(j);
     end;
  end;
  if (i < r) then sort(i, r);
  if (l < j) then sort(l, j);
end;
function solve:longint;
begin
   sort(1,n);
   tong:=0;
   i:=1;
   j:=n;
   while (i<=j) do
   begin
      if (m[i]+m[j]<=d) and (i<>j) then inc(i);
      dec(j);
      inc(tong);
   end;
   exit(tong);
end;
procedure print;
begin
   assign(f,fi);
   reset(f);
   assign(g,fo);
   rewrite(g);
   while not eof(f) do
   begin
      readln(f,n,d);
      for i:=1 to n do read(f,m[i]);
      readln(f);
      writeln(g,solve);
   end;
   close(f);
   close(g);
end;
begin
   print;
end.
