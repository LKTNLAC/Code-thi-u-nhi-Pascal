program transtr;
var st,n,s:ansistring;
    i,m:int64;
    code:integer;
procedure input;
var f:text;
begin
   assign(f,'transtr.inp');
   reset(f);
   readln(f,n);

   read(f,st);
   close(f);
end;
function bigmod(s:string):int64;
var i:longint;
    res:int64;
begin
   res:=0;
   for i:=1 to length(s) do
      res:=(res*10 + ord(s[i])-48) mod length(st);
   exit(res);
end;
procedure output;
var g:text;
begin
   assign(g,'transtr.out');
   rewrite(g);
   i:=0;
   m:=bigmod(n);
   while i <> m do
   begin
      s:=copy(st,1,1);
      delete(st,1,1);
      st:=st+s;
      inc(i);
   end;
   writeln(g,st);
   close(g);
end;
begin
   input;
   output;
end.