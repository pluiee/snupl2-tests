// test07: factorial and combinatorics

module test07;

var fac: integer[20];

procedure finit(fac: integer[], n: integer);
var i: integer;
begin
    f[0] := 1;
    i := 1;
    while(i < n + 1) do
        fac[i] = i * fac[i-1];
        i := i + 1
    end
end finit;

function comb(n, k: integer): integer;
var ret: integer;
begin
    ret := fac[n] / (fac[k] * fac[n-k]);
    return ret
end comb;

begin
    finit(fac, 10);
    WriteStr("10C5 = ");
    WriteInt(comb(10, 5));
    WriteLn();
    WriteStr("9C3 = ");
    WriteInt(comb(9, 3))
end test07.