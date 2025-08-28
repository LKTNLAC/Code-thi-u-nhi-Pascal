const
   fi='asummin.inp';
   fo='asummin.out';
   max=100000;
   maxv=round(2e9);

type tarray=array[1..max]of int64;

var m,n:longint;
    a,id:tarray;
    diffmin:int64;
    resi,resj:longint;
    f:text;

procedure input;
var i,j:longint;
begin
   assign(f,fi);
   reset(f);
end;

procedure entera;
var i:longint;
begin
   readln(f,m,n);
   for i:=1 to m do read(f,a[i]);
   readln(f);
end;

procedure init;
var i:longint;
begin
    for i:=1 to m do
    id[i]:=i;
    diffmin:= int64(maxv)+maxv+1;
end;

procedure quicksort (l,h:longint);
var
   i,j:longint;
   pivot,idx:longint;
begin
   if (l>=h) then exit;
   i:=l +random(h-l+1);
   pivot:=a[i]; a[i]:=a[l];
   idx:=id[i]; id[i]:=id[l];
   i:=l; j:=h;
   repeat
      while (a[j]>pivot) and (i<j) do dec(j);
      if (i<j) then
     begin
        a[i]:=a[j]; id[i]:=id[j];
        inc(i);
     end
     else break;
     while(a[i]<pivot) and (i<j) do inc(i);
      if(i<j) then
      begin
          a[j]:=a[i]; id[j]:=id[i];
          dec(j);
      end
      else break;
   until i=j;
   a[i]:=pivot;
   id[i]:=idx;
   quicksort(l,i-1); quicksort(i+1,h);
end;

procedure update(asum:int64;i,j:longint);
begin
   if diffmin>asum then
   begin
       diffmin :=asum;
       resi:=id[i];
       resj:=j;
   end;
end;

procedure find(j,b:longint);
var low, middle,high:longint;
begin
   low:=1; high:=m;
   while low<=high do
   begin
      middle:=(low+high) div 2;
      if a[middle]<b then low:=middle+1 else high:=middle-1;
   end;
   if low>1 then update(int64(b)-a[low-1],low-1,j);
    if low<=m then update(a[low]-int64(b),low,j);
end;

procedure enterb;
var j,b:longint;
begin
   for j:=1 to n do
   begin
      read(f,b);
      find(j,-b);
   end;
end;

procedure output;
var f:text;
begin
   assign(f,fo);
   rewrite(f);
   writeln(f,resi,' ',resj);
   close(f);
end;
begin
   input;
   entera;
   init;
   quicksort(1,m);
   enterb;
   close(F);
   output;
end.
