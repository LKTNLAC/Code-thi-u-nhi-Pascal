program lares;
const
   fi='lares.inp';
   fo='lares.out';
var m,n,k:longint;
procedure input;
var f:text;
begin
   assign(f,fi);
   reset(f);
   readln(f,m,n,k);
   close(f);
end;
procedure output;
var g:text;
    nh:longint;
begin
    assign(g,fo);
    rewrite(g);
       if(m<n-k) or (m div 2 <=n-k) then nh:=m div 2 else
          if m-k>=n*2 then nh:=n else
             nh:=(m+n-k) div 3;
    writeln(g,nh);
    close(g);
end;
begin
   input;
   output;
end.
