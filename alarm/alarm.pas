const
   fi='alarm.inp';
   fo='alarm.out';
   d:array[0..9]of longint = (6,2,5,5,4,5,6,3,7,6);
var i,n,hh,mm:longint;
    f:text;
function countseg(n:longint):longint;
var x,y:longint;
begin
   x:=n mod 10;
   y:=n div 10;
   exit(d[x]+d[y]);
end;

procedure findtime(seg: longint; var hh, mm:longint);
var h,m:longint;
begin
   for h:=0 to 23 do
     for m:=0 to 59 do
       if (countseg(h) + countseg(m) = seg) then
       begin
          hh:=h; mm:=m;
          exit;
       end;
   hh:=-1;
   mm:=-1;
end;

begin
   assign(f,fi);reset(f);
   readln(f,n);
   close(f);
   findtime(n,hh,mm);
   assign(f,fo); rewrite(f);
   if (hh <> -1) and (mm <> -1) then
   begin
      if(hh < 10) then write(f,'0');
      write(f,hh,':');
      if(mm < 10) then write(f,'0');
      write(f,mm);
   end
   else write(f,'Impossible');
   close(f);
end.
