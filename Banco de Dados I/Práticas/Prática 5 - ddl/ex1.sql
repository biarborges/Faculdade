--SAVE: alt+s

/* 
Sistemas de Banco de Dados
Beatriz Ribeiro Borges – 12021BSI231
Prática 5 - ex.1 
*/

DROP SCHEMA IF EXISTS universidade CASCADE;
/* Para que o código rode direto com o F5, tive que comentar a inserção de valores.
Pois, por conta da letra e) que pede para retirar as constraints em seguida inserir valores
e tentar recoloar as constraints (como na letra f) e rodar o código, vai dar um erro
- o mesmo erro por mim explicitado na letra g) no código mais abaixo. Então, por isso, 
precisei comentar os valores. Mas eles estão lá e foram rodados na ordem pedida. */

CREATE SCHEMA universidade;

SET search_path TO universidade;

CREATE TABLE faculdade(
	sigla VARCHAR(10) NOT NULL,
	nome VARCHAR (20) NOT NULL,
	predio VARCHAR(10) NOT NULL,
	orcamento REAL,
	CONSTRAINT pkFaculdade PRIMARY KEY (sigla),
   	CONSTRAINT unFaculdadeNome UNIQUE (nome),
	CONSTRAINT unFaculdadePredio UNIQUE (predio)
); 

CREATE TABLE disciplina(
	codigo INT NOT NULL,
	nome VARCHAR(20) NOT NULL,
	fac_disc VARCHAR(10) NOT NULL,
	creditos INT NOT NULL,
	CONSTRAINT pkDisciplina PRIMARY KEY (codigo),
	CONSTRAINT fkDisciplinaFac_disc FOREIGN KEY(fac_disc) REFERENCES faculdade(sigla)
); 

CREATE TABLE pre_requisito(
	disciplina INT NOT NULL,
	pre_req INT NOT NULL,
	CONSTRAINT pkPre_requisito PRIMARY KEY (disciplina,pre_req),
	CONSTRAINT fkPre_requisitoDisciplina FOREIGN KEY(disciplina) REFERENCES disciplina(codigo),
	CONSTRAINT fkPre_requisitoPre_req FOREIGN KEY(pre_req) REFERENCES disciplina(codigo)
);

CREATE TABLE professor(
	id_prof INT NOT NULL,
	nome VARCHAR(20) NOT NULL,
	fac_prof VARCHAR(10) NOT NULL,
	salario REAL NOT NULL,
	CONSTRAINT pkProfessor PRIMARY KEY (id_prof),
	CONSTRAINT fkProfessorFac_prof FOREIGN KEY(fac_prof) REFERENCES faculdade(sigla)
);

CREATE TABLE estudante(
	id_est INT NOT NULL,
	nome VARCHAR(20) NOT NULL,
	dataNascimento Date NOT NULL,
	fac_est VARCHAR(10) NOT NULL,
	cra REAL NOT NULL,
	tutor INT,
	CONSTRAINT pkEstudante PRIMARY KEY (id_est),
	CONSTRAINT fkEstudanteFac_est FOREIGN KEY(fac_est) REFERENCES faculdade(sigla),
	CONSTRAINT fkEstudanteTutor FOREIGN KEY(tutor) REFERENCES professor(id_prof)
);

CREATE TABLE sala(
	predio VARCHAR(10) NOT NULL,
	numero INT NOT NULL,
	capacidade INT,
	CONSTRAINT pkSala PRIMARY KEY (predio,numero)
);

CREATE TABLE turma(
	id_turma INT NOT NULL,
	turma VARCHAR(10) NOT NULL,
	semestre INT NOT NULL,
	ano INT NOT NULL,
	cod_disc INT NOT NULL,
	predio_s VARCHAR(10) NOT NULL,
	num_sala INT NOT NULL,
	CONSTRAINT pkTurma PRIMARY KEY (id_turma),
	CONSTRAINT fkTurmaPredio_sNum_sala FOREIGN KEY(predio_s,num_sala) REFERENCES sala(predio,numero)
);

