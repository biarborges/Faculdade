SET search_path TO universidade;

--1) Crie um trigger para realização de auditoria nos orçamentos das faculdades.
--(a) Para isso, deve-se criar uma nova tabela chamada auditoria_orcamento com as seguintes informações: 
--Sigla da Faculdade, seu orçamento anterior, novo orçamento, data alteração.

CREATE TABLE auditoria_orcamento (
    sigla character(5) NOT NULL,
    orcamento_anterior numeric(10,2) NOT NULL,
    novo_orcamento numeric(10,2) NOT NULL,
    data_alteracao timestamp NOT NULL
);

--(b) Crie o gatilho (i.e. trigger) que, ao alterar o orçamento de uma faculdade preencha 
--automaticamente os campos da tabela de auditoria.

CREATE OR REPLACE FUNCTION insere_auditoria_orcamento()
RETURNS trigger
AS $$
BEGIN
	IF(OLD.orcamento<>NEW.orcamento)THEN
    	INSERT INTO auditoria_orcamento (sigla, orcamento_anterior, novo_orcamento, data_alteracao)
    	VALUES (OLD.sigla, OLD.orcamento, NEW.orcamento, NOW());
	END IF;
RETURN NULL;
END 
$$ language plpgsql;

CREATE TRIGGER auditoria
AFTER UPDATE ON faculdade
FOR EACH ROW
EXECUTE PROCEDURE insere_auditoria_orcamento();

--(c) Para testar o gatilho faça um procedimento que aumenta os orçamentos de todas as faculdades de acordo com o número de 
--turmas da faculdade: 5% para até 2 turmas; 10% de três a cinco turmas; 15% para mais os demais.

CREATE OR REPLACE FUNCTION aumenta_orcamento()
RETURNS void AS
$$
DECLARE
    tupla RECORD;

BEGIN
/*
	FOR tupla IN
	SELECT sigla, count(turma) as qtd_turmas, orcamento 
	FROM faculdade, turma, disciplina
	WHERE cod_disc=codigo AND fac_disc=sigla
    GROUP BY sigla;
   
	LOOP
		IF qtd_turmas <= 2 THEN
            UPDATE faculdade
            --SET orcamento = orcamento * 1.05;
			SET orcamento = orcamento * 0.05;
		ELSEIF  qtd_turmas <= 5 THEN
			UPDATE faculdade
            --SET orcamento = orcamento * 1.01;
			SET orcamento = orcamento * 0.01;
		ELSE
			UPDATE faculdade
            --SET orcamento = orcamento * 1.15;
			SET orcamento = orcamento * 0.15;
        END IF;
    END LOOP; */
	UPDATE faculdade SET orcamento = orcamento + (orcamento * 
    (CASE 
        WHEN (SELECT COUNT(id) FROM faculdade, disciplina, turma WHERE cod_disc=codigo AND fac_disc = sigla) <= 2 THEN 0.05
        WHEN (SELECT COUNT(id) FROM faculdade, disciplina, turma WHERE cod_disc=codigo AND fac_disc = sigla) BETWEEN 3 AND 5 THEN 0.1
        ELSE 0.15
    END));
END;
$$ language plpgsql;
/*
Explicação da conta: estava aparecendo um erro que por ser numeric 10,2 não pode ultrapassar 10^8. 
Na multiplicação nenhum valor antes da vírgula ultrapassa 10^8, mas como tem orçamentos com decimais 
ultrapassa a quantidade de casas depois da vírgula que é aceito nesse numeric, pensei que podia ser isso.
Por exemplo, o novo orçamento da FACOM ficaria 11500,575.
Por causa disso, deixa a conta errada, mas a trigger, stored e a nova tabela funcionam.

ERROR:  numeric field overflow
DETAIL:  A field with precision 10, scale 2 must round to an absolute value less than 10^8.
CONTEXT:  SQL statement "UPDATE faculdade
            SET orcamento = orcamento * 1.15"
função PL/pgSQL aumenta_orcamento() linha 20 em comando SQL
SQL state: 22003
*/

select * from faculdade;
/*
"sigla"	"nome"	"predio"	"orcamento"
"FACOM"	"Faculdade da Computação"	"1B   "	10000.50
"FADIR"	"Faculdade de Direito"	"3D   "	200000.00
"INFIS"	"Instituto de Física"	"1X   "	37500000.00
"ICBIM"	"Instituto de Ciências Biomédicas"	"2A   "	200000.00
"ICIAG"	"Instituto de Ciências Agrárias"	"2E   "	500000.00
"ESTES"	"Escola Técnica de Saúde"	"4K   "	1244416.00
"FACIP"	"Faculdade de Ciencias Integradas de Pontal"	"3K   "	1000000.00
"FAMEV"	"Faculdade de Medicina Veterinária"	"1BCG "	13000000.00
"INBIO"	"Instituto de Biologia"	"2D28 "	52413.09
"IFILO"	"Instituto de Filosofia"	"1U   "	8000000.00
"IARTE"	"Instituto de Artes"	"5S   "	1500000.00
"FAMAT"	"Faculdade de Matematica"	"1F   "	37500000.00
"FECIV"	"Faculdade de Engenharia Civil"	"1C   "	6000.90
"FEELT"	"Faculdade de Engenharia Elétrica"	"1E   "	370000.00
"FOUFU"	"Faculdade de Odontologia"	"UMU4L"	1200000.00
"FAEDU"	"Faculdade de Educação Física"	"1A   "	250500.50
"FAMEC"	"Faculdade de Engenharia Mecânica"	"1DCG "	0.50
*/


select aumenta_orcamento();
select * from auditoria_orcamento;
/*

*/

--(d) Mostrar a tabela auditoria (após os aumentos) juntamente com 
--o nome da faculdade, seu orçamento antigo, o novo e a data de mudança.

select * from faculdade;