program sub;
var a,b,c:array[0..1010]of integer;
procedure input;
var f:text;
    ch:char;
begin
   assign(f,'sub.inp');
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
procedure output;
var g:text;
    max,i,nho,tam:integer;
begin
   assign(g,'sub.out');
   rewrite(g);
   max:=a[0];
   if (max<b[0]) then max:=b[0];
   c[0]:=max;
   nho:=0;
   if ( a[0]=b[0] ) and (a[a[0]]<b[b[0]]) or ( a[0]<b[0] ) then
   begin
      for i:=1 to c[0] do
      begin
         c[i]:=b[i]-a[i]-nho;
         if ( c[i]<0 ) then
         begin
            nho:=1;
            c[i]:=c[i]+10;
         end
         else nho:=0;
      end;
      if ( nho >0 ) then
      begin
         c[0]:=c[0]-1;
      end;
   end
   else
   begin
      for i:=1 to c[0] do
      begin
         c[i]:=a[i]-b[i]-nho;
         if ( c[i]<0 ) then
         begin
            nho:=1;
            c[i]:=c[i]+10;
         end
         else nho:=0;
      end;
      if ( nho >0 ) then
      begin
         c[0]:=c[0]-1;
      end;
   end;
   while c[c[0]]=0 do c[0]:=c[0]-1;
   if ( a[0]=b[0] ) and (a[a[0]]<b[b[0]]) or ( a[0]<b[0] ) then write(g,'-');
   for i:= c[0] downto 1 do write(g,c[i]);
   close(g);
end;
begin
   input;
   daomanga;
   daomangb;
   output;
end.
