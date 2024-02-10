// test08: boolean operators

module test08;

var x: boolean;
    y, z: integer;

begin
    x := true;
    z := 0;
    if(y = y + z) then WriteStr("y = y + z")
    else x := false end;
    if(x || (z = 0)) then WriteStr("x || z = 0")
    else y := 1 end;
    y := 2;
    if(x && (y = 2)) then x := true; z := 3
    else z := 2 end;
    WriteInt(z)
end test08.