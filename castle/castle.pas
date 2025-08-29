uses math;

const
   fi='castle.inp';
   fo='castle.out';
   maxN=trunc(1e5)+5;

var
 n,s:longint;
 a,k,q,r:array[0..maxN] of longint;
 ans,cnt:int64;

procedure enter;
var
  i:longint;
begin
   assign(input,fi);
   reset(input);
   readln(n,s);
   for i:=1 to n do readln(a[i],k[i]);
   close(input);
end;

procedure swap(var a,b:longint);
var
  t:longint;
begin
   t:=a;
   a:=b;
   b:=t;
end;

procedure sortk(left,right:int64);
var
   i,j,x,y:longint;
begin
  i:=left;
  j:=right;
  x:= k[(left + right) div 2];
  repeat
     while (k[i] < x) do inc(i);
     while (x < k[j]) do dec(j);
     if (i<=j) then
     begin
        swap(a[i],a[j]);
        swap(k[i],k[j]);
        inc(i);
        dec(j);
     end;
  until i>j;
  if (left < j) then sortk(left, j);
  if (i < right) then sortk(i, right);
end;

procedure init;
var
  i:longint;
begin
   cnt:=0;
   for i:=1 to n do
   begin
      q[i]:=a[i] div k[i];
      cnt:=cnt +int64(q[i]);
      r[i]:=a[i] mod k[i];
      if (r[i]>0) then inc(cnt);
   end;
end;

procedure sortr(left,right:int64);
var
   i,j,x,y:longint;
begin
  i:=left;
  j:=right;
  x:= r[(left + right) div 2];
  repeat
     while (r[i] < x) do inc(i);
     while (x < r[j]) do dec(j);
     if (i<=j) then
     begin
        swap(r[i],r[j]);
        inc(i);
        dec(j);
     end;
  until i>j;
  if (left < j) then sortr(left, j);
  if (i < right) then sortr(i, right);
end;

procedure solve;
var
   tmp:int64;
   i,j:longint;
begin
   cnt:=int64(s)-cnt;
   ans:=0;
   if (cnt>=0) then exit;
   cnt:=abs(cnt);
   j:=0;
   for i:=1 to n do
   begin
      while (j<n) and (r[j+1]<=k[i]) do
      begin
         inc(j);
         ans:=ans+r[j];
         if (r[j]>0) then dec(cnt);
         if (cnt<=0) then break;
      end;
      if cnt<=0 then break;
      tmp:=min(cnt,int64(q[i]));
      ans:=ans+tmp*int64(k[i]);
      if (tmp=cnt) then break
      else cnt:=cnt-tmp;
   end;
end;

procedure print;
begin
   assign(output,fo);
   rewrite(output);
   write(ans);
   close(output);
end;

begin
   enter;
   sortk(1,n);
   init;
   sortr(1,n);
   solve;
   print;
end.
