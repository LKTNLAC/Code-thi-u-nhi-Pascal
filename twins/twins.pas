program twins;
var n,k:longint;
    a:array[1..10000000]of boolean;
procedure input;
var f:text;
begin
   assign(f,'twins.inp');
   reset(f);
   readln(f,n,k);
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
   assign(g,'twins.out');
   rewrite(g);
   dem:=0;
   for i:=2 to n-K do
      if  ( a[i] = true ) and ( a[i+k] =true )  then dem:=dem+1;
   writeln(g,dem);
   close(g);
end;
begin
   taosangnt;
   input;
   output;
end.
