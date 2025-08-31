program W_b;
var m,n,c,r,d,k,p,i,j:int64;
procedure input;
var f:text;
begin
   assign(f,'w_b.inp');
   reset(f);
   readln(f,m,n,i,j,c);
   close(f);
end;
procedure solve;
begin
   d:=m*n;
   k:=i+j;
   if (d mod 2=0) then p:=2;
   if (d mod 2=1) then
   begin
      if (k mod 2=1) and (c=0) then p:=1;
      if (k mod 2=0) and (c=1) then p:=1;
      if (k mod 2=0) and (c=0) then p:=0;
      if (k mod 2=1) and (c=1) then p:=0;
   end;
end;
procedure output;
var g:text;
begin
   assign(g,'w_b.out');
   rewrite(g);
   if p=0 then writeln(g,'black');
   if p=1 then writeln(g,'white');
   if p=2 then writeln(g,'equal');
   close(g);
end;
begin
   input;
   solve;
   output;
end.