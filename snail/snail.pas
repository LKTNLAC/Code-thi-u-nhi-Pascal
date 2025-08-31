program snail;
const
   fi='snail.inp';
   fo='snail.out';
type data=int64;
var a,b,v:data;
procedure input;
var f:text;
begin
    assign(f,fi); reset(f);
    readln(f,a,b,v);
    close(f);
end;
procedure output;
var d:longint;
    f:text;
begin
   if ((v-b) mod abs(a-b)=0) then
      d:=((v-b) div abs(a-b))
   else
      d:=(((v-b) div abs(a-b)+1));
   assign(f,fo);
   rewrite(f);
   write(f,d);
   close(f);
end;
begin
   input;
   output;
end.
