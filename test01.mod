// test01: check negative integers

module test01;

const
    N: integer = -1423;

var
    x, y, z: integer;

procedure print(n: integer);
begin
    WriteInt(n)
end print;

procedure printWrapper(n: integer);
begin
    print(n)
end printWrapper;

begin
    WriteInt(N);
    WriteLn();
    print(N);
    printWrapper(N);
    x := N;
    y := N * N;
    WriteInt(x - y)
end test01.