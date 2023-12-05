// test09: large combinatorics

module test09;

const p: integer = 1000000007;
var N, K: integer;
    a, b: longint;

function fac(n: integer, i: integer, ret: longint): longint;
begin
    if(n = i) then return ret
    else
        return fac(n, i+1, ret * (i+1) % p)
    end
end fac;

function power(n: longint; k: integer): longint;
var x: longint;
begin
    if(k = 0) then return 1
    else
        x := power(n, k/2);
        x := x * x % p;
        if(k % 2 = 1) then return x * n % p
        else return x end
    end
end power;

begin
    N := ReadInt();
    K := ReadInt();
    a := fac(N, 0, 1);
    b := fac(K, 0, 1) * fac(N-K, 0, 1) % p;
    a := a * power(b, p-2) % p;
    WriteStr("comb(N, K) % p = ");
    WriteInt(a)
end test09.