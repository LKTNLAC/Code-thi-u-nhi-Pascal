program luythua2;
var a:array[1..4000] of integer;
    n,b:integer;
procedure input;
var f:text;
begin
   assign(f,'luythua2.inp');
   reset(f);
   readln(f,n);
   close(f);
end;
procedure output;
var g:text;
    i,dem,d,nho:integer;
begin
   assign(g,'luythua2.out');
   rewrite(g);
   a[1]:=1;
   nho:=0;
   d:=1;
   dem:=1;
   while dem <= n do
   begin
      for i:=1 to d do
      begin
         a[i]:=a[i]*2+nho;
         if a[i] >= 10 then
         begin
            nho:=a[i] div 10;
            a[i]:=a[i] mod 10;
         end
         else nho:=0;
      end;
      if nho>0 then
      begin
         d:=d+1;
         a[d]:=nho;
         nho:=0;
      end;
      dem:=dem+1;
   end;
   for i:=d downto 1 do write(g,a[i]);
   close(g);
end;
begin
   input;
   output;
end.