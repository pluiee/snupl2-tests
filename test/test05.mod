// test05: array metadata alignment

module test05;
procedure A();
var x: boolean;
    y: longint[4];
begin
    WriteStr("Call A");
    WriteLn()
end A;

procedure B();
var x: boolean;
    y: longint[5];
begin
    WriteStr("Call B");
    WriteLn()
end B;

procedure C();
var x: char;
    z: longint[3];
begin
    WriteStr("Call C");
    WriteLn()
end C;

begin
    A(); B(); C()
end test05.