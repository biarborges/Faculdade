DROP SCHEMA IF EXISTS universidade CASCADE;

CREATE SCHEMA universidade;

SET search_path TO universidade;

CREATE TABLE faculdade(
	sigla character(5) NOT NULL,
    nome character varying(100),
    predio character(5),
    orcamento numeric(10,2),
	CONSTRAINT pk_faculdade PRIMARY KEY (sigla),
   	CONSTRAINT unFaculdadeNome UNIQUE (nome),
	CONSTRAINT unFaculdadePredio UNIQUE (predio),
	CONSTRAINT check_orcamento CHECK (orcamento>0) --letra (b)
); 

CREATE TABLE disciplina(
	codigo character(6) NOT NULL,
    nome character varying(70) NOT NULL,
    fac_disc character(5) NOT NULL,
    ch smallint,
	CONSTRAINT pk_disciplina PRIMARY KEY (codigo),
	CONSTRAINT fk_faculdade FOREIGN KEY (fac_disc) REFERENCES faculdade(sigla)
); 

CREATE TABLE pre_requisito(
	cod_disc character(6) NOT NULL,
    cod_pre character(6) NOT NULL,
	CONSTRAINT pk_pre_requisito PRIMARY KEY (cod_disc, cod_pre),
	CONSTRAINT fk_disciplina FOREIGN KEY (cod_disc) REFERENCES disciplina(codigo),
	CONSTRAINT fk_pre_requisito FOREIGN KEY (cod_pre) REFERENCES disciplina(codigo)
);

CREATE TABLE professor(
	id character(11) NOT NULL,
    nome character varying(255) NOT NULL,
    fac_prof character(5) NOT NULL DEFAULT 'FACOM', --letra (d)
    admissao date,
	CONSTRAINT pk_professor PRIMARY KEY (id),
	CONSTRAINT fk_faculdade FOREIGN KEY (fac_prof) REFERENCES faculdade(sigla)
);

CREATE TABLE estudante(
	id character(11) NOT NULL,
    nome character varying(255) NOT NULL,
    datanasc date,
    fac_est character(5) NOT NULL,
    cra real,
    tutor character(11),
	CONSTRAINT pk_estudante PRIMARY KEY (id),
	CONSTRAINT fk_faculdade FOREIGN KEY (fac_est) REFERENCES faculdade(sigla),
	CONSTRAINT fk_tutor FOREIGN KEY (tutor) REFERENCES professor(id)
);

CREATE TABLE sala(
	predio character(5) NOT NULL,
    numero smallint NOT NULL,
    capacidade integer,
	CONSTRAINT pk_sala PRIMARY KEY (predio, numero)
);

CREATE TABLE turma(
	id integer NOT NULL,
    turma character(2) NOT NULL,
    semestre integer NOT NULL,
    ano integer NOT NULL,
    cod_disc character(6) NOT NULL,
    predio_s character(5),
    n_sala integer,
	CONSTRAINT pk_turma PRIMARY KEY (id),
	CONSTRAINT fk_disciplina FOREIGN KEY (cod_disc) REFERENCES disciplina(codigo),
	CONSTRAINT fk_sala FOREIGN KEY (predio_s, n_sala) REFERENCES sala(predio, numero),
	CONSTRAINT check_semestre CHECK (semestre=1 or semestre=2), --letra (a)
	CONSTRAINT check_ano CHECK (ano<=extract(year from now())) --letra (e)
);

CREATE TABLE ensina(
	id_prof character(11) NOT NULL,
    id_turma integer NOT NULL,
	CONSTRAINT pk_ensina PRIMARY KEY (id_prof, id_turma),
	CONSTRAINT fk_ensina_turma FOREIGN KEY (id_turma) REFERENCES turma(id),
	CONSTRAINT fk_prof_ensina FOREIGN KEY (id_prof) REFERENCES professor(id)
);

CREATE TABLE frequenta(
	id_est character(11) NOT NULL,
    id_turma integer NOT NULL,
    nota real,
	CONSTRAINT pk_frequenta PRIMARY KEY (id_est, id_turma),
	CONSTRAINT fk_est_frequenta FOREIGN KEY (id_est) REFERENCES estudante(id),
	CONSTRAINT fk_frequenta_turma FOREIGN KEY (id_turma) REFERENCES turma(id),
	CONSTRAINT check_nota CHECK (nota>=0 AND nota<=100) --letra (c)
);

CREATE TABLE semana(
	id_sem character(1) NOT NULL,
    descricao character varying(13),
	CONSTRAINT pk_semana PRIMARY KEY (id_sem)
);

CREATE TABLE horario(
	id_hora character(1) NOT NULL,
    hora_inicio time without time zone,
    hora_fim time without time zone,
	CONSTRAINT pk_Horario PRIMARY KEY (id_hora)
);

