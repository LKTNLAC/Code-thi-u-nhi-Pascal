program chessboard;
const
   fi='chessboard.inp';
   fo='chessboard.out';
var m,n,kq:longint;
procedure input;
var f:text;
begin
   assign(f,fi);
   reset(f);
   readln(f,n,m);
   close(f);
end;
procedure solve;
begin
   kq:=m*n div 2;
   if (m*n mod 2 <>0) then kq:=kq+1;
end;
procedure output;
var g:text;
begin
   assign(g,fo);
   rewrite(g);
   write(g,kq);
   close(g);
end;
begin
   input;
   solve;
   output;
end.