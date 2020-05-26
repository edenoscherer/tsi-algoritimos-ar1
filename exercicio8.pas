program exercicio8;
TYPE CLIENTE = RECORD
    codigo: string;
    nome: string;
    endereco: string;
    dt_nascimento: array[1..3] of string;
    sexo: char;
    vl_devido: real;
    vl_credito: real;
    idade: integer;
    status: string;
end;
var
    clientes: array[1..5] of CLIENTE;
    count: integer;
    continuar: char;
    finalizar: boolean;
begin
    repeat
    begin
        for count := 1 to 5 do
        begin
            write('Informe o código para o cliente ', count,': ');
            readln(clientes[count].codigo);
            write('Informe o nome para o cliente ', count,': ');
            readln(clientes[count].nome);
            write('Informe o endereço para o cliente ', count,': ');
            readln(clientes[count].endereco);
            write('Informe o dia do nascimento do cliente ', count,': ');
            readln(clientes[count].dt_nascimento[1]);
            write('Informe o mês do nascimento do cliente ', count,': ');
            readln(clientes[count].dt_nascimento[2]);
            write('Informe o ano do nascimento do cliente ', count,': ');
            readln(clientes[count].dt_nascimento[3]);
            write('Informe o sexo (M,F) para o cliente ', count,': ');
            readln(clientes[count].sexo);
            write('Informe o valor total devido para o cliente ', count,': ');
            readln(clientes[count].vl_devido);
            write('Informe o valor total em crédito, para o cliente ', count,': ');
            readln(clientes[count].vl_credito);
            write('Informe a idade para o cliente ', count,': ');
            readln(clientes[count].idade);
            write('Informe o status (ativo ou inativo) para o cliente ', count,': ');
            readln(clientes[count].status);
            writeln();

        end;

        writeln('--------------------------');
        for count := 1 to 5 do
        begin
            writeln();
            writeln('Dados registrados para o cliente ',count, '.');
            writeln('Código: ', clientes[count].codigo);
            writeln('Nome: ', clientes[count].nome);
            writeln('Endereço: ', clientes[count].endereco);
            writeln(
                'Data de nascimento: ',
                clientes[count].dt_nascimento[1],
                '/',
                clientes[count].dt_nascimento[2],
                '/',
                clientes[count].dt_nascimento[3]
            );
            writeln('Sexo: ', clientes[count].sexo);
            writeln('Valor total devido: ', clientes[count].vl_devido:0:2);
            writeln('Valor total em crédito: ', clientes[count].vl_credito:0:2);
            writeln('Idade: ', clientes[count].idade);
            writeln('Status: ', clientes[count].status);
        end;

        writeln('--------------------------');
        writeln();
        write('Deseja executar o algoritmo novamente? (S/N) ');
        readln(continuar);
        if upcase(continuar) = 'S' then
            finalizar := false
        else
        begin
            finalizar := true;
            writeln('O algoritmo será finalizado.');
        end;
    end;
    until (finalizar = true);
end.