CREATE TABLE horario_aula(
	id_sem character(1) NOT NULL,
    id_hora character(1) NOT NULL,
    id_turma integer NOT NULL,
	CONSTRAINT pk_horario_aula PRIMARY KEY (id_sem, id_hora, id_turma),
	CONSTRAINT fk_semana_aula FOREIGN KEY (id_sem) REFERENCES semana(id_sem),
	CONSTRAINT fk_horario_aula FOREIGN KEY (id_hora) REFERENCES horario(id_hora),
	CONSTRAINT fk_aula_turma FOREIGN KEY (id_turma) REFERENCES turma(id)
);

---------------------------------------------------------------------------------------------------------
--FACULDADE
INSERT INTO faculdade (sigla, nome, predio, orcamento) VALUES ('INFIS', 'Instituto de Física', '1X   ', 37500000.00);
INSERT INTO faculdade (sigla, nome, predio, orcamento) VALUES ('FACOM', 'Faculdade de Computacao', '1B   ', 37500000.00);

--DISCIPLINA
INSERT INTO disciplina (codigo, nome, fac_disc, ch) VALUES ('310   ', 'Física Básica I', 'INFIS', 90);
INSERT INTO disciplina (codigo, nome, fac_disc, ch) VALUES ('311   ', 'Física Básica II', 'INFIS', 90);
INSERT INTO disciplina (codigo, nome, fac_disc, ch) VALUES ('312   ', 'Física Básica III', 'INFIS', 90);
INSERT INTO disciplina (codigo, nome, fac_disc, ch) VALUES ('313   ', 'Geometrica Analítica', 'INFIS', 60);
INSERT INTO disciplina (codigo, nome, fac_disc, ch) VALUES ('314   ', 'Algoritmos e Programação de Computadores', 'INFIS', 60);

--PRE_REQUISITO
INSERT INTO pre_requisito (cod_disc, cod_pre) VALUES ('311   ', '310   ');
INSERT INTO pre_requisito (cod_disc, cod_pre) VALUES ('312   ', '311   ');

--PROFESSOR
INSERT INTO professor (id, nome, fac_prof, admissao) VALUES ('300        ', 'Ademir Cavalheiro', 'INFIS', '2007-12-10');
INSERT INTO professor (id, nome, fac_prof, admissao) VALUES ('301        ', 'Adevailton Bernardo dos Santos', 'INFIS', '2003-11-07');
INSERT INTO professor (id, nome, fac_prof, admissao) VALUES ('302        ', 'Alessandra Riposati Arantes', 'INFIS', '2012-01-12');
INSERT INTO professor (id, nome, fac_prof, admissao) VALUES ('303        ', 'Djalmir Nestor Messias', 'INFIS', '2003-11-07');
INSERT INTO professor (id, nome, fac_prof, admissao) VALUES ('304        ', 'Marcel Novaes', 'INFIS', '2012-01-12');

--ESTUDANTE
INSERT INTO estudante (id, nome, datanasc, fac_est, cra, tutor) VALUES ('305        ', 'Neil Gaiman', '2000-11-10', 'INFIS', 90.5, '300        ');
INSERT INTO estudante (id, nome, datanasc, fac_est, cra, tutor) VALUES ('306        ', 'Robert Louis Stevenson', '1999-11-13', 'INFIS', 85, '301        ');
INSERT INTO estudante (id, nome, datanasc, fac_est, cra, tutor) VALUES ('307        ', 'Anne Rice', '2000-10-04', 'INFIS', 78.2, '302        ');
INSERT INTO estudante (id, nome, datanasc, fac_est, cra, tutor) VALUES ('308        ', 'Bram Stocker', '2000-11-08', 'INFIS', 88, '302        ');
INSERT INTO estudante (id, nome, datanasc, fac_est, cra, tutor) VALUES ('309        ', 'Marry Shelley', '1999-08-30', 'INFIS', 91.7, '303        ');

--SALA
INSERT INTO sala (predio, numero, capacidade) VALUES ('1X   ', 1, 60);
INSERT INTO sala (predio, numero, capacidade) VALUES ('1X   ', 2, 60);
INSERT INTO sala (predio, numero, capacidade) VALUES ('1X   ', 3, 60);

--TURMA
INSERT INTO turma (id, turma, semestre, ano, cod_disc, predio_s, n_sala) VALUES (315, 'A1', 1, 2020, '310   ', '1X   ', 2);
INSERT INTO turma (id, turma, semestre, ano, cod_disc, predio_s, n_sala) VALUES (316, 'A2', 2, 2020, '310   ', '1X   ', 2);
INSERT INTO turma (id, turma, semestre, ano, cod_disc, predio_s, n_sala) VALUES (317, 'B1', 1, 2020, '311   ', '1X   ', 3);
INSERT INTO turma (id, turma, semestre, ano, cod_disc, predio_s, n_sala) VALUES (318, 'C1', 1, 2021, '312   ', '1X   ', 1);
INSERT INTO turma (id, turma, semestre, ano, cod_disc, predio_s, n_sala) VALUES (319, 'D1', 1, 2021, '313   ', '1X   ', 1);
INSERT INTO turma (id, turma, semestre, ano, cod_disc, predio_s, n_sala) VALUES (320, 'E1', 2, 2021, '314   ', '1X   ', 1);

