program numfre;
const fin='numfre.inp';
        fout='numfre.out';
var a,b,i,dem:longint;
    f,g:text;
function daonguoc(x:longint):longint;
var s,DU:longint;
begin
        s:=0;
        repeat
                du:=x mod 10;
                s:=s*10+du;
                x:=x div 10;
        until x=0;
        exit(s);
END;
function ucln(x,y:longint):longint;
var du:longint;
begin
        repeat
                du:=x mod y;
                x:=y;
                y:=du;
        until du=0;
        exit(x);
end;
begin
        assign(f,fin);reset(f);
        assign(g,fout);rewrite(g);
        readln(f,a,b);
        for i:=a to b do
                if ucln(i,daonguoc(i))=1 then
                        dem:=dem+1;
        writeln(g,dem);
        close(f);
        close(g);
end.