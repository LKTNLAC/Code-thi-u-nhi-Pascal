program olympic;
type longarr=array[1..1000000]of int64;
var n,c,dem:int64;
    i:longint;
    a,b:longarr;
procedure input;
var f:text;
begin
   assign(f,'olympic.inp');
   reset(f);
   readln(f,n,c);
   for i:=1 to n do
      readln(f,a[i],b[i]);
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
  x:= a[l + random(r-l+1)];
  while(i<j) do
  begin
     while (a[i] < x) do inc(i);
     while (a[j] > x) do dec(j);
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
   for i:=1 to n do
      if (c >= a[i]) then
      begin
         dem:= dem+1;
         c:=c+b[i];
      end;
end;

procedure output;
var g:text;
begin
   assign(g,'olympic.out');
   rewrite(g);
   writeln(g,dem);
   close(g);
end;
begin
   input;
   solve;
   output;
end.