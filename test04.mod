// test04: check opPos

module test04;

var x: integer;
begin
    x := +1;
    WriteInt(x + 3);
    WriteLn();
    x := 3;
    WriteInt(+(-x));
    WriteLn();
    WriteInt(-(+x))
end test04.