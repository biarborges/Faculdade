SET search_path TO universidade;

--17) CONSULTAS COM OPERADOR 'IN' / 'NOT IN' / <> ou !=     
--(a) Listar o nome das disciplinas que não possuem pré-requisitos

SELECT nome 
FROM disciplina 
WHERE codigo NOT IN 
			(SELECT cod_disc FROM pre_requisito);

/*
"nome"
"Programação Procedimental"
"Programação Orientada a Objetos"
"Lógica"
"Lógica para Programação"
"Cálculo 1"
"Arquitetura e Organização de Computadores"
"Bioquímica 1"
"Fundamentos de Anatomia Veterinária"
"Citologia, Histologia e Embriologia"
"Filosofia Geral: Problemas Metafísicos"
"História da Filosofia Medieval"
"Ética"
"Psicologia da Educação"
"Didática Geral"
"Historia da Arte I"
"Arte Contemporanea I"
"Arte Computacional"
"Avaliação de Impactos Ambiental para Biólogos"
"Biologia e Cultura - (PROINTER III)"
"Construção do Conhecimento Científico"
"Evolução"
"Profissão Biólogo"
"Teoria do Direito"
"Direito do Trabalho 1"
"Direito Financeiro"
"Física Básica I"
"Geometrica Analítica"
"Algoritmos e Programação de Computadores"
"Analises Clinicas"
"Genetica"
"Biossegurança"
"Construções Rurais"
"Adubos e Adubação"
"Manejo e Conservação do Solo e da Água"
"Irrigação e Drenagem"
"Fundamentos em Enfermagem"
"Saúde Coletiva I"
"Psicologia e Ética"
"Geologia 1"
"Climatologia 1"
"Teoria e método em Geografia"
"Cartografia"
"PIPE 1"
"Fundamentos de Matemática Elementar I"
"Cálculo Diferencial e Integral I"
"Geometria Analitica"
"Sistemas de Banco de Dados"
"Redes de computadores"
"Engenharia de Software"
"Otimização"
"Unidade de Constituição do Organismo"
"Unidade de Funcionamento do Organismo I"
"Un. de Reabilitação Integral do Ap. Estomatognático I"
"Unidade de Investigação Científica I (UIC1)"
"Metodologia do Ensino de Ciência"
"Estágio Supervisionado I"
"Construção do Discurso Escrito"
"Metodologia do Ensino da Língua Portuguesa"
"Filosofia da Educação"
"Fisiologia do Exercício"
"Teoria e Prática do Treinamento I"
"Ritmo e Expressão"
*/

--(b) Listar as disciplinas que são pré-requisitos
SELECT * 
FROM disciplina 
WHERE codigo IN 
			(SELECT cod_pre FROM pre_requisito);
/*
"codigo"	"nome"	"fac_disc"	"ch"
"GBC045"	"Programação Procedimental"	"FACOM"	90
"GBC023"	"Algoritmo e Estrutura de Dados 1"	"FACOM"	90
"GMV003"	"Bioquímica 1"	"FAMEV"	75
"GMV005"	"Fundamentos de Anatomia Veterinária"	"FAMEV"	75
"1412  "	"Ética"	"IFILO"	90
"1414  "	"Didática Geral"	"IFILO"	60
"GAV001"	"Historia da Arte I"	"IARTE"	60
"GAV013"	"Arte Contemporanea I"	"IARTE"	60
"FADIR3"	"Teoria do Direito"	"FADIR"	60
"FADIR5"	"Direito do Trabalho 1"	"FADIR"	60
"310   "	"Física Básica I"	"INFIS"	90
"311   "	"Física Básica II"	"INFIS"	90
"2000  "	"Analises Clinicas"	"ICBIM"	40
"2002  "	"Genetica"	"ICBIM"	20
"1803  "	"Manejo e Conservação do Solo e da Água"	"ICIAG"	60
"1804  "	"Irrigação e Drenagem"	"ICIAG"	75
"ESTES1"	"Fundamentos em Enfermagem"	"ESTES"	75
"ESTES2"	"Saúde Coletiva I"	"ESTES"	45
"GGO001"	"Geologia 1"	"FACIP"	60
"GGO002"	"Climatologia 1"	"FACIP"	60
"MAT201"	"Fundamentos de Matemática Elementar I"	"FAMAT"	90
"MAT212"	"Cálculo Diferencial e Integral I"	"FAMAT"	90
"GBC043"	"Sistemas de Banco de Dados"	"FACOM"	90
"GOG001"	"Unidade de Constituição do Organismo"	"FOUFU"	210
"GEDU31"	"Fisiologia do Exercício"	"FAEDU"	90
"GEDU32"	"Teoria e Prática do Treinamento I"	"FAEDU"	60
*/

