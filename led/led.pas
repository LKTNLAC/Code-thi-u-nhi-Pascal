const
    fi ='led.inp';
    fo ='led.out';
    maxn = 1000000;
    d:array[0..9]of longint = (6,2,5,5,4,5,6,3,7,6);
type larr = array[1..maxN] of longint;
var min,max:larr;
function checkvalid(n,k:longint):boolean;
begin
   if (k >= 2*n) and(k <= 7*n) then exit(true);
   exit(false);
end;
procedure findmin(n,k:longint);
var i,j,q:longint;
begin
   for i:=1 to n do
   begin
      if i=1 then q:=1
      else q:=0;
      for j:=q to 9 do
          if checkvalid(n-i, k-d[j]) then break;
      min[i]:=j;
      k := k - d[j];
   end;
end;
procedure findmax(n,k:longint);
var i,j:longint;
begin
   for i:=1 to n do
   begin
      for j:=9 downto 0 do
         if checkvalid(n-i,k-d[j]) then break;
      max[i]:=j;
      k:=k-d[j];
   end;
end;
procedure writearr(var f:text; a:larr; n:longint);
var i:longint;
begin
   for i:=1 to n do write(f,a[i]);
   writeln(f);
end;
procedure solve;
var f:text;
    n,k:longint;
begin
   assign(f,fi);reset(f);
   readln(f,n,k);
   close(f);
   assign(f,fo);rewrite(f);
   if not checkvalid(n,k) then
      write(f,'NO SOLUTION')
   else
   begin
      findmin(n,k);
      findmax(n,k);
      writearr(f,min,n);
      writearr(f,max,n);
   end;
   close(f);
end;
begin
   solve;
end.