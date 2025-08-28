program avgseq;
var a,b:array[1..100]of longint;
    i,c,n,d:longint;
procedure input;
var f:text;
begin
   assign(f,'avgseq.inp');
   reset(f);
   read(f,n);
   for i:=1 to n do read(f,b[i]);
   close(f);
end;
procedure output;
var g:text;
begin;
   assign(g,'avgseq.out');
   rewrite(g);
   c:=0;
   for i:=1 to n do
   begin
      a[i]:=b[i]*i-c;
      c:=c+a[i];
      write(g,a[i],' ');
   end;
   close(g);
end;
begin
   input;
   output;
end.