CREATE TABLE ensina(
	id_prof INT NOT NULL,
	id_turma INT NOT NULL,
	CONSTRAINT pkEnsina PRIMARY KEY (id_prof,id_turma),
	CONSTRAINT fkEnsinaId_prof FOREIGN KEY(id_prof) REFERENCES professor(id_prof),
	CONSTRAINT fkEnsinaId_turma FOREIGN KEY(id_turma) REFERENCES turma(id_turma)
);

CREATE TABLE frequenta(
	id_est INT NOT NULL,
	id_turma INT NOT NULL,
	nota REAL NOT NULL,
	CONSTRAINT pkFrequenta PRIMARY KEY (id_est,id_turma),
	CONSTRAINT fkFrequentaId_est FOREIGN KEY(id_est) REFERENCES estudante(id_est),
	CONSTRAINT fkFrequentaId_turma FOREIGN KEY(id_turma) REFERENCES turma(id_turma)
);

CREATE TABLE semana(
	id_semana INT NOT NULL,
	descricao VARCHAR(20),
	CONSTRAINT pkSemana PRIMARY KEY (id_semana)
);

CREATE TABLE horario(
	id_hora INT NOT NULL,
	hora_inicio DATE NOT NULL,
	hora_fim DATE NOT NULL,
	CONSTRAINT pkHorario PRIMARY KEY (id_hora)
);

CREATE TABLE horario_aula(
	id_semana INT NOT NULL,
	id_hora INT NOT NULL,
	id_turma INT NOT NULL,
	CONSTRAINT pkHorario_aula PRIMARY KEY (id_semana,id_hora,id_turma),
	CONSTRAINT fkHorario_aulaId_semana FOREIGN KEY(id_semana) REFERENCES semana(id_semana),
	CONSTRAINT fkHorario_aulaId_hora FOREIGN KEY(id_hora) REFERENCES horario(id_hora),
	CONSTRAINT fkHorario_aulaId_turma FOREIGN KEY(id_turma) REFERENCES turma(id_turma)
);

/*----------------------------------------------------------------------------------------
 e) tirar constraint
*/
ALTER TABLE horario_aula
	DROP CONSTRAINT pkHorario_aula,
	DROP CONSTRAINT fkHorario_aulaId_semana,
	DROP CONSTRAINT fkHorario_aulaId_hora,
	DROP CONSTRAINT fkHorario_aulaId_turma;
	
ALTER TABLE horario
	DROP CONSTRAINT pkHorario;

ALTER TABLE semana
	DROP CONSTRAINT pksemana;

ALTER TABLE frequenta
	DROP CONSTRAINT pkFrequenta,
	DROP CONSTRAINT fkFrequentaId_est,
	DROP CONSTRAINT fkFrequentaId_turma;

ALTER TABLE ensina
	DROP CONSTRAINT pkEnsina,
	DROP CONSTRAINT fkEnsinaId_prof,
	DROP CONSTRAINT fkEnsinaId_turma;

ALTER TABLE turma
	DROP CONSTRAINT pkTurma,
	DROP CONSTRAINT fkTurmaPredio_sNum_sala;

ALTER TABLE sala
	DROP CONSTRAINT pkSala;

ALTER TABLE estudante
	DROP CONSTRAINT pkEstudante,
	DROP CONSTRAINT fkEstudanteFac_est,
	DROP CONSTRAINT fkEstudanteTutor;

ALTER TABLE professor
	DROP CONSTRAINT pkProfessor,
	DROP CONSTRAINT fkProfessorFac_prof;

ALTER TABLE pre_requisito
	DROP CONSTRAINT pkPre_requisito,
	DROP CONSTRAINT fkPre_requisitoDisciplinA,
	DROP CONSTRAINT fkPre_requisitoPre_req;

ALTER TABLE disciplina
	DROP CONSTRAINT pkDisciplina,
	DROP CONSTRAINT fkDisciplinaFac_disc;

ALTER TABLE faculdade
	DROP CONSTRAINT pkFaculdade,
	DROP CONSTRAINT unFaculdadeNome,
	DROP CONSTRAINT unFaculdadePredio;
/*----------------------------------------------------------------------------------------
 g.1) rodar sem as constraints violando-as
*/
--INSERT INTO faculdade(sigla, nome,predio, orcamento) VALUES ('facom','computação','1B',1.00),
--														('facom','letras','1B',1.00);
														
