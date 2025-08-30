program mul;
type mang=array[0..2010]of longint;
var a,b:mang;
procedure input;
var f:text;
    ch:char;
begin
   assign(f,'mul.inp');
   reset(f);
   fillchar(a,sizeof(a),0);
   fillchar(b,sizeof(b),0);
   while not eoln(f) do
   begin
      read(f,ch);
      a[0]:=a[0]+1;
      a[a[0]]:=ord(ch)-48;
   end;
   readln(f);
   while not eoln(f) do
   begin
      read(f,ch);
      b[0]:=b[0]+1;
      b[b[0]]:=ord(ch)-48;
   end;
   close(f);
end;
procedure daomanga;
var i,tam:integer;
begin
   for i:=1 to a[0] div 2 do
   begin
      tam:=a[i];
      a[i]:=a[a[0]-i+1];
      a[a[0]-i+1]:=tam;
   end;
end;
procedure daomangb;
var i,tam:integer;
begin
   for i:=1 to b[0] div 2 do
   begin
      tam:=b[i];
      b[i]:=b[b[0]-i+1];
      b[b[0]-i+1]:=tam;
   end;
end;
function max1(p,q:longint):longint;
var max2:longint;
begin
    max2:=p;
    if max2<q then max2:=q;
    max1:=max2;
end;
function congmang(a,b:mang):mang;
var i,nho:integer;
    c:mang;
begin
   fillchar(c,sizeof(c),0);
   c[0]:=max1(a[0],b[0]);
   nho:=0;
   for i:=1 to c[0] do
   begin
      c[i]:=a[i]+b[i]+nho;
      if c[i]>9 then
      begin
         c[i]:=c[i] mod 10;
         nho:=1;
      end
      else nho:=0;
   end;
   if nho>0 then
   begin
      c[0]:=c[0]+1;
      c[c[0]]:=1;
   end;
      for i:=0 to c[0] do congmang[i]:=c[i];
end;
function nhan1sovoimang(k:integer;a:mang):mang;
var nho,i:integer;
    d:mang;
begin
   fillchar(d,sizeof(d),0);
   if k>0 then
   begin
      nho:=0;
      d[0]:=a[0];
      for i:=1 to a[0] do
      begin
         d[i]:=a[i]*k+nho;
         if d[i]>9 then
         begin
            nho:=d[i] div 10;
            d[i]:=d[i] mod 10;
         end
         else nho:=0;
      end;
      if nho>0 then
      begin
         d[0]:=a[0]+1;
         d[d[0]]:=nho;
      end;
   end
   else
   begin
     d[0]:=1;
     d[1]:=0;
   end;
   fillchar(nhan1sovoimang,sizeof(nhan1sovoimang),0);
   for i:=0 to d[0] do nhan1sovoimang[i]:=d[i];
end;
procedure output;
var i,nho,max,flag:longint;
    f:text;
    c,d:mang;
begin
   assign(f,'mul.out');
   rewrite(f);
   fillchar(c,sizeof(c),0);
   fillchar(d,sizeof(d),0);
   for i:=1 to a[0] do
   begin
      fillchar(c,sizeof(c),0);
      c:=nhan1sovoimang(a[i],b);
      d:=congmang(d,c);
      b:=nhan1sovoimang(10,b);
   end;
   for i:=d[0] downto 1 do write(f,d[i]);
   close(f);
end;
begin
   input;
   daomanga;
   daomangb;
   output;
end.
