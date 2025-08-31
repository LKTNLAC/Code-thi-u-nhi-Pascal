program for20;
var  n,s,i:integer;
begin
        write('nhap n ');
        readln(n);
        s:=0;
        for i:=1 to n do
        s:=i*i+n;
        write(s,'=',i*i,'+',n);
        readln;
end.