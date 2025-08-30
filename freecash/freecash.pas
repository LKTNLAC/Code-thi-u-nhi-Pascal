program freecash;
const
   fi='freecash.inp';
   fo='freecash.out';
var h1,m1,h2,m2,n,i,cash,max:longint;
procedure input;
var f:text;
begin
   assign(f,fi);
   reset(f);
   max:=1;
   readln(f,n);
   h1:=100; m1:=100;
   for i:=1 to n do
   begin
      readln(f,h2,m2);
      if (h2 <> h1) or (m2 <> m1) then cash:=1
      else inc(cash);
      if(cash>max) then max:=cash;
      h1:=h2;
      m1:=m2;
   end;
   close(f);
end;
procedure output;
var  g:text;
begin
   assign(g,fo);
   rewrite(g);
   write(g,max);
   close(g);
end;
begin
   input;
   output;
end.