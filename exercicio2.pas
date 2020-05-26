program exercicio2;
var
	altura, peso_i: real;
	sexo: char;
    soma, num: real;
    count: integer;
    C: real;
    F: integer;
    menu: integer;
    finalizar: boolean;
begin
    finalizar := false;
    repeat
    begin
        writeln('Menu do sistem:');
        writeln('1 – Exercício 1');
        writeln('2 – Exercício 3');
        writeln('3 – Exercício 5');
        writeln('4 – Fim');
        read(menu);
        case menu of
            1:
            begin
                peso_i:=0;
                write('Informe a altura: ');
                readln(altura);
                write('Informe o sexo(M/F): ');
                readln(sexo);
                if (sexo='M') or (sexo='m') then
                    begin
                        peso_i := (450.7 * altura)/10;
                    end
                else if (sexo='F') or (sexo='f') then
                    begin
                        peso_i := (400.7 * altura)/10;
                    end;
                if peso_i>0 then
                    begin
                        writeln('O peso ideal é ',peso_i:2:2);
                    end
                else writeln('Sexo informado não é valido.');
            end;
            2:
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
            end;
            3:
            begin
                for F := 40 to 60 do
                begin
                    C := (5/9)*(F-32);
                    writeln( F, ' => ',C:2:2);
                end;
            end;
            4:
            begin
                writeln('Fim de execução - tudo de bom.');
                finalizar := true;
            end;
            else
            begin
                writeln('Opção inválida.');
            end;
        end;
        writeln();
    end;
    until (finalizar);
end.
