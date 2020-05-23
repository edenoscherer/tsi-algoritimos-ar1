program exercicio4;
var
    area, altura, base: real;
    count: integer;
begin
    count := 0;
    repeat
    begin
        count := count + 1;
        writeln('Cálculo de área número ', count);
        write('Informe a base ');
        readln(base);
        write('Informe a altura ');
        readln(altura);
        area := (base * altura) / 2;
        write('A área é: ');
        writeln(area:10:2);
        writeln();
    end;        
    until (count = 6);
end.