program polygon;
type longarr = array[1..100000]of longint;
var f:text;
    a,b,c:longarr;
    x,y:array[1..100000]of longint;
    n,i,j,k,min,l:longint;
function timsobe(l,r:longint):longint;
var i:longint;
begin
   min:=maxlongint;
   for i:=l to r do
      if min>x[i] then min:=x[i];
   exit(min);
end;
procedure input;
var f:text;
begin
   assign(f,'polygon.inp');
   reset(f);
   readln(f,n);
   for i:=1 to n do
   begin
      read(f,a[i]);
      for j:=1 to a[i] do
         read(f,x[j],y[j]);
      b[i]:= timsobe(1,a[i]);
      c[i]:=b[i];
      readln(f);
   end;
   close(f);
end;

procedure swap(var a:longarr; i,j:longint);
var c:longint;
begin
   c:=b[i];
   b[i]:=b[j];
   b[j]:=c;
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
        swap(b, i, j);
        inc(i); dec(j);
     end;
  end;
  if (i < r) then sort(i, r);
  if (l < j) then sort(l, j);
end;

procedure output;
var g:text;
begin
   assign(g,'polygon.out');
   rewrite(g);
   sort(1,n);
   if n mod 2= 0 then
   k:=round(n div 2)
   else k:=n div 2 +1;
   for i:=1 to n do
      if b[k]=c[i] then l:=i;

   writeln(g,l);
   close(g);
end;
begin
   input;
   output;
end.
