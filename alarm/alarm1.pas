program alarm1;
var h,m,x,y:int64;
procedure input;
var f:text;
begin
   assign(f,'alarm1.inp');
   reset(f);
   readln(f,h,m);
   close(f);
end;
procedure output;
var g:text;
begin
    assign(g,'alarm1.out');
    rewrite(g);
    if (h<1) then
    begin
       m:=m+60;
       h:=24-1;
       begin
         y:=m-45;
         x:=h;
       end;
    end;
end;
begin
   input;
   output;
end.