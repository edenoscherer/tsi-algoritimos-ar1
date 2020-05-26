program exercicio29;
function calcularMedia():real;
    var
        n1, n2, n3, n4, media: real;
    begin
        write('Informe a primeira nota: ');
        readln(n1);
        write('Informe a segunda nota: ');
        readln(n2);
        write('Informe a terceira nota: ');
        readln(n3);
        write('Informe a terceira nota: ');
        readln(n4);
        media := (n1+n2+n3+n4)/4;
        writeln('O aluno recebeu as notas: ', n1:0:2, ', ', n2:0:2, ', ', n3:0:2, ', ', n4:0:2);
        writeln('A média é: ', media:0:2);
        calcularMedia := media;
    end;
procedure validaMedia(media: real);
begin
    if media < 6 then
    begin
        writeln('O aluno não foi aprovado');
    end
    else
    begin
        writeln('O aluno foi aprovado');
    end;
end;
var
    media: real;
    continuar: char;
begin
    repeat
    begin
        media := calcularMedia();
        validaMedia(media);
        write('Deseja continuar a executar o programa? (S) ');
        readln(continuar);
    end;
    until (upcase(continuar) <> 'S');
end.
