program prime2;
var n,m:int64;
    a:array[1..10000000]of boolean;
procedure input;
var f:text;
begin
   assign(f,'prime2.inp');
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

procedure output;
var g:text;
    i,dem:longint;
begin
   assign(g,'prime2.out');
   rewrite(g);
   dem:=0;
   for i:=m to n do
      if  ( a[i] = true )  then dem:=dem+1;
   writeln(g,dem);
   close(g);
end;
begin
   taosangnt;
   input;
   output;
end.