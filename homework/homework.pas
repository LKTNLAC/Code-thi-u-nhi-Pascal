program homework;
var check,t,a,b:array[1..100000] of integer;
    min,m,n:longint;
procedure input;
var f:text;
    i:longint;
begin
   assign(f,'homework.inp');
   reset(f);
   readln(f,n,m);
   for i:=1 to n do read(f,t[i]);
   readln(f);
   for i:=1 to m do readln(f,a[i],b[i]);
   close(f);
end;
procedure solve;
var max,i,sum:longint;
begin
   for i:=1 to n do check[i]:=1;
   for i:=1 to m do check[a[i]]:=0;
   sum:=0;
   for i:=1 to n do sum:=sum+t[i];
   max:=0;
   for i:=1 to n do
      if (check[i]=1) and (max<t[i]) then max:=t[i];
   min:=sum-max;
end;
procedure output;
var g:text;
begin
   assign(g,'homework.out');
   rewrite(g);
   writeln(g,min);
   close(g);
end;
begin
   input;
   solve;
   output;
end.