const
    fi = 'conseq.inp';
    fo = 'conseq.out';
var p:qword;

function digits(n:qword):longint;
var cnt:longint;
begin
   p:=1;
   cnt:=0;
   while (n > 0) do
   begin
      inc(cnt);
      n:=n div 10;
      p:=p*10;
   end;
   exit(cnt);
end;
//7 -> 9, 10 -> 99
function maxlen(w,m,k:qword):qword;
var len,d:qword;
    n:longint;
begin
   w := w div k;
   len:=0;
   n := digits(m);
   while true do
   begin
      d := n*(p - m);
      if (w < d) then break;
      len:= len + (p - m);
      w := w - d;
      m := p;
      p := p*10;
      inc(n);
   end;
   exit(len + w div n);
end;
procedure solve;
var f:text;
    w,m,k:qword;
begin
   assign(f,fi);
   reset(f);
   readln(f,w,m,k);
   close(f);
   assign(f,fo);
   rewrite(f);
   write(f,maxlen(w,m,k));
   close(f);
end;
begin
   solve;
end.