--(c) Listar o nome das disciplinas que não são pré-requisito de outras disciplinas
SELECT nome
FROM disciplina
WHERE codigo NOT IN
			(SELECT cod_pre FROM pre_requisito);
/*
"nome"
"Comportamento Motor "
"Algoritmo e Estrutura de Dados 2"
"Programação Orientada a Objetos"
"Lógica"
"Lógica para Programação"
"Cálculo 1"
"Arquitetura e Organização de Computadores"
"Bioquímica 2"
"Anatomia dos Animais Domésticos"
"Citologia, Histologia e Embriologia"
"Filosofia Geral: Problemas Metafísicos"
"História da Filosofia Medieval"
"Psicologia da Educação"
"Etica II"
"Didática Geral II"
"Historia da Arte II"
"Arte Contemporanea II"
"Arte Computacional"
"Avaliação de Impactos Ambiental para Biólogos"
"Biologia e Cultura - (PROINTER III)"
"Construção do Conhecimento Científico"
"Evolução"
"Profissão Biólogo"
"Direito Digital"
"Direito do Trabalho 2"
"Direito Financeiro"
"Física Básica III"
"Geometrica Analítica"
"Algoritmos e Programação de Computadores"
"Imunologia"
"Microbiologia"
"Biossegurança"
"Construções Rurais"
"Adubos e Adubação"
"Agrometeorologia"
"Saúde Coletiva II"
"Enfermagem Médica"
"Psicologia e Ética"
"Teoria e método em Geografia"
"Cartografia"
"PIPE 1"
"Geologia 2"
"Climatologia 2"
"Fundamentos de Matemática Elementar II"
"Cálculo Diferencial e Integral II"
"Geometria Analitica"
"Redes de computadores"
"Projeto e desenvolvimento 1"
"Engenharia de Software"
"Otimização"
"Unidade de Funcionamento do Organismo I"
"Un. de Reabilitação Integral do Ap. Estomatognático I"
"Unidade de Investigação Científica I (UIC1)"
"Unidade de Saúde Humana I (USH1)"
"Metodologia do Ensino de Ciência"
"Estágio Supervisionado I"
"Construção do Discurso Escrito"
"Metodologia do Ensino da Língua Portuguesa"
"Filosofia da Educação"
"Ritmo e Expressão"
"Teoria e Prática do Treinamento II"
*/

--(d) Listar o nome dos estudantes que não estão frequentando turmas
SELECT nome
FROM estudante
WHERE id NOT IN
		(SELECT id_est FROM frequenta);
/*
"nome"
"Pedro Henrique Silva"
"Gabriel Borges Júnior"
"Amanda Gomes de Oliveira"
"Jorge Antônio Santos"
"Bruna Tobias Pinto"
"Vinicius Ribeiro"
"Bruno José"
"Carlos Silva"
*/

--(e) Listar o prédio e sala que estão vazios (sem nenhuma aula - dica: use parênteses nos atributos envolvidos no WHERE)
SELECT predio, numero
FROM sala
WHERE (predio, numero) NOT IN (SELECT predio_s, n_sala
					FROM turma where predio_s is not null and n_sala is not null)

/*
"predio"	"numero"
"3D   "	106
"1G   "	105
*/

--(f) Listar os nomes e data de admissão dos professores que não ministraram nenhuma disciplina
SELECT nome, admissao
FROM professor
WHERE id NOT IN 
		(SELECT id_prof FROM ensina);
