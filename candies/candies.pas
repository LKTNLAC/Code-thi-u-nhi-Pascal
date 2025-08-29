program candies;
const
    finp='candies.inp';
    fout='candies.out';
    ceil=2*round(1E6);
var n:int64;
    a:array[1..ceil] of qword;
procedure nhap;
var f:text;
begin
   assign(f,finp); reset(f);
   readln(f,n);
   close(f);
end;
procedure init;
var i:longint;
    x,y,z:qword;
begin
   for i:=1 to ceil do
      begin
         x:=i; y:=i+1; z:=i+2;
         a[i]:=x*y*z div 6;
      end;
end;
procedure tknp(x:qword;l,r:longint):longint;
var i,j,mid:longint;
begin
   i:=l; j:=r;
   while i<=j do
   begin
      mid:=(i+j) div 2;
      if a[mid]=x then exit(mid);
      if a[mid]>x then j:=mid-1;
      if a[mid]<x then i:=mid+1;
   end;
   exit(0);
end;
function solve:string;
var i,b:longint;
begin
   if n=0 then exit('yes');
   for i:=1 to ceil do
      if a[i]>n then
      begin
         b:=tknp(a[i]-n,1,i-1);
         if b<>0 then exit('yes);
      end;
   exit('no');
end;
procedure xuat_solve;
var f:text;
    res:string;
begin
   assign(f,fout); rewrite(f);
   res:=solve;
   write(f,res);
   close(f);
end;
begin
   nhap;
   init;
   xuat_solve;
end.