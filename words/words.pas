uses math;
const
   fi='words.inp';
   fo='words.out';
   ABC='ABCDEFGH IJKLMNOPQRS TUVWXYZ';
   maxN= 1000000;
function Isabc(c:char):boolean;
begin
   exit((c in ['A'..'Z']) or (c in ['a'..'z']));
end;
procedure solve;
var f,g:text;
    c1,c2:char;
    i,l,nw,lmax:longint;
begin
   assign(f,fi); reset(f);
   assign(g,fo); rewrite(g);
   i:=0; l:=1; lmax:= -maxlongint;
   nw:=0; c1:=' ';
   while not eof(f) do
   begin
      read(f,c2);
      inc(i);
      if (IsABC(c1) and not IsABC(c2)) or (IsABC(c2) and eof(f)) then
      begin
         if IsABC(c2) and eof(f) then lmax:=max(lmax,i-l+1)
         else lmax:=max(lmax,i-l);
         i:=0; l:=0;
         inc(nw);
      end
      else if (not IsABC(c1)) and IsABC(c2) then l:=i;
      c1:=c2;
   end;
   write(g,nw,' ',lmax);
   close(f); close(g);
end;
begin
   solve;
end.