/*
"nome"	"admissao"
"Luiz Gustavo Almeida Martins"	"2008-05-04"
"Jeamylle Nilin Gonçalves"	"2019-02-28"
"Álex Moreira Herval"	"2019-06-18"
"Ana Paula Turrioni Hidalgo"	"2015-12-01"
"Ana Paula de Lima Oliveira"	"2014-04-01"
"Nikoleta Tzvetanova Kerinska"	"2018-08-10"
*/

--(g) Listar os nomes e data de admissão dos professores que não ministraram nenhuma disciplina no semestre atual (ano-semestre)
SELECT nome, admissao
FROM professor
WHERE id NOT IN 
		(SELECT id_prof 
		 FROM ensina 
		 WHERE id_turma IN
		 (SELECT id
		 FROM turma
		WHERE ano=2022 AND semestre=2));
/*
"nome"	"admissao"
"Gina Maira"	"2000-02-27"
"Rivalino Matias Júnior"	"2003-02-05"
"André Backes"	"20015-06-02"
"Bruno Augusto Nassif Travençolo"	"2018-01-09"
"Luiz Gustavo Almeida Martins"	"2008-05-04"
"Ailton Gonçalves Rodrigues Junior"	"2021-10-12"
"Ariádine Cristine de Almeida"	"2013-01-02"
"Giuliano Buzá Jacobucci"	"2005-08-05"
"Jeamylle Nilin Gonçalves"	"2019-02-28"
"Cassiano Aimberê Dorneles Welker"	"2016-06-07"
"Admilson Lopes dos Santos"	"2013-12-10"
"Adriana Rodrigues da Silva"	"2010-03-26"
"Camila Mariana Ruiz"	"2022-05-30"
"Fernando Rodrigo Rafaeli"	"2014-06-03"
"Taciana Oliveira Souza"	"2013-11-12"
"Adriano Mota Loyola"	"1988-12-01"
"Alessandra Maia de Castro Prado"	"2010-03-26"
"Álex Moreira Herval"	"2019-06-18"
"Ana Paula Turrioni Hidalgo"	"2015-12-01"
"Ana Paula de Lima Oliveira"	"2014-04-01"
"Belchior de Sousa"	"2019-10-25"
"Elsieni Coelho da Silva"	"2021-05-20"
"Gastao da Cunha Frota"	"2012-06-15"
"Nikoleta Tzvetanova Kerinska"	"2018-08-10"
"Renato Palumbo Doria"	"2020-11-05"
"Adriana Pastorello Buim Arena"	"2004-08-02"
"Aldeci Cacique Calixto"	"2000-05-10"
"Aléxia Pádua Franco"	"2008-10-11"
"Ana Beatriz da Silva Duarte"	"2014-12-06"
"Andrea Maturano Longarezi"	"1998-05-08"
"Jailson Mendes"	"1982-02-02"
"Gabriel Jesus"	"1982-03-04"
"Luciano Hulk"	"1983-10-11"
"João Guilherme"	"1990-11-11"
"Péricles Mendes"	"1985-09-07"
"Alcino Eduardo Bonella"	"2009-12-30"
"Alexandre Guimarães Tadeu de Soares"	"2003-11-01"
"Ana Maria Said"	"2009-01-30"
"Anselmo Tadeu Ferreira"	"2010-06-09"
"Dennys Garcia Xavier"	"2011-11-05"
"Kelly Aparecida Geraldo Yoneyama Tudini"	"2000-09-09"
"Lucas de Assis Ribeiro"	"2005-07-26"
"Natália Mundim Tôrres"	"2007-07-09"
"Tiago Wilson Patriarca Mineo "	"2004-10-07"
"Neide Maria da Silva "	"2000-12-09"
"Gustavo de Carvalho Marin"	"2006-08-11"
"Ademir Cavalheiro"	"2007-12-10"
"Adevailton Bernardo dos Santos"	"2003-11-07"
"Alessandra Riposati Arantes"	"2012-01-12"
"Djalmir Nestor Messias"	"2003-11-07"
"Marcel Novaes"	"2012-01-12"
"Alberto da Silva Morais"	"2008-11-11"
"Carlos Hernrique Gomes"	"2019-01-10"
"Daniela Cristina de Oliveira"	"2010-03-05"
"Disney Oliver"	"2019-01-01"
"Henrique Tomaz Gonzaga"	"2020-09-09"
"Jamil Salem"	"1969-08-14"
"Julia Vingadora"	"2004-06-06"
"Roberto Carlos"	"1971-10-08"
"Cláudio Assembly"	"1969-12-01"
"Elaine Java"	"2000-09-11"
"Lilian Rodrigues Sant’ Anna Campos"	"2019-07-24"
"Clelia Regina Cafer"	"2008-02-20"
"Marisa Aparecida Elias"	"2017-06-13"
"Alessandro Gomes Enoque"	"2010-05-10"
"Alexandre Alves Alvenha"	"2020-10-02"
"Alexandre Cacheffo"	"2000-11-15"
"Alexandre Calzavara Yoshida"	"2016-06-17"
*/

