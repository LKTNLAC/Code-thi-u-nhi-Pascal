program idols;
var a,b:array[0..999999] of int64;
    n,i,e,max,k:int64;
procedure input;
var f:text;
begin
   assign(f,'idols.inp');
   reset(f);
   read(f,n);
   i:=1;
   while(i<=n) do
   begin
      read(f,e);
      k:=1;
      while(k<=e) do
      begin
         read(f,a[i]);
         b[a[i]]:=b[a[i]] + 1;
         inc(k);
      end;
      inc(i);
   end;
   close(f);
end;
procedure output;
var g:text;
begin
   assign(g,'idols.out');
   rewrite(g);
   max:=b[1];
   i:=1;
   while(i<=n) do
   begin
      if(b[i] < b[i+1]) then max:=b[i+1];
      inc(i);
   end;
   i:=1;
   while(i<=n) do
   begin
      if (max=b[i]) then write(g,i,' ');
      inc(i);
   end;
   close(g);
end;
begin
   input;
   output;
end.