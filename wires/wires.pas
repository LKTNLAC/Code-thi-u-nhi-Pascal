const
   fi='wires.inp';
   fo='wires.out';
   maxN=100000;
   maxL=1000000000;
var wires:array[1..maxN] of longint;
    n,k:longint;
    lmax:int64;
function check(m:int64):boolean;
var i:longint;
    count:int64;
begin
   count:=0;
   for i:=1 to n do
      count:=count + wires[i] div m;
   exit(count >=k);
end;
function BinSearch(lo, hi: int64):int64;
var res,mi:int64;
begin
   res:=0;
   while(lo <= hi) do
   begin
      mi:=(lo + hi) div 2;
      if check(mi) then
      begin
         lo:=mi + 1;
         res:=mi;
      end
      else hi:=mi - 1;
   end;
   exit(res);
end;
procedure GetData(var f:text);
var i:longint;
    s:int64;
begin
    readln(f,n,k);
    s:=0;
    for i:=1 to n do
    begin
       readln(f, wires[i]);
       s:=s + wires[i];
    end;
    lmax:=s div k;
end;
procedure solve;
var f,g:text;
    l:int64;
begin
   assign(f,fi); reset(f);
   assign(g,fo); rewrite(g);
   while not eof(f) do
   begin
      GetData(f);
      l:= Binsearch(1,lmax);
      writeln(g, l);
   end;
   close(f); close(g);
end;
begin
   solve;
end.