program mix;
const
   fi='mix.inp';
   fo='mix.out';
var x1,x2,x3,y1,y2,y3,z1,z2,z3,p,q,r:qword;
    f:text;
function ucln(a,b:qword):qword;
var c:qword;
begin
   while (b>0)do
   begin
      c:=a mod b;
      a:=b;
      b:=c;
   end;
   exit(a);
end;
function bcnn(a,b:qword):qword;
var c:qword;
begin
   c:=a; c:=c*b;
   exit(c div ucln(a,b));
end;
procedure solve(x1,y1,z1,x2,y2,z2,x3,y3,z3:qword);
var s1,s2,s3,s,t:qword;
begin
   s1:=x1+y1+z1;
   s2:=x2+y2+z2;
   s3:=x3+y3+z3;
   s:=bcnn(s1,bcnn(s2,s3));
   t:=s div s1;x1:=x1*t;y1:=y1*t;z1:=z1*t;
   t:=s div s2;x2:=x2*t;y2:=y2*t;z2:=z2*t;
   t:=s div s3;x3:=x3*t;y3:=y3*t;z3:=z3*t;
   p:=x1+x2+x3;
   q:=y1+y2+y3;
   r:=z1+z2+z3;
   t:=ucln(p,ucln(q,r));
   p:=p div t; q:=q div t; r:=r div t;
end;
begin
   assign(f,fi);reset(f);
   readln(f,x1,y1,z1,x2,y2,z2,x3,y3,z3);
   close(f);
   assign(f,fo);rewrite(f);
   solve(x1,y1,z1,x2,y2,z2,x3,y3,z3);
   write(f,p,' ',q,' ',r);
   close(f);
end.
