program prime3;
var p,b:array[0..10000000]of longint;
    a:array[0..10000000]of boolean;
    i,j,n,dem,dem1:longint;
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
   fillchar(a,sizeof(a),true);
   a[1]:=false;
   for i:=2 to 10000000 do
      if ( a[i] = true ) then
      begin
         for j:=i to 10000000 div i do a[i*j]:=false;
      end;
end;

procedure output;
var g:text;
begin
   assign(g,'prime3.out');
   rewrite(g);
   dem:=0;
   for i:=2 to 10000000 do
   begin
      if a[i]=true then
         begin
            dem:=dem+1;
            b[dem]:=i;
         end;
   end;
   dem1:=0;
   for i:=1 to dem-1 do
   begin
      if b[i]=(b[i-1]+b[i+1])/ 2 then
         begin
            dem1:=dem1+1;
            p[dem1]:=b[i];
         end;
   end;
   writeln(g,p[n]);
   close(g);
end;
begin
   input;
   taosangnt;
   output;
end.
