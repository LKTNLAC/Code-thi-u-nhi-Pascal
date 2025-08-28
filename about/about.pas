program about;
var a:array[1..100,1..100]of string;
    n,k,i,j,u,v:longint;
procedure input;
var f:text;
begin
   assign(f,'about.inp');
   reset(f);
   readln(f,n,k);
   close(f);
end;
function uoc(m:longint):longint;
var l,dem:longint;
begin
   dem:=1;
   for l:=1 to m div 2 do
      if m mod l = 0 then
         begin
            dem:=dem+1;
         end;
      exit(dem);
end;
procedure output;
var g:text;
begin
   assign(g,'about.out');
   rewrite(g);
   v:=0;
   for i:=1 to n do
   begin
      for j:=1 to n do
      begin
         v:=v+1;
         u:=uoc(v);
         if u<=k then a[i,j]:='*';
         if u>k then a[i,j]:='.';
         write(g,a[i,j]);
      end;
      writeln(g);
   end;
   close(g);
end;
begin
   input;
   output;
end.