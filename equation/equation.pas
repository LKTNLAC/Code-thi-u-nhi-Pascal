program equation;
var f,g:text;
    a,b,c,l,m:longint;
    kq:array[1..1000000] of longint;
    e:boolean;
procedure input;
begin
   assign(f,'equation.inp');
   reset(f);
   readln(f,a,b,c);
   close(f);
end;
procedure solve;
var i,j:longint;
    s,p,d:int64;
begin
   l:=0;
   for i:=1 to 81 do
   begin
      d:=0;
      p:=i;
      for j:=2 to a do p:=p*i;
      s:=p*b+c;
      m:=s;
      while m<>0 do
      begin
         d:=d+m mod 10;
         m:=m div 10;
      end;
      if ((s-p*b-c=0) and(s<1000000000)and(d=i)) then
      begin
         l:=l+1;
         kq[l]:=s;
         e:=true;
      end;
   end;
end;
procedure output;
var i:longint;
begin
   assign(g,'equation.out');
   rewrite(g);
   if e=true then for i:=1 to l do writeln(g,kq[i])
   else writeln(g,'no solution');
   close(g);
end;
begin
   input;
   solve;
   output;
end.