--ENSINA
INSERT INTO ensina (id_prof, id_turma) VALUES ('300        ', 315);
INSERT INTO ensina (id_prof, id_turma) VALUES ('300        ', 317);
INSERT INTO ensina (id_prof, id_turma) VALUES ('301        ', 316);
INSERT INTO ensina (id_prof, id_turma) VALUES ('302        ', 318);
INSERT INTO ensina (id_prof, id_turma) VALUES ('303        ', 319);
INSERT INTO ensina (id_prof, id_turma) VALUES ('304        ', 320);

--FREQUENTA
INSERT INTO frequenta (id_est, id_turma, nota) VALUES ('305        ', 315, 9);
INSERT INTO frequenta (id_est, id_turma, nota) VALUES ('306        ', 316, 8);
INSERT INTO frequenta (id_est, id_turma, nota) VALUES ('307        ', 317, 9.5);
INSERT INTO frequenta (id_est, id_turma, nota) VALUES ('308        ', 318, 7);
INSERT INTO frequenta (id_est, id_turma, nota) VALUES ('308        ', 320, 8.6);
INSERT INTO frequenta (id_est, id_turma, nota) VALUES ('309        ', 319, 9.2);

--SEMANA
INSERT INTO semana (id_sem, descricao) VALUES ('1', 'Domingo');
INSERT INTO semana (id_sem, descricao) VALUES ('2', 'Segunda');
INSERT INTO semana (id_sem, descricao) VALUES ('3', 'Terça');
INSERT INTO semana (id_sem, descricao) VALUES ('4', 'Quarta');
INSERT INTO semana (id_sem, descricao) VALUES ('5', 'Quinta');
INSERT INTO semana (id_sem, descricao) VALUES ('6', 'Sexta');
INSERT INTO semana (id_sem, descricao) VALUES ('7', 'Sábado');

