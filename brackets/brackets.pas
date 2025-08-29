program brackets;
const
   fi='brackets.inp';
   fo='brackets.out';
var s:array[1..2000] of char;
    stack:array[1..1000] of char;
    n,t:integer;
procedure nhap;
var f:text;
    c:char;
    i:integer;
begin
   assign(f,fi);
   reset(f);
   n:=0;
   while( not eoln(f)) do
   begin
      inc(n);
      read(f,c);
      s[n]:=c;
   end;
   close(f);
   for i:=n+1 to 2*n do
      s[i]:=s[i-n];
end;
procedure push(v:char);
begin
   inc(t);
   stack[t]:=v;
end;
function pop:char;
begin
   pop:=stack[t];
   dec(t);
end;
function top:char;
begin
   top:=stack[t];
end;
function emty:boolean;
begin
   emty:=(t=0);
end;
function kiemtra(k:integer):boolean;
var i:integer;
begin
   if (n mod 2<>0) then
      exit(false);
   t:=0;
   for i:=k to k+n-1 do
   begin
      if (s[i]='(') or (s[i]='[') or (s[i]='{') then push(s[i])
      else if (s[i]=')') or (s[i]=']') or (s[i]='}') then
         if(emty) then exit(false)
         else
         begin
            if (s[i]=')') and (top='(') then pop
            else if (s[i]=']') and (top='[') then pop
            else if (s[i]='}') and (top='{') then pop
            else exit(false);
         end;
   end;
   kiemtra:=true;
end;
procedure xuat;
var f:text;
    k:integer;
    kt:boolean;
begin
   assign(f,fo);
   rewrite(f);
   kt:=false;
   for k:=1 to n do
      if(kiemtra(k)=true) then
      begin
         write(f,'yes');
         close(f);
         exit;
      end;
   if (n=0) then
      write(f,'yes')
   else
      write(f,'no');
   close(f);
end;
begin
   nhap;
   xuat;
end.