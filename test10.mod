// test10: bubble sort

module test10;

const N: integer = 10;
var A: integer[N];

procedure init(a: integer[]);
var i: integer;
begin
    i := 0;
    while(i < N) do
        a[i] := ReadInt();
        i := i + 1
    end
end init;

procedure printarr(a: integer[]);
var i: integer;
begin
    i := 0;
    while(i < N) do
        WriteInt(a[i]);
        WriteStr(" ");
        i := i + 1
    end;
    WriteLn()
end printarr;

procedure bubblesort(a: integer[]);
var i, j, tmp: integer;
begin
    j := N - 1;
    while(j > 0) do
        i := 0;
        while(i < j - 1) do
            if(a[i] > a[i+1]) then 
                tmp := a[i];
                a[i] := a[i+1];
                a[i+1] := tmp
            end;
            i := i + 1
        end;
        j := j - 1;
        printarr(a)
    end
end bubblesort;

begin
    init(A);
    printarr(A);
    bubblesort(A)
end test10.