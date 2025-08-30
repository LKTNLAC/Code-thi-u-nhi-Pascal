program decode;
const
   fi='decode.inp';
   fo='decode.out';
   c:array['a'..'b', 'a'..'c'] of char=(('8','7','9'),('6','4','5'));
procedure solve;
var f,g: text;
    i:longint;
    s,res:ansistring;
    stop:boolean;
begin
   assign(f,fi); reset(f);
   readln(f,s);
   close(f);
   i:=length(s); res:=''; stop:=false;
   while (i>=1) and (not stop) do
   begin
      case s[i] of
         'a':res:= '1' + res;
         'b':res:= '2' + res;
         'c':
         begin
            dec(i);
            if (s[i]='c') then res:='3' + res
            else if (i>1) then
            begin
               res:= c[s[i], s[i-1]] + res;
               i:=i-1;
            end
            else stop:=true;
         end;
      end;
      dec(i);
   end;
   assign(f,fo); rewrite(f);
   if stop then write(f,'-1')
   else write(f,res);
   close(f);
end;
begin
   solve;
end.
