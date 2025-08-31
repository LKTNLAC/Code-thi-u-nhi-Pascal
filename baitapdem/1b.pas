program b1b;
procedure input(var n:int64);
begin
   readln(n);
end;

function Tinhs(n:int64):real;
var i:int64;
    s:real;
begin
   i:=1;
   s:=0;
   while(i<=n) do
   begin
      if(i mod 2=0) then s:=s-1/i
      else s:=s+1/i;
      i:=i+1;
   end;
   tinhs:=s;
end;
procedure output(s:real);
begin
   writeln(s:0:2);
end;
begin
   input(n);
   s:=tinhs(n);
   output(s);
end.
