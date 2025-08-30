program hprime;
var i,j,n,h,l,dem:longint;
    a:array[1..10000000]of boolean;
    b:array[1..10000000]of longint;
procedure input;
var f:text;
begin
   assign(f,'hprime.inp');
   reset(f);
   readln(f,n,h);
   close(f);
end;
procedure taosangnt;
begin
   fillchar(a,sizeof(a),true);
   a[1]:=false;
   for i:=2 to 10000000 do
      if a[i]=true then for j:=i to 10000000 div i do
         a[i*j]:=false;

end;
function tcs(m:longint):longint;
var s,k:longint;
begin
   s:=0;
   while m<>0 do
   begin
      k:=m mod 10;
      m:=m div 10;
      s:=s+k;
   end;
   exit(s);
end;
procedure output;
var g:text;
begin
   assign(g,'hprime.out');
   rewrite(g);
   dem:=0;
   for i:=h to n do
   if (a[i]=true)and(tcs(i)=h) then
      begin
         dem:=dem+1;
         b[dem]:=i;
      end;
   writeln(g,dem);
   for i:=1 to dem do
      writeln(g,b[i]);
   close(g);
end;
begin
   input;
   taosangnt;
   output;
end.
