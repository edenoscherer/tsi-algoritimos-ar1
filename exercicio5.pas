program exercicio5;
var
    C: real;
    F: integer;
begin
    for F := 40 to 60 do
    begin
        C := (5/9)*(F-32);
        writeln(C:2:2, ' => ', F);
    end;
    writeln();
end.