/* cadastrou normalmente mesmo que 'facom' esteja repetido, 
o que não poderia acontecer já que é uma pk e não pode repetir */


/*----------------------------------------------------------------------------------------
 f) colocar constraints
*/

ALTER TABLE faculdade
    ADD CONSTRAINT pkFaculdade PRIMARY KEY (sigla),
    ADD CONSTRAINT unFaculdadeNome UNIQUE (nome),
    ADD CONSTRAINT unFaculdadePredio UNIQUE (predio);

ALTER TABLE disciplina
    ADD CONSTRAINT pkDisciplina PRIMARY KEY (codigo),
    ADD CONSTRAINT fkDisciplinaFac_disc FOREIGN KEY(fac_disc) REFERENCES faculdade(sigla);

ALTER TABLE pre_requisito
    ADD CONSTRAINT pkPre_requisito PRIMARY KEY (disciplina,pre_req),
    ADD CONSTRAINT fkPre_requisitoDisciplina FOREIGN KEY(disciplina) REFERENCES disciplina(codigo),
    ADD CONSTRAINT fkPre_requisitoPre_req FOREIGN KEY(pre_req) REFERENCES disciplina(codigo);

ALTER TABLE professor
    ADD CONSTRAINT pkProfessor PRIMARY KEY (id_prof),
    ADD CONSTRAINT fkProfessorFac_prof FOREIGN KEY(fac_prof) REFERENCES faculdade(sigla);

ALTER TABLE estudante
    ADD CONSTRAINT pkEstudante PRIMARY KEY (id_est),
    ADD CONSTRAINT fkEstudanteFac_est FOREIGN KEY(fac_est) REFERENCES faculdade(sigla),
    ADD CONSTRAINT fkEstudanteTutor FOREIGN KEY(tutor) REFERENCES professor(id_prof);

ALTER TABLE sala
    ADD CONSTRAINT pkSala PRIMARY KEY (predio,numero);

ALTER TABLE turma
    ADD CONSTRAINT pkTurma PRIMARY KEY (id_turma),
    ADD CONSTRAINT fkTurmaPredio_sNum_sala FOREIGN KEY(predio_s,num_sala) REFERENCES sala(predio,numero);

ALTER TABLE ensina
    ADD CONSTRAINT pkEnsina PRIMARY KEY (id_prof,id_turma),
    ADD CONSTRAINT fkEnsinaId_prof FOREIGN KEY(id_prof) REFERENCES professor(id_prof),
    ADD CONSTRAINT fkEnsinaId_turma FOREIGN KEY(id_turma) REFERENCES turma(id_turma);

ALTER TABLE frequenta
    ADD CONSTRAINT pkFrequenta PRIMARY KEY (id_est,id_turma),
    ADD CONSTRAINT fkFrequentaId_est FOREIGN KEY(id_est) REFERENCES estudante(id_est),
    ADD CONSTRAINT fkFrequentaId_turma FOREIGN KEY(id_turma) REFERENCES turma(id_turma);

ALTER TABLE semana
    ADD CONSTRAINT pkSemana PRIMARY KEY (id_semana);

ALTER TABLE horario
    ADD CONSTRAINT pkHorario PRIMARY KEY (id_hora);

ALTER TABLE horario_aula
    ADD CONSTRAINT pkHorario_aula PRIMARY KEY (id_semana,id_hora,id_turma),
    ADD CONSTRAINT fkHorario_aulaId_semana FOREIGN KEY(id_semana) REFERENCES semana(id_semana),
    ADD CONSTRAINT fkHorario_aulaId_hora FOREIGN KEY(id_hora) REFERENCES horario(id_hora),
    ADD CONSTRAINT fkHorario_aulaId_turma FOREIGN KEY(id_turma) REFERENCES turma(id_turma);

/*----------------------------------------------------------------------------------------
 g.2) rodar com as constraints violadas

não foi possível criar pkfaculdade, pois está duplicado 
ERROR:  could not create unique index "pkfaculdade"
DETAIL:  Key (sigla)=(facom) is duplicated.
*/