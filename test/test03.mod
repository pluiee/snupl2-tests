// test03: matrix multiplication

module test03;

const N: integer = 2;
var A, B, C: integer[N][N];

procedure matinit(m: integer[][], i: integer);
var x, y, v: integer;
begin
    v := 1;
    while (y < N) do
        x := 0;
        while (x < N) do
            m[y][x] := v;
            v := v + i;
            x := x + 1
        end;
        y := y + 1
    end
end matinit;

procedure matprint(m: integer[][]; title: char[]);
const MStr : char[] = ". Matrix ";
var N,M,x,y: integer;
begin
    M := DIM(m, 1);
    N := DIM(m, 2);

    WriteStr(title); WriteStr(MStr); WriteInt(M); WriteChar('x'); WriteInt(N); 
    WriteLn();
    WriteStr("[\n");

    while (y < M) do
        WriteStr("  "); WriteInt(y); WriteStr(":  [   ");

        x := 0;
        while (x < N) do
            WriteInt(m[y][x]); WriteStr("   ");
            x := x+1
        end;

        WriteStr("]\n");
        y := y+1
    end;

    WriteStr("]\n\n")
end matprint;


procedure matmul(c, a, b: integer[][]);
var i, j, k: integer;
begin
    i := 0;
    while(i < N) do
        j := 0;
        while(j < N) do
            k := 0;
            c[i][j] := 0;
            while(k < N) do
                c[i][j] := c[i][j] + a[i][k] * b[k][j];
                k := k + 1
            end;
            j := j + 1
        end;
        i := i + 1
    end
end matmul;

begin
    matinit(A, 1); matinit(B, 2);
    matmul(C, A, B);
    matprint(A, "A"); matprint(B, "B");
    matprint(C, "C")
end test03.