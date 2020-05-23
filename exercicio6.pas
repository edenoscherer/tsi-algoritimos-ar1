program exercicio6;
var
    vetor1: ARRAY [1..10] OF real;
    num: real;
    count,  Pmaior, Pmenor: integer;
begin
    count := 0;
    Pmaior := 0;
    Pmenor := 0;
    repeat
        count := count + 1;
        write('Informe um número maior que 0 na posição ', count, ': ');
        readln(num);
        if num > 0 then
            begin
                vetor1[count]:= num;
                if (Pmaior < 1) or (vetor1[Pmaior] < num) then
                    Pmaior := count;
                if (Pmenor < 1) or (vetor1[Pmenor] > num) then
                    Pmenor := count;
            end
        else
            begin
                writeln('Valor inválido');
                count := count - 1;
            end;
    until (count = 10);
    writeln();
    writeln('O maior número está na posição ', Pmaior, ' com o valor:', vetor1[Pmaior]:10:2);
    writeln('O menor número está na posição ', Pmenor, ' com o valor:', vetor1[Pmenor]:10:2);
end.