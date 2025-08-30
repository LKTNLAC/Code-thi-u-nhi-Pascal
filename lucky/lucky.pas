{program lucky;
var a,i,kq,flag,n:longint;
procedure input;
var f:text;
begin
   assign(f,'lucky.inp');
   reset(f);
   read(f,a);
   close(f);
end;
procedure output;
var g:text;
begin
   assign(g,'lucky.out');
   rewrite(g);
   i:=a;
   flag:=0;
   while i <> maxlongint do
   begin
      n:=abs(i);
      while n <> 0 do
      begin
         if (n mod 10 = 8)and(a=i) then
            begin
               kq:=1;
               break;
            end;
         if n mod 10 = 8 then
            begin
               flag:=1;
               break;
            end;
               n:=n div 10;
         end;
      if flag=1 then
      begin
         kq:=i-a;
         break;
      end;
      inc(i);
   end;
   writeln(g,kq);
   close(g);
end;
begin
   input;
   output;
end.}
const
   fi = 'lucky.inp';
   fo = 'lucky.out';
function lucky(n:longint):boolean;
begin
   while (n <> 0)do
   begin
      if (abs(n mod 10) = 8) then exit(true);
      n := n div 10;
   end;
   exit(false);
end;
procedure solve;
var a,b:longint;
    f:text;
begin
   assign(f,fi);
   reset(f);
   readln(f,a);
   close(f);
   b := 1;
   while not lucky(a+b) do inc(b);
   assign(f,fo);rewrite(f);
   write(f,b);
   close(f);
end;
begin
   solve;
end.
