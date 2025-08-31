program numquiz;
const fi='numquiz.inp';
      fo='numquiz.out';
function lcd(a,b:longint):longint;
var temp:longint;
begin
   temp:= b mod a;
      while temp<>0 do
            begin
               temp:= a mod b;
               a:=b;
               b:=temp;
             end;
   exit(a);
end;
procedure solve;
var f,g:text;
    x,i,n:longint;
    u:int64;
begin
   assign(f,fi); reset(f);
   assign(g,fo); rewrite(g);
   readln(f,n);
   read(f,u);
   for i:=2 to n do
   begin
      read(f,x);
      u:=lcd(u,x);
   end;
   write(g,u*n);
   close(f);close(g);
end;
begin
   solve;
end.


