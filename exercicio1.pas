program exercicio1;
var
	altura: real;
	sexo: char;
	peso_i: real;
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
end.