program maxfreq;
type longarr = array[1..100000] of longint;

var a:longarr;
    n,min,max,max1,ts:int64;
    i:longint;
procedure input;
var f:text;
begin
   assign(f,'maxfreq.inp');
   reset(f);
   readln(f,n);
   for i:=1 to n do
      readln(f,a[i]);
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
        inc(i); dec(j);
     end;
  end;
  if (i < r) then sort(i, r);
  if (l < j) then sort(l, j);
end;

procedure output;
var g:text;
begin
   assign(g,'maxfreq.out');
   rewrite(g);
   max:=-maxlongint;
   sort(1,n);
   ts:=0;
   for i:=1 to n do
   begin
         if a[i+1]=a[i] then
         begin
            ts:=ts+1;
         end
         else
         begin
            if max<ts  then
            begin
               max:=ts;
               max1:=a[i]
            end;
            ts:=0;
         end;
   end;
   writeln(g,max1);
   close(g);
end;
begin
   input;
   output;
end.