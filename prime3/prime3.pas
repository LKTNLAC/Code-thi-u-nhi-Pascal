program prime3;
var n:longint;
    a:array[1..10000000]of boolean;
    p,r:array[1..10000000]of longint;
procedure input;
var f:text;
begin
   assign(f,'prime3.inp');
   reset(f);
   readln(f,n);
   close(f);
end;

procedure TaosangNT;
var i,j:longint;
begin
   for i:=1 to 10000000 do a[i]:=true;
   a[1]:=false;
   for i:=2 to 10000000 do
      if ( a[i] = true ) then
      begin
         for j:=i to 10000000 div i do a[i*j]:=false;
      end;
end;

procedure output;
var g:text;
    i,dem,dem1:longint;
begin
   assign(g,'prime3.out');
   rewrite(g);

   dem:=0;
   for i:=2 to 10000000 do
      if  ( a[i] = true ) then
      begin
         dem:=dem+1;
         p[dem]:=i;
      end;

   dem1:=0;
   for i:=2 to dem-1 do
      if (p[i] = ( p[i-1] + p[i+1] ) / 2 ) then
      begin
         dem1:=dem1+1;
         r[dem1]:=p[i];
      end;

   writeln(g,r[n]);
   close(g);
end;
begin
   taosangnt;
   input;
   output;
end.