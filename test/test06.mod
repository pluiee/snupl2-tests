// test06: check int to longint conversion

module test06;

procedure f(x: integer);
var y: longint;
begin
    y := x;
    if(y = x) then WriteStr("True")
    else WriteStr("False") end;
    WriteLn()
end f;

begin
    f(1); f(3); f(-5)
end test06.