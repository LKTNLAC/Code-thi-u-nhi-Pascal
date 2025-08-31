const
   fi='robot.inp';
   fo='robot.out';
function turnright(x1,y1,x2,y2,x3,y3:longint):boolean;
var flag:boolean;
begin
   flag:=false;
   if (x1 < x2) and (y2 > y3) then flag := true;
   if (y1 > y2) and (x2 > x3) then flag := true;
   if (x1 > x2) and (y2 < y3) then flag := true;
   if (y1 < y2) and (x2 < x3) then flag := true;
   exit(flag);
end;
procedure solve;
var f:text;
    n:longint;
    x1,y1,x2,y2,x3,y3,i,ans:longint;
begin
   ans:=0;
   assign(f,fi);reset(f);
   readln(f,n,x1,y1,x2,y2);
   for i:=3 to n do
   begin
      readln(f,x3,y3);
      if turnright(x1,y1,x2,y2,x3,y3) then inc(ans);
      x1 := x2; y1 := y2;
      x2 := x3; y2 := y3;
   end;
   close(f);
   assign(f,fo);rewrite(f);
   write(f,ans);
   close(f);
end;
begin
   solve;
end.