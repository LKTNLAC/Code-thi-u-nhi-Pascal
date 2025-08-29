program beauty;
var n:int64;
    i:longint;
procedure input;
var f:text;
begin
   assign(f,'beauty.inp');
   reset(f);
   readln(f,n);
   close(f);
end;
function sodep(k:longint):boolean;
var a,b,i,kn:longint;
begin
   b:=0;
   a:=0;
   kn:=k;
   while (k>0) do
   begin
      b:=b+(kn mod 10);
      kn:=kn div 10;
      k:=k div 10;
      a:=a+1;
   end;
   if b mod a = 0 then exit(true)
   else exit(false);

end;
procedure output;
var g:text;
    dem:longint;
begin
   assign(g,'beauty.out');
   rewrite(g);
   dem:=0;
   for i:=1 to 100000 do
   begin
      if (sodep(i)=true) then dem:=dem+1;
      if dem = n then
      begin
         write(g,i);
         break;
      end;
   end;
   close(g);
end;
begin
   input;
   output;
end.
