program exercicio7;
var
    vetor1: ARRAY[1..4,1..5] OF integer;
    somaColunas: ARRAY[1..5] of integer = (0,0,0,0,0);
    i, y, num: integer;
begin
    for i := 1 to 4 do
    begin
        for y := 1 to 5 do
        begin
            write('Informe um número inteiro para a posição ',i,'-',y,': ');
            readln(num);
            vetor1[i,y] := num;
            somaColunas[y] := somaColunas[y]+num; 
        end;
    end;
    num := 0;
    for i := 1 to 5 do
    begin
        num := num + somaColunas[i];
        writeln('A soma da coluna ', i, ' é: ', somaColunas[i]);
    end;
    writeln('A soma de todas as colunas é: ', num);
end.