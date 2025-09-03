program bai18;
var a,b,c,p1,p2,s:real;
begin
        readln(a,b,c);
        p1:=a+b+c;
        p2:=(a+b+c)/2;
        s:=sqrt(p2*(p2-a)*(p2-b)*(p2-c));
        writeln(p1:0:2);
        writeln(s:0:2);
end.