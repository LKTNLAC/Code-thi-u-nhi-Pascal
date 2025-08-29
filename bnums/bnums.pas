const
    fi = 'BNUMS.INP';
    fo = 'BNUMS.OUT';
    maxN = 1000000;

var d: array[1..maxN] of longint;
    n: longint;

function Check(n: longint): boolean;
var s, m: longint;
begin
    s := 0;
    m := 0;
    while (n > 0) do
    begin
        s := s + n mod 10;
        inc(m);
        n := n div 10;
    end;
    exit(s mod m = 0);
end;

procedure Sieve;
var i: longint;
begin
    n := 0;
    i := 1;
    while (n < maxN) do
    begin
        if Check(i) then
        begin
            inc(n);
            d[n] := i;
        end;
        inc(i);
    end;
end;

procedure Solve;
var f, g: text;
    x: longint;
begin
    Sieve;
    assign(f, fi); reset(f);
    assign(g, fo); rewrite(g);
    while not eof(f) do
    begin
        readln(f, x);
        writeln(g, d[x]);
    end;
    close(f); close(g);
end;
begin
    Solve;
end.
