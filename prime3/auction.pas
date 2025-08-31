program auction;
var m,n:longint;
    a:array[1..10000000]of boolean;
    b,c:array[1..10000000]of longint;
procedure input;
var f:text;
begin
   assign(f,'auction.inp');
   reset(f);
   readln(f,m,n);
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

procedure daonguoc;
var i,j,tam:longint;
begin
   for i:=m to n do
      begin
         j:=i;
         while j <> 0 do
            begin
               tam:= j mod 10;
               b[i]:=b[i]*10+tam;
               j:=j div 10;
            end;
      end;
end;
procedure output;
var g:text;
    i,j,dem,tam:longint;
begin
   assign(g,'auction.out');
   rewrite(g);

   dem:=0;
   for i:=m to n do
      if  ( a[i] = true ) and ( b[i] = i ) then
         dem:=dem+1;


   writeln(g,dem);
   close(g);
end;
begin
   taosangnt;
   input;
   daonguoc;
   output;
end.