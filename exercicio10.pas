program exercicio10;

type REGISTRO = record
    nome: string;
    idade: integer;
    status: string;
end;
Arquivo = FILE of REGISTRO;
var arquivo_dados: Arquivo;

procedure cadastrar();
var
    dados: REGISTRO;
begin
    write('Informe o nome: ');
    readln(dados.nome);
    readln(dados.nome);
    write('Informe a idade: ');
    readln(dados.idade);
    write('Informe o status: ');
    readln(dados.status);
    WRITE(arquivo_dados, dados);

end;

procedure relatorio();
var
    tamanho: integer;
    dados: REGISTRO;
begin
    tamanho := FILESIZE(arquivo_dados);
    writeln('Total de cadastros: ', tamanho);
    reset(arquivo_dados);
    while not eof(arquivo_dados) do
    begin
        read(arquivo_dados, dados);
        writeln('---------------------------');
        writeln('Nome: ', dados.nome);
        writeln('Idade: ',dados.idade);
        writeln('Status: ',dados.status);
    end;
    writeln('---------------------------');
end;

var
    menu: integer;
    finalizar: boolean;
begin
    ASSIGN(arquivo_dados, 'arquivo_dados.dat');
    REWRITE(arquivo_dados);
    finalizar := false;
    repeat
    begin
        writeln('Menu do sistem:');
        writeln('1 – Cadastrar');
        writeln('2 – Relatório');
        writeln('3 – Fim');
        read(menu);
        writeln();
        case menu of
            1: begin
                cadastrar();
            end;
            2: begin
                relatorio();
            end;
            3: begin
                finalizar := true;
            end;
            else begin
                writeln('Opção inválida.');
            end;
        end;
        writeln();
    end;
    until (finalizar);
    CLOSE(arquivo_dados);
end.