--(h) Listas as turmas que estão sem horário cadastrado
SELECT * 
FROM turma
WHERE id NOT IN
		(SELECT id_turma FROM horario_aula);
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
1304	"E "	1	2022	"GMV001"	"1BCG "	102
1721	"D "	1	2022	"31505 "	"8C   "	119
1723	"C "	1	2022	"31104 "	"8C   "	121
1724	"C "	1	2022	"31602 "	"8C   "	322
1422	"B "	2	2022	"1414  "	"1U   "	204
223	"F "	6	2022	"MAT214"	"1F   "	216
1504	"20"	12023	2023	"GOG004"	"UMU1L"	37
405	"05"	2	1995	"GEDU43"	"1A   "	492
653	"D3"	2	2022	"FADIR6"		
654	"D4"	1	2022	"FADIR6"		
2020	"F "	1	2022	"2004  "	"2A   "	6
*/

--(i) Listar quais horários não estão sendo usados para ministrar as aulas
SELECT *
FROM horario
WHERE id_hora NOT IN
				(SELECT id_hora FROM horario_aula);
/*
"id_hora"	"hora_inicio"	"hora_fim"
"h"	"14:50:00"	"15:40:00"
"n"	"19:50:00"	"20:40:00"
*/


--18) CONSULTAS COM CROSS JOIN (PRODUTO CARTESIANO)
--(a)	Mostre o número de Estudantes que estão cadastrados na base
SELECT count (*) FROM estudante;
/*
"count"
85
*/

--(b)	Mostre o número de Matrículas que existem na base
SELECT count (id_est) FROM frequenta;
/*
"count"
99
*/

--(c)	Faça o produto cartesiano entre as tabelas Estudante e Frequenta
SELECT * FROM estudante, frequenta;
SELECT * FROM estudante CROSS JOIN frequenta;
/*
8415 tuplas
*/


--(d)	Mostre o número de tuplas retornado pelo produto cartesiano. Explique o porquê deste número
SELECT count (*) FROM estudante, frequenta;
SELECT count (*) FROM estudante CROSS JOIN frequenta;
/*
"count"
8415

São ao todo 8.415 tuplas, pois multiplica-se as 85 tuplas de estudante com as 99 de frequenta.
*/

--Faça o produto cartesiano entre as tabelas Estudante, Disciplina, Frequenta e Turma. Não utilize CROSS JOIN. 
--Não mostrar o resultado, somente indicar o número de linhas obtidas e o tempo de execução.
SELECT count (*) FROM estudante, disciplina, frequenta, turma;
/*
"count"
65157345

levou 8.505 segundos para contar as tuplas, mas quando tentei rodar o produto cartesiano por completo, 
sem o count, travou o programa e tive que reiniciar.
*/

--19) CONSULTAS COM FUNÇÕES DE AGREGAÇÃO
--Dica: construa a consulta sem a função de agregação e observe os dados para verificar se atendem ao enunciado. 
--Em seguida aplica a função de agregação
 
