program idols;
const
   fi='idol.inp';
   fo='idol.out';
procedure input;
var f:text;
begin
   assign(f,fi);
   reset(f);
   close(f);
end;
procedure output;
var g:text;
begin
   assign(g,fo);
   rewrite(g);

end;