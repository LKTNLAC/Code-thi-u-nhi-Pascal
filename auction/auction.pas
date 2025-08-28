program auction;
var a,b:longint;
    c:array[1..10000000]of boolean;
procedure input;
var f:text;
begin
   assign(f,'auction.inp');
   reset(f);
   readln(f,a,b);
   close(f);
end;

procedure TaosangNT;
var i,j:longint;
begin
   for i:=1 to 10000000 do c[i]:=true;
   c[1]:=false;
   for i:=2 to 10000000 do
      if ( c[i] = true ) then
      begin
         for j:=i to 10000000 div i do c[i*j]:=false;
      end;
end;

function sdx(n:longint):boolean;
var m,a,q:longint;
begin
   m:=n;
   q:=0;
   while  ( m > 0 ) do
            begin
               a:= m mod 10;
               q:=q*10+a;
               m:=m div 10;
            end;
      if ( q = n ) then exit(true)
      else exit(false);
end;
procedure output;
var g:text;
    i,dem:longint;
begin
   assign(g,'auction.out');
   rewrite(g);

   dem:=0;
   for i:=a to b do
      if  ( c[i] = true ) and ( sdx(i) = true ) then dem:=dem+1;

   writeln(g,dem);
   close(g);
end;
begin
   input;
   taosangnt;
   output;
end.