--(a) Mostrar o horário mais cedo que existe
SELECT * FROM horario
WHERE hora_inicio IN
				(SELECT MIN(hora_inicio)
				FROM horario);
/*
"id_hora"	"hora_inicio"	"hora_fim"
"a"	"07:10:00"	"08:00:00"
*/

--(b) Mostrar o CRA médio de todos os estudantes
SELECT AVG(cra) FROM estudante;
/*
"avg"
81.60070612290326
*/

--(c) Mostrar a média e o desvio padrão do CRA de todos os alunos
SELECT AVG(cra) as media, SQRT(VARIANCE(cra)) as desvio_padrao FROM estudante;
/*
"media"	"desvio_padrao"
81.60070612290326	81.78904861374602
*/

--(d) Mostrar a quantidade de professores do banco
SELECT count(*) FROM professor;
/*
"count"
81
*/

--(e) Mostrar a quantidade de disciplinas da 'FACOM'
SELECT count(*) FROM disciplina WHERE fac_disc='FACOM';
/*
"count"
13
*/

--(f) Mostrar a quantidade de estudantes que fazem iniciação científica (possuem tutores)
SELECT count(tutor) FROM estudante; 
/*
"count"
78
*/

--(g) Mostrar a quantidade de orientadores de IC que existem
SELECT count(DISTINCT tutor) FROM estudante;
/*
"count"
60
*/

--(h) Mostrar a quantidade de professores que não são tutores de estudantes
SELECT count(*) FROM professor
WHERE id NOT IN (select tutor from estudante where tutor is not null);
/*
"count"
21
*/

--(i) Mostrar os nomes e data de nascimento do(s) aluno(s) mais velho(s)
SELECT nome, datanasc
FROM estudante
WHERE datanasc IN (SELECT MAX(datanasc)
				  FROM estudante);
/*
"nome"	"datanasc"
"Kamila Stephany Alves Santos"	"2005-07-30"
*/

--(j) Mostrar a quantidade de turmas que são ministradas em salas com capacidade superior a 10
SELECT count(*) 
FROM turma, sala
WHERE predio_s=predio AND n_sala=numero AND capacidade>10;
--todas as salas a capacidade é >10
/*
"count"
86
*/

select * from turma
select * from sala
select * from sala, turma where 

--(k) Mostrar a quantidade total de turmas das disciplinas da FAMAT
SELECT count(*) 
FROM turma, disciplina
WHERE cod_disc=codigo AND fac_disc='FAMAT';
/*
"count"
6
*/

--(m) Mostrar a quantidade de disciplinas que são pré-requisitos para outras disciplinas
SELECT count(*)
FROM disciplina, pre_requisito
WHERE cod_pre=codigo;
/*
"count"
26
*/

--(n) Mostrar a quantidade de disciplinas que possuem pré-requisitos
SELECT count(cod_disc)
FROM pre_requisito;
/*
"count"
26
*/

--(o) Mostrar a quantidade de disciplinas que não possuem pré-requisitos
SELECT count(*)
FROM disciplina where codigo NOT IN (SELECT cod_disc 
									 FROM pre_requisito)
/*
"count"
62
*/

