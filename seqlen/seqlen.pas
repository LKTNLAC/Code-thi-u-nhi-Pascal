program seqlen;
var n:int64;
    i:longint;
function cs(n:int64):longint;
var i:longint;
begin
   i:=0;
   while(n>0) do
   begin
      inc(i);
      n:=n div 10;
   end;
   exit(i);
end;
function up(n:int64):int64;
var i,c:longint;
     cnt,d:int64;
begin
   c:=cs(n);
   d:=1;
   cnt:=0;
   for i:=1 to c-1 do
   begin
      cnt:=cnt+9*d*i;
      d:=d*10;
   end;
   cnt:=cnt+(n-d+1)*c;
   exit(cnt);
end;

procedure input;
var f:text;
begin
   assign(f,'seqlen.inp');
   reset(f);
   readln(f,n);
   close(f);
end;

procedure output;
var g:text;
begin
   assign(g,'seqlen.out');
   rewrite(g);
   write(g,up(n));
   close(g);
end;

begin
   input;
   output;
end.
