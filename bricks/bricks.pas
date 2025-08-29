program bricks;
var
   fi,fo:text;
   g,y,m,n:int64;
   sum,prod:int64;
   low,middle,high:int64;
procedure input;
begin
   assign(fi,'bricks.inp');
   reset(fi);
   readln(fi,g,y);
   close(fi);
end;
procedure solve;
begin
   sum:=g div 2+2;
   prod:=g+y;
   low:=0; high:=sum div 2;
   while low<=high do
   begin
      middle:=(low+high) div 2;
      m:=middle;
      n:=sum - m;
      if (m>prod div n+1) or (m*n >= prod)
         then high:=middle - 1
      else low:=middle + 1;
   end;
   m:=low;
   n:=sum-m;
end;
procedure output;
begin
   assign(fo,'bricks.out');
   rewrite(fo);
   writeln(fo,m,' ',n);
   close(fo);
end;
begin
   input;
   solve;
   output;
end.