--20) CONSULTAS OPERADORES UNION/EXCEPT/INTERSECT
--(a) Mostrar os nomes de todas as pessoas cadastradas no banco
/* para lembrar: union n repete, pra mostrar nomes repetidos: union all */
SELECT nome FROM estudante
UNION 
SELECT nome FROM professor;
/*
"nome"
"Elaine Ribeiro"
"Isabella Melo Sousa"
"Cassiano Aimberê Dorneles Welker"
"Fernando Rodrigo Rafaeli"
"Gabriela Pereira"
"Guilherme da Cunha"
"Beatriz Corrêa Camargo"
"Vinicius Ribeiro"
"Leandro Peres"
"Alexandre Borba Chiqueta"
"Scott Pilgrim"
"Clelia Regina Cafer"
"Bruno Augusto Nassif Travençolo"
"Mariana Serrano Guimaraes"
"Alexandre Alves Alvenha"
"Neil Gaiman"
"Alexsandro Soares"
"Luciano Hulk"
"Rodrigo Alves da Silva"
"Alexandre Oliveira Rodrigues"
"Alexandre Cacheffo"
"Elaine Java"
"Marry Shelley"
"Jonas Caravalho"
"Giuliano Buzá Jacobucci"
"Henrique Corrêa de Oliveira"
"Carlos Silva"
"Ana Silveira"
"Victor Guilherme Oliveira Santos"
"Rivalino Matias Júnior"
"Bram Stocker"
"Laura Rezende Teixeira Santos"
"Cristiano Bueno de Almeida"
"Julia Vingadora"
"Gustavo Duarte Gomides"
"Veronica Lodge"
"Bruno José"
"Andrea Maturano Longarezi"
"Pedro Henrique Silva"
"Renato Palumbo Doria"
"Kamila Stephany Alves Santos"
"Jamil Salem"
"Sara Pelegrineti de José"
"Naruto Uzumaki"
"Ailton Gonçalves Rodrigues Junior"
"Jeamylle Nilin Gonçalves"
"Felipe Langer"
"Victor Bagliano"
"Rodrigo da Silva"
"César Bertolin"
"Marcia Aparecida Fernandes"
"Lara Jean"
"Aline Ferreira Magalhaes"
"Ana Maria Said"
"Henrique Tomaz Gonzaga"
"Pedro Nunes"
"Percy Jackson"
"Gabriel Borges Júnior"
"Dennys Garcia Xavier"
"Jason Thirtenn"
"Joao Vitor Correia"
"Admilson Lopes dos Santos"
"Anselmo Tadeu Ferreira"
"Adevailton Bernardo dos Santos"
"Neide Maria da Silva "
"Gabriel Alves"
"Nicolas Paolinelli"
"Ana Paula Turrioni Hidalgo"
"Lucas Daniel Cunha"
"Jose Almeida Azevedo"
"Rafael Silva"
"Elaine Maria"
"Adriana Pastorello Buim Arena"
"Vicente Araujo Mendes"
"Maria Julia Oliveira"
"Aline Oliveira Araujo"
"Gustavo de Carvalho Marin"
"Fernando Rodrigues Martins"
"Peter Benjamin Parker"
"Marina Silva Gomes"
"Luisa Gomes Ferreira"
"Ana Paula de Lima Oliveira"
"Aldeci Cacique Calixto"
"Belchior de Sousa"
"Gabriel Jesus"
"André Backes"
"Andre Silva Martins"
"Ana Paula Freitas"
"Gabrel Toledo"
"Augusto Pereira"
"Gladston Marcelo Pereira do Vale"
"Daniela de Melo Crosara"
"Daniela Cristina de Oliveira"
"João Marcos Ramos"
"Adriano Mota Loyola"
"Pedro Tiene Silva"
"Anne Rice"
"Péricles Mendes"
"Pedro Frosi"
"Álex Moreira Herval"
"Alessandra Maia de Castro Prado"
"Julia Echeverria"
"Jailson Mendes"
"Guilherme Duarte"
"João Augusto Silva"
"Roberto Carlos"
"Djalmir Nestor Messias"
"Luna da Conceição"
"Lucas de Assis Ribeiro"
"Alexandre Garrido da Silva"
"Barbara Dias Rezende Gontijo"
"Ana Beatriz da Silva Duarte"
"Tatiana Carneiro de Resende"
"Marcelo Keese Albertini"
"Disney Oliver"
"Matheus Brasileiro Aguiar"
"Fernando Souza"
"Maria Ferreira"
"Marcel Novaes"
"Tiago Wilson Patriarca Mineo "
"Jean Ponciano"
"Jason Manmoa"
"Bruna Tobias Pinto"
"Gina Maira"
"Alberto da Silva Morais"
"Elaine Ribeiro de Faria Paiva"
"Lavinia Sousa Carvalho"
"Alessandro Gomes Enoque"
"Nikoleta Tzvetanova Kerinska"
"Gabriel Hugo Borges"
"Alexandre Guimarães Tadeu de Soares"
"Robert Louis Stevenson"
"Jorge Antônio Santos"
"Aléxia Pádua Franco"
"Ademir Cavalheiro"
"Davi Rui Pasquim"
"Alexandre Calzavara Yoshida"
"Elsieni Coelho da Silva"
"João Guilherme"
"Marcos Estefam"
"Flávio Fernandes"
"Alessandra Riposati Arantes"
"Peter Kavinsky"
"Davi Lucca Duarte"
"Marisa Aparecida Elias"
"Annelise Salem"
"Kelly Aparecida Geraldo Yoneyama Tudini"
"Alex Fernando Borges"
"Frederico Krueger"
"Carlos Hernrique Gomes"
"Amanda Gomes de Oliveira"
"Adriana Rodrigues da Silva"
"Derli Luis Arantes Junior"
"Lilian Rodrigues Sant’ Anna Campos"
"Ariádine Cristine de Almeida"
"Diego Ruas"
"Natália Mundim Tôrres"
"Alcino Eduardo Bonella"
"Camila Mariana Ruiz"
"Cláudio Assembly"
"Rafael Henrique Guimarães"
"Gabriel de Araujo"
"Luiz Gustavo Almeida Martins"
"Marina Barcelos"
"Taciana Oliveira Souza"
"Gastao da Cunha Frota"
*/

