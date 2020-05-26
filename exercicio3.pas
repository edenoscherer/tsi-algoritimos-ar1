program exercicio3;
var
    soma, num: real;
    count: integer;
begin
    count:=0;
    soma:=0;
    while count < 20 do
    begin
        count:= count+1;
        write('Informe o um valor para número ', count, ': ');
        readln(num);
        soma := soma + num;

    end;
    writeln('A soma dos números é ', soma:10:2);
end.
