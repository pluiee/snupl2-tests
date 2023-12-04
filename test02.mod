// test02: tailrec fibonacci

module test02;

function fibonacci(n, i, a, b: integer): integer;
begin
  if(n = i) then return b
  else return fibonacci(n, i+1, b, a+b) end;
end fibonacci;

var N: integer;

begin
  N := 1;
  while(N > 0) do
    N := ReadInt();
    if (N < 1) then WriteStr("Exit Program")
    else WriteInt(fibonacci(N, 1, 0, 1)) end;
    WriteLn();
  end
end test02.