--(b) Mostrar os nomes dos professores e dos alunos que não ensinam/frequentam turmas
SELECT nome
FROM estudante
WHERE id NOT IN
		(SELECT id_est FROM frequenta)
UNION
SELECT nome
FROM professor
WHERE id NOT IN 
		(SELECT id_prof FROM ensina);
/*
"nome"
"Carlos Silva"
"Bruno José"
"Pedro Henrique Silva"
"Bruna Tobias Pinto"
"Jeamylle Nilin Gonçalves"
"Nikoleta Tzvetanova Kerinska"
"Jorge Antônio Santos"
"Gabriel Borges Júnior"
"Ana Paula Turrioni Hidalgo"
"Amanda Gomes de Oliveira"
"Ana Paula de Lima Oliveira"
"Luiz Gustavo Almeida Martins"
"Vinicius Ribeiro"
"Álex Moreira Herval"
*/

--(c) Mostrar os IDs das turmas que possuem docentes, mas não possuem alunos frequentando
SELECT id 
FROM turma WHERE id IN (SELECT id_turma FROM ensina)
INTERSECT
SELECT id 
FROM turma WHERE id NOT IN (SELECT id_turma FROM frequenta)
/*
"id"
1822
153
405
223
1500
403
1821
2018
1721
*/

--(e) Mostrar os IDs das turmas que possuem docentes e que possuem alunos frequentando
SELECT id 
FROM turma WHERE id IN (SELECT id_turma FROM ensina)
INTERSECT
SELECT id 
FROM turma WHERE id IN (SELECT id_turma FROM frequenta)
/*
"id"
652
1300
4
1817
10
511
1819
402
2017
431
514
433
220
1419
1720
400
2015
513
920
1302
219
221
320
50
430
512
155
317
2016
2
1418
1301
1723
401
2019
924
152
40
1818
1722
318
222
651
650
925
922
154
432
218
30
923
434
316
3
1501
20
1725
654
319
1417
921
5
653
315
1820
515
151
*/

--(f) Mostrar os IDs das turmas que possuem ou docentes ou alunos frequentando.
SELECT id 
FROM turma WHERE id IN (SELECT id_turma FROM ensina)
UNION
SELECT id 
FROM turma WHERE id IN (SELECT id_turma FROM frequenta)
/*
"id"
652
1300
1817
511
2017
431
514
433
405
513
320
2016
2018
1301
1723
401
40
153
1722
650
30
3
1501
1725
404
921
5
1821
315
1820
515
151
4
10
1819
402
220
1419
1720
400
2015
920
223
1302
219
1724
221
50
430
512
155
317
2
1418
2019
924
1822
152
1818
318
222
651
925
922
154
432
218
923
434
1503
316
1500
403
20
654
319
1
1417
653
1721
*/