--HORARIO
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('a', '07:10:00', '08:00:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('b', '08:00:00', '08:50:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('c', '08:50:00', '09:40:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('d', '09:50:00', '10:40:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('e', '10:40:00', '11:30:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('q', '11:30:00', '12:20:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('f', '13:10:00', '14:00:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('g', '14:00:00', '14:50:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('h', '14:50:00', '15:40:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('i', '16:00:00', '16:50:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('j', '16:50:00', '17:40:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('k', '17:40:00', '18:30:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('l', '18:10:00', '19:00:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('m', '19:00:00', '19:50:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('n', '19:50:00', '20:40:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('o', '20:50:00', '21:40:00');
INSERT INTO horario (id_hora, hora_inicio, hora_fim) VALUES ('p', '21:40:00', '22:30:00');

--HORARIO_AULA
INSERT INTO horario_aula (id_sem, id_hora, id_turma) VALUES ('2', 'f', 315);
INSERT INTO horario_aula (id_sem, id_hora, id_turma) VALUES ('3', 'm', 316);
INSERT INTO horario_aula (id_sem, id_hora, id_turma) VALUES ('3', 'a', 317);
INSERT INTO horario_aula (id_sem, id_hora, id_turma) VALUES ('4', 'f', 318);
INSERT INTO horario_aula (id_sem, id_hora, id_turma) VALUES ('5', 'a', 319);
INSERT INTO horario_aula (id_sem, id_hora, id_turma) VALUES ('6', 'f', 320);
-------------------------------------------------------------------------------------------------------------------
--RESPOSTAS EM ORDEM:
--21. Altere o script de criação da base para codificar as restrições para os atributos abaixo.  
--Mostrar, para cada caso, uma consulta que viola a restrição de integridade

--(a) Semestre só pode ser '1' ou '2'

/*
from turma:
CONSTRAINT check_semestre CHECK (semestre=1 or semestre=2)
*/

INSERT INTO turma (id, turma, semestre, ano, cod_disc, predio_s, n_sala) VALUES (315, 'A3', 4, 2022, '310   ', '1X   ', 2);

/*
ERROR:  new row for relation "turma" violates check constraint "checksemestre"
DETAIL:  Failing row contains (315, A3, 4, 2022, 310   , 1X   , 2).
SQL state: 23514
*/

------------------------------------------------------------------------------------------------

--(b) O orçamento não pode ser negativo

/*
from faculdade:
CONSTRAINT check_orcamento CHECK (orcamento>0)
*/

INSERT INTO faculdade (sigla, nome, predio, orcamento) VALUES ('FABIA', 'Faculdade de Bia', '1X   ', -37500000.00);
/*
ERROR:  new row for relation "faculdade" violates check constraint "checkorcamento"
DETAIL:  Failing row contains (FABIA, Faculdade de Bia, 1X   , -37500000.00).
SQL state: 23514
*/

------------------------------------------------------------------------------------------------

--(c) A nota é um valor entre 0 e 100

/*
from frequenta:
CONSTRAINT check_nota CHECK (nota>=0 AND nota<=100)
*/

INSERT INTO frequenta (id_est, id_turma, nota) VALUES ('305        ', 315, -2);
/*
ERROR:  new row for relation "frequenta" violates check constraint "checknota"
DETAIL:  Failing row contains (305        , 315, -2).
SQL state: 23514
*/

INSERT INTO frequenta (id_est, id_turma, nota) VALUES ('305        ', 315, 204);
/*
ERROR:  new row for relation "frequenta" violates check constraint "checknota"
DETAIL:  Failing row contains (305        , 315, 204).
SQL state: 23514
*/

------------------------------------------------------------------------------------------------

--(d) Caso no cadastro de um professor sua faculdade ainda não esteja definida, 
--ele deverá ser alocado na FACOM (mostrar um insert into neste caso em que isso ocorre)

/*
from professor:
fac_prof character(5) NOT NULL DEFAULT 'FACOM'
*/

--ANTES:
select*from professor;

/*
"id"	"nome"	"fac_prof"	"admissao"
"300        "	"Ademir Cavalheiro"	"INFIS"	"2007-12-10"
"301        "	"Adevailton Bernardo dos Santos"	"INFIS"	"2003-11-07"
"302        "	"Alessandra Riposati Arantes"	"INFIS"	"2012-01-12"
"303        "	"Djalmir Nestor Messias"	"INFIS"	"2003-11-07"
"304        "	"Marcel Novaes"	"INFIS"	"2012-01-12"
*/


INSERT INTO professor (id, nome, fac_prof, admissao) VALUES ('305        ', 'Remus John Lupin', default, '2012-01-12');
--ou
INSERT INTO professor (id, nome, admissao) VALUES ('305        ', 'Remus John Lupin', '2012-01-12');


--DEPOIS
select*from professor;

/*
"id"	"nome"	"fac_prof"	"admissao"
"300        "	"Ademir Cavalheiro"	"INFIS"	"2007-12-10"
"301        "	"Adevailton Bernardo dos Santos"	"INFIS"	"2003-11-07"
"302        "	"Alessandra Riposati Arantes"	"INFIS"	"2012-01-12"
"303        "	"Djalmir Nestor Messias"	"INFIS"	"2003-11-07"
"304        "	"Marcel Novaes"	"INFIS"	"2012-01-12"
"305        "	"Remus John Lupin"	"FACOM"	"2012-01-12"
*/

------------------------------------------------------------------------------------------------

--(e) Elabore outra restrição que julgue importante.

/*
from turma:
CONSTRAINT check_ano CHECK (ano<=extract(year from now()))
*/

INSERT INTO turma (id, turma, semestre, ano, cod_disc, predio_s, n_sala) VALUES (321, 'F1', 2, 2024, '314   ', '1X   ', 1);

/*
ERROR:  new row for relation "turma" violates check constraint "checkano"
DETAIL:  Failing row contains (321, F1, 2, 2024, 314   , 1X   , 1).
SQL state: 23514
*/


------------------------------------------------------------------------------------------------

--22. Altere o script de criação da base para Inclusão de regras de restrição nas chaves estrangeiras 
--(observe atentamente se as restrições são coerentes!)

--(f) Mostre um exemplo de UPDATE e DELETE para cada chave primária que é referenciada por chave estrangeira e 
--mostre todas as tabelas afetadas por esses comandos


ALTER TABLE disciplina
DROP CONSTRAINT fk_faculdade;

ALTER TABLE disciplina
ADD CONSTRAINT fk_faculdade FOREIGN KEY (fac_disc)
REFERENCES faculdade(sigla)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
--se deletar a faculdade, não pode sumir a disciplina, é preciso movê-la

ALTER TABLE estudante
DROP CONSTRAINT fk_faculdade;

ALTER TABLE estudante
ADD CONSTRAINT fk_faculdade FOREIGN KEY (fac_est)
REFERENCES faculdade(sigla)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
--se deletar a faculdade, não pode sumir o estudante, é preciso movê-lo

ALTER TABLE estudante
DROP CONSTRAINT fk_tutor;

ALTER TABLE estudante
ADD CONSTRAINT fk_tutor FOREIGN KEY (tutor)
REFERENCES professor(id)
  ON UPDATE CASCADE
  ON DELETE SET NULL;
--se o professor for deletado, o aluno pode continuar sem tutor


ALTER TABLE pre_requisito
DROP CONSTRAINT fk_disciplina;

ALTER TABLE pre_requisito
ADD CONSTRAINT fk_disciplina FOREIGN KEY (cod_disc)
REFERENCES disciplina(codigo)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
--se deletar a disciplina, nessa tabela, ainda há uma disciplina pré requisito que depende dela, não pode ser deletada

ALTER TABLE pre_requisito
DROP CONSTRAINT fk_pre_requisito;

ALTER TABLE pre_requisito
ADD CONSTRAINT fk_pre_requisito FOREIGN KEY (cod_pre)
REFERENCES disciplina(codigo)
  ON UPDATE CASCADE
  ON DELETE CASCADE;


--a disciplina pré requisito poderá ser deletada em relação à essa tabela(se ninguém mais depender dela), 
--pois apenas deixaria a disciplina sem pré-requisito


ALTER TABLE professor
DROP CONSTRAINT fk_faculdade;

ALTER TABLE professor
ADD CONSTRAINT fk_faculdade FOREIGN KEY (fac_prof)
REFERENCES faculdade(sigla)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
--se deletar a faculdade, não pode sumir o professor, é preciso movê-lo

ALTER TABLE turma
DROP CONSTRAINT fk_disciplina;

ALTER TABLE turma
ADD CONSTRAINT fk_disciplina FOREIGN KEY (cod_disc)
REFERENCES disciplina(codigo)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
--a disciplina não poderá ser deletada enquanto tiver uma turma dependendo dela

ALTER TABLE turma
DROP CONSTRAINT fk_sala;

ALTER TABLE turma
ADD CONSTRAINT fk_sala FOREIGN KEY (predio_s, n_sala)
REFERENCES sala(predio, numero)
  ON UPDATE CASCADE
  ON DELETE SET NULL;
--se o predio/sala forem deletados, pode continuar tendo turma em outra sala a definir ou online

ALTER TABLE ensina
DROP CONSTRAINT fk_ensina_turma;

ALTER TABLE ensina
ADD CONSTRAINT fk_ensina_turma FOREIGN KEY (id_turma)
REFERENCES turma(id)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
--se deletar a turma, ainda terá o ensino como dependente - e o professor nesse ensina, ja q ambos são pk

ALTER TABLE ensina
DROP CONSTRAINT fk_prof_ensina;

ALTER TABLE ensina
ADD CONSTRAINT fk_prof_ensina FOREIGN KEY (id_prof)
REFERENCES professor(id)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
--o ensina depende do professor, não poderá ser deletado

ALTER TABLE frequenta
DROP CONSTRAINT fk_est_frequenta;

ALTER TABLE frequenta
ADD CONSTRAINT fk_est_frequenta FOREIGN KEY (id_est)
REFERENCES estudante(id)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
--o frequenta depende do estudante, não poderá ser deletado

ALTER TABLE frequenta
DROP CONSTRAINT fk_frequenta_turma;

ALTER TABLE frequenta
ADD CONSTRAINT fk_frequenta_turma FOREIGN KEY (id_turma)
REFERENCES turma(id)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
--se deletar a turma, ainda terá o ensino como dependente

ALTER TABLE horario_aula
DROP CONSTRAINT fk_semana_aula;

ALTER TABLE horario_aula
ADD CONSTRAINT fk_semana_aula FOREIGN KEY (id_sem)
REFERENCES semana(id_sem)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;

ALTER TABLE horario_aula
DROP CONSTRAINT fk_horario_aula;

ALTER TABLE horario_aula
ADD CONSTRAINT fk_horario_aula FOREIGN KEY (id_hora)
REFERENCES horario(id_hora)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;

ALTER TABLE horario_aula
DROP CONSTRAINT fk_aula_turma;

ALTER TABLE horario_aula
ADD CONSTRAINT fk_aula_turma FOREIGN KEY (id_turma)
REFERENCES turma(id)
  ON UPDATE CASCADE
  ON DELETE NO ACTION;
--a tabela horario_aula depende da turma, horario e semana, essas não podem ser deletadas por conta dessa dependência

------------------------------------------------------------------------------------------------------------------------
--EXEMPLOS

--ANTES

select * from faculdade;
/* 
"sigla"	"nome"	"predio"	"orcamento"
"INFIS"	"Instituto de Física"	"1X   "	37500000.00
"FACOM"	"Faculdade de Computacao"	"1B   "	37500000.00
*/

select * from disciplina;
/* 
"codigo"	"nome"	"fac_disc"	"ch"
"310   "	"Física Básica I"	"INFIS"	90
"311   "	"Física Básica II"	"INFIS"	90
"312   "	"Física Básica III"	"INFIS"	90
"313   "	"Geometrica Analítica"	"INFIS"	60
"314   "	"Algoritmos e Programação de Computadores"	"INFIS"	60
*/

select * from pre_requisito;
/* 
"cod_disc"	"cod_pre"
"311   "	"310   "
"312   "	"311   "
*/

select * from professor;
/* 
"id"	"nome"	"fac_prof"	"admissao"
"300        "	"Ademir Cavalheiro"	"INFIS"	"2007-12-10"
"301        "	"Adevailton Bernardo dos Santos"	"INFIS"	"2003-11-07"
"302        "	"Alessandra Riposati Arantes"	"INFIS"	"2012-01-12"
"303        "	"Djalmir Nestor Messias"	"INFIS"	"2003-11-07"
"304        "	"Marcel Novaes"	"INFIS"	"2012-01-12"
"305        "	"Remus John Lupin"	"FACOM"	"2012-01-12"
*/

select * from estudante;
/* 
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"305        "	"Neil Gaiman"	"2000-11-10"	"INFIS"	90.5	"300        "
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"INFIS"	85	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"INFIS"	78.2	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"INFIS"	88	"302        "
"309        "	"Marry Shelley"	"1999-08-30"	"INFIS"	91.7	"303        "
*/

select * from ensina;
/* 
"id_prof"	"id_turma"
"300        "	315
"300        "	317
"301        "	316
"302        "	318
"303        "	319
"304        "	320
*/

select * from frequenta;
/* 
"id_est"	"id_turma"	"nota"
"305        "	315	9
"306        "	316	8
"307        "	317	9.5
"308        "	318	7
"308        "	320	8.6
"309        "	319	9.2
*/

select * from turma;
/* 
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
315	"A1"	1	2020	"310   "	"1X   "	2
316	"A2"	2	2020	"310   "	"1X   "	2
317	"B1"	1	2020	"311   "	"1X   "	3
318	"C1"	1	2021	"312   "	"1X   "	1
319	"D1"	1	2021	"313   "	"1X   "	1
320	"E1"	2	2021	"314   "	"1X   "	1
*/

select * from sala;
/* 
"predio"	"numero"	"capacidade"
"1X   "	1	60
"1X   "	2	60
"1X   "	3	60
*/

select * from semana;
/* 
"id_sem"	"descricao"
"1"	"Domingo"
"2"	"Segunda"
"3"	"Terça"
"4"	"Quarta"
"5"	"Quinta"
"6"	"Sexta"
"7"	"Sábado"
*/

select * from horario_aula;
/* 
"id_sem"	"id_hora"	"id_turma"
"2"	"f"	315
"3"	"m"	316
"3"	"a"	317
"4"	"f"	318
"5"	"a"	319
"6"	"f"	320
*/

select * from horario;
/*
"id_hora"	"hora_inicio"	"hora_fim"
"a"	"07:10:00"	"08:00:00"
"b"	"08:00:00"	"08:50:00"
"c"	"08:50:00"	"09:40:00"
"d"	"09:50:00"	"10:40:00"
"e"	"10:40:00"	"11:30:00"
"q"	"11:30:00"	"12:20:00"
"f"	"13:10:00"	"14:00:00"
"g"	"14:00:00"	"14:50:00"
"h"	"14:50:00"	"15:40:00"
"i"	"16:00:00"	"16:50:00"
"j"	"16:50:00"	"17:40:00"
"k"	"17:40:00"	"18:30:00"
"l"	"18:10:00"	"19:00:00"
"m"	"19:00:00"	"19:50:00"
"n"	"19:50:00"	"20:40:00"
"o"	"20:50:00"	"21:40:00"
"p"	"21:40:00"	"22:30:00"
*/


--DEPOIS

--UPDATE
--updates estão todos em casacata, é esperado que todos mudem

--primary key: sigla em FACULDADE
UPDATE faculdade SET sigla='FABIA' where sigla='INFIS';
select * from faculdade;
/*
"sigla"	"nome"	"predio"	"orcamento"
"FACOM"	"Faculdade de Computacao"	"1B   "	37500000.00
"FABIA"	"Instituto de Física"	"1X   "	37500000.00
*/

select * from disciplina;
/*
"codigo"	"nome"	"fac_disc"	"ch"
"310   "	"Física Básica I"	"FABIA"	90
"311   "	"Física Básica II"	"FABIA"	90
"312   "	"Física Básica III"	"FABIA"	90
"313   "	"Geometrica Analítica"	"FABIA"	60
"314   "	"Algoritmos e Programação de Computadores"	"FABIA"	60
*/

select * from estudante;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"305        "	"Neil Gaiman"	"2000-11-10"	"FABIA"	90.5	"300        "
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"FABIA"	85	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"FABIA"	78.2	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"FABIA"	88	"302        "
"309        "	"Marry Shelley"	"1999-08-30"	"FABIA"	91.7	"303        "
*/

select * from professor;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"305        "	"Neil Gaiman"	"2000-11-10"	"FABIA"	90.5	"300        "
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"FABIA"	85	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"FABIA"	78.2	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"FABIA"	88	"302        "
"309        "	"Marry Shelley"	"1999-08-30"	"FABIA"	91.7	"303        "
*/


--Primary Key: id em PROFESSOR
UPDATE professor SET id='1' where id='300';
select * from professor;
/*
"id"	"nome"	"fac_prof"	"admissao"
"305        "	"Remus John Lupin"	"FACOM"	"2012-01-12"
"301        "	"Adevailton Bernardo dos Santos"	"FABIA"	"2003-11-07"
"302        "	"Alessandra Riposati Arantes"	"FABIA"	"2012-01-12"
"303        "	"Djalmir Nestor Messias"	"FABIA"	"2003-11-07"
"304        "	"Marcel Novaes"	"FABIA"	"2012-01-12"
"1          "	"Ademir Cavalheiro"	"FABIA"	"2007-12-10"
*/

select * from estudante;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"FABIA"	85	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"FABIA"	78.2	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"FABIA"	88	"302        "
"309        "	"Marry Shelley"	"1999-08-30"	"FABIA"	91.7	"303        "
"305        "	"Neil Gaiman"	"2000-11-10"	"FABIA"	90.5	"1          "
*/

select * from ensina;
/*
"id_prof"	"id_turma"
"301        "	316
"302        "	318
"303        "	319
"304        "	320
"1          "	315
"1          "	317
*/


--Primary Key: codigo em DISCIPLINA
UPDATE disciplina SET codigo='001' WHERE codigo='311';
select * from disciplina;
/*
"codigo"	"nome"	"fac_disc"	"ch"
"310   "	"Física Básica I"	"FABIA"	90
"312   "	"Física Básica III"	"FABIA"	90
"313   "	"Geometrica Analítica"	"FABIA"	60
"314   "	"Algoritmos e Programação de Computadores"	"FABIA"	60
"001   "	"Física Básica II"	"FABIA"	90
*/

select * from pre_requisito;
/*
"cod_disc"	"cod_pre"
"001   "	"310   "
"312   "	"001   "
*/

select * from turma;
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
315	"A1"	1	2020	"310   "	"1X   "	2
316	"A2"	2	2020	"310   "	"1X   "	2
318	"C1"	1	2021	"312   "	"1X   "	1
319	"D1"	1	2021	"313   "	"1X   "	1
320	"E1"	2	2021	"314   "	"1X   "	1
317	"B1"	1	2020	"001   "	"1X   "	3
*/


--Primary Key: predio, numero em SALA
UPDATE sala SET numero='10' where predio='1X' AND numero=1;
select*from sala;
/*
"predio"	"numero"	"capacidade"
"1X   "	2	60
"1X   "	3	60
"1X   "	10	60
*/

select*from turma;
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
315	"A1"	1	2020	"310   "	"1X   "	2
316	"A2"	2	2020	"310   "	"1X   "	2
317	"B1"	1	2020	"001   "	"1X   "	3
318	"C1"	1	2021	"312   "	"1X   "	10
319	"D1"	1	2021	"313   "	"1X   "	10
320	"E1"	2	2021	"314   "	"1X   "	10
*/


--Primary Key: id em TURMA
UPDATE turma SET id=1 WHERE id=315;
select * from turma;
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
316	"A2"	2	2020	"310   "	"1X   "	2
317	"B1"	1	2020	"001   "	"1X   "	3
318	"C1"	1	2021	"312   "	"1X   "	10
319	"D1"	1	2021	"313   "	"1X   "	10
320	"E1"	2	2021	"314   "	"1X   "	10
1	"A1"	1	2020	"310   "	"1X   "	2
*/

select * from ensina;
/*
"id_prof"	"id_turma"
"301        "	316
"302        "	318
"303        "	319
"304        "	320
"1          "	317
"1          "	1
*/

select * from frequenta;
/*
"id_est"	"id_turma"	"nota"
"306        "	316	8
"307        "	317	9.5
"308        "	318	7
"308        "	320	8.6
"309        "	319	9.2
"305        "	1	9
*/

select * from horario_aula;
/*
"id_sem"	"id_hora"	"id_turma"
"3"	"m"	316
"3"	"a"	317
"4"	"f"	318
"5"	"a"	319
"6"	"f"	320
"2"	"f"	1
*/


--Primary Key: id em ESTUDANTE
UPDATE estudante SET id='330055' WHERE id='305';
select*from estudante;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"FABIA"	85	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"FABIA"	78.2	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"FABIA"	88	"302        "
"309        "	"Marry Shelley"	"1999-08-30"	"FABIA"	91.7	"303        "
"305        "	"Neil Gaiman"	"2000-11-10"	"FABIA"	90.5	"1          "
*/

select*from frequenta;
/*
"id_est"	"id_turma"	"nota"
"306        "	316	8
"307        "	317	9.5
"308        "	318	7
"308        "	320	8.6
"309        "	319	9.2
"305        "	1	9
*/


--Primary Key: id_sem em SEMANA
UPDATE semana SET id_sem='T' WHERE id_sem='3';
select*from semana;
/*
"id_sem"	"descricao"
"1"	"Domingo"
"2"	"Segunda"
"4"	"Quarta"
"5"	"Quinta"
"6"	"Sexta"
"7"	"Sábado"
"T"	"Terça"
*/

select*from horario_aula;
/*
"id_sem"	"id_hora"	"id_turma"
"4"	"f"	318
"5"	"a"	319
"6"	"f"	320
"2"	"f"	1
"T"	"m"	316
"T"	"a"	317
*/


--Primary Key: id_hora em HORARIO
UPDATE horario SET id_hora='Z' WHERE id_hora='a';
select*from horario;
/*
"id_hora"	"hora_inicio"	"hora_fim"
"b"	"08:00:00"	"08:50:00"
"c"	"08:50:00"	"09:40:00"
"d"	"09:50:00"	"10:40:00"
"e"	"10:40:00"	"11:30:00"
"q"	"11:30:00"	"12:20:00"
"f"	"13:10:00"	"14:00:00"
"g"	"14:00:00"	"14:50:00"
"h"	"14:50:00"	"15:40:00"
"i"	"16:00:00"	"16:50:00"
"j"	"16:50:00"	"17:40:00"
"k"	"17:40:00"	"18:30:00"
"l"	"18:10:00"	"19:00:00"
"m"	"19:00:00"	"19:50:00"
"n"	"19:50:00"	"20:40:00"
"o"	"20:50:00"	"21:40:00"
"p"	"21:40:00"	"22:30:00"
"Z"	"07:10:00"	"08:00:00"
*/

select*from horario_aula;
/*
"id_sem"	"id_hora"	"id_turma"
"4"	"f"	318
"6"	"f"	320
"2"	"f"	1
"T"	"m"	316
"5"	"Z"	319
"T"	"Z"	317
*/


--DELETE
--primary key: sigla em FACULDADE
DELETE FROM faculdade where sigla='FABIA';
select * from faculdade;
/*
ERROR:  update or delete on table "faculdade" violates foreign key constraint "fk_faculdade" on table "disciplina"
DETAIL:  Key (sigla)=(FABIA) is still referenced from table "disciplina".
SQL state: 23503

também não deixaria por conta da tabela 'professor' e 'estudante'
*/

DELETE FROM professor where id='305';
select * from professor;
/*
"id"	"nome"	"fac_prof"	"admissao"
"301        "	"Adevailton Bernardo dos Santos"	"FABIA"	"2003-11-07"
"302        "	"Alessandra Riposati Arantes"	"FABIA"	"2012-01-12"
"303        "	"Djalmir Nestor Messias"	"FABIA"	"2003-11-07"
"304        "	"Marcel Novaes"	"FABIA"	"2012-01-12"
"1          "	"Ademir Cavalheiro"	"FABIA"	"2007-12-10"

foi deletado, pois ninguém depende dele, ele não está na tabela 'ensina'
*/

DELETE FROM professor where id='1';
select * from professor;
/*
ERROR:  update or delete on table "professor" violates foreign key constraint "fk_prof_ensina" on table "ensina"
DETAIL:  Key (id)=(1          ) is still referenced from table "ensina".
SQL state: 23503

se não tivesse a dependência da tabela 'ensina', na tabela 'estudante' tutor receberia null
*/


--Primary Key: codigo em DISCIPLINA
DELETE FROM disciplina WHERE codigo='312';
select * from disciplina;
/*
ERROR:  update or delete on table "disciplina" violates foreign key constraint "fk_disciplina" on table "pre_requisito"
DETAIL:  Key (codigo)=(312   ) is still referenced from table "pre_requisito".
SQL state: 23503

também está na tabela 'turma'
*/


--Primary Key: predio, numero em SALA
DELETE FROM sala where predio='1X' AND numero=2;
select*from sala;
/*
"predio"	"numero"	"capacidade"
"1X   "	3	60
"1X   "	10	60
*/

select*from turma;
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
317	"B1"	1	2020	"001   "	"1X   "	3
318	"C1"	1	2021	"312   "	"1X   "	10
319	"D1"	1	2021	"313   "	"1X   "	10
320	"E1"	2	2021	"314   "	"1X   "	10
316	"A2"	2	2020	"310   "		
1	"A1"	1	2020	"310   "		

fica null, pois pode haver turma sem sala de aula física, tendo aulas online. Apenas turma dependia de predio e sala
*/


--Primary Key: id em TURMA
DELETE FROM turma WHERE id=317;
select * from turma;
/*
ERROR:  update or delete on table "turma" violates foreign key constraint "fk_ensina_turma" on table "ensina"
DETAIL:  Key (id)=(317) is still referenced from table "ensina".
SQL state: 23503

também está referenciada em frequenta e horario_aula
*/


--Primary Key: id_sem em SEMANA
DELETE FROM semana WHERE id_sem='T';
select*from semana;
/*
ERROR:  update or delete on table "semana" violates foreign key constraint "fk_semana_aula" on table "horario_aula"
DETAIL:  Key (id_sem)=(T) is still referenced from table "horario_aula".
SQL state: 23503
*/


--Primary Key: id_hora em HORARIO
DELETE FROM horario WHERE id_hora='a';
select*from horario;
/*
ERROR:  update or delete on table "horario" violates foreign key constraint "fk_horario_aula" on table "horario_aula"
DETAIL:  Key (id_hora)=(a) is still referenced from table "horario_aula".
SQL state: 23503
*/


--Primary Key: id em ESTUDANTE
DELETE FROM estudante WHERE id='306';
select*from estudante;
/*
ERROR:  update or delete on table "estudante" violates foreign key constraint "fk_est_frequenta" on table "frequenta"
DETAIL:  Key (id)=(306        ) is still referenced from table "frequenta".
SQL state: 23503
*/


