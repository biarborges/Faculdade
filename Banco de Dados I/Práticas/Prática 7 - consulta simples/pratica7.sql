SET search_path TO universidade;

-- 1) Consultas simples usando SELECT

SELECT 2+2;
/* 
"?column?"
4
*/

SELECT 'A';
/*
"?column?"
"A"
*/

SELECT 50 > 3;
/*
"?column?"
true
*/

SELECT '11/10/2020';
/*
"?column?"
"11/10/2020"
*/

SELECT '11/10/2020' - '11/10/2030';
/*
ERROR:  operator is not unique: unknown - unknown

Não soube reconhecer o '-'.
*/


-- 2) Consultas simples usando SELECT e renomeando colunas

SELECT 2+2 AS soma;
/*
"soma"
4
*/

SELECT 'A' as letra;
/*
"letra"
"A"
*/

SELECT 50 > 3 as resultado;
/*
"resultado"
true
*/

SELECT '11/10/2020' as dia;
/*
"dia"
"11/10/2020"

tipo retornado: text
*/


-- 3) Consultas usando SELECT * FROM usando uma tabela do banco
--a) Listar todos os alunos da universidade
SELECT * FROM estudante;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"106        "	"Pedro Henrique Silva"	"2001-05-02"	"FACOM"	75.3	"101        "
"107        "	"Gabriel Borges Júnior"	"2002-01-09"	"FACOM"	68.1	"102        "
"108        "	"Amanda Gomes de Oliveira"	"2000-03-07"	"FACOM"	56.9	"103        "
"109        "	"Jorge Antônio Santos"	"1999-08-03"	"FACOM"	81.4	"104        "
"110        "	"Bruna Tobias Pinto"	"2001-07-04"	"FACOM"	47.5	"105        "
"1710       "	"Jonas Caravalho"	"1990-09-12"	"INBIO"	70	"1700       "
"1711       "	"Luna da Conceição"	"1987-07-19"	"INBIO"	60.2	
"1712       "	"Ana Silveira"	"2003-07-22"	"INBIO"	80.9	"1703       "
"1713       "	"Guilherme da Cunha"	"2000-12-02"	"INBIO"	66.6	"1701       "
"1714       "	"Davi Lucca Duarte"	"1974-09-25"	"INBIO"	55.3	"1700       "
"221BSI251ST"	"Henrique Corrêa de Oliveira"	"2000-01-26"	"FACOM"	75.7	"10000000010"
"222BCC201ST"	"Gabriel de Araujo"	"2000-04-09"	"FACOM"	72.3	"10000000011"
"189BSI255ST"	"Luisa Gomes Ferreira"	"2000-02-07"	"FACOM"	78.3	"10000000001"
"221BSI255ST"	"Gabriela Pereira"	"2000-07-07"	"FACOM"	71.3	"10000000000"
"189BSI232ST"	"Gabriel Alves"	"2000-09-19"	"FACOM"	68.3	"10000000100"
"205        "	"Joao Vitor Correia"	"2000-03-05"	"FAMAT"	70	"204        "
"206        "	"Marina Silva Gomes"	"2002-08-17"	"FAMAT"	85	"203        "
"207        "	"Maria Julia Oliveira"	"1999-11-02"	"FAMAT"	90	"202        "
"208        "	"Vicente Araujo Mendes"	"1995-04-14"	"FAMAT"	80	"200        "
"209        "	"Alexandre Oliveira Rodrigues"	"2001-05-20"	"FAMAT"	65	"201        "
"1500       "	"Vinicius Ribeiro"	"1993-01-06"	"FOUFU"	100	"1500       "
"1501       "	"César Bertolin"	"1993-01-06"	"FOUFU"	50	"1501       "
"1502       "	"Bruno José"	"1900-01-06"	"FOUFU"	100	"1502       "
"1503       "	"Elaine Maria"	"1989-01-06"	"FOUFU"	60	"1503       "
"1504       "	"Carlos Silva"	"1993-01-06"	"FOUFU"	70	"1504       "
"12021BAV001"	"Isabella Melo Sousa"	"2000-03-11"	"IARTE"	8	"1600       "
"12021BAV016"	"Jose Almeida Azevedo"	"2002-05-21"	"IARTE"	7	"1605       "
"12021BAV029"	"Aline Oliveira Araujo"	"2001-08-15"	"IARTE"	8	"1600       "
"12021BAV040"	"Andre Silva Martins"	"2000-09-03"	"IARTE"	7	"1610       "
"12021BAV020"	"Lavinia Sousa Carvalho"	"2002-10-18"	"IARTE"	8	"1600       "
"420        "	"Victor Guilherme Oliveira Santos"	"1998-11-20"	"ESTES"	96.3	"400        "
"421        "	"Sara Pelegrineti de José"	"1974-01-01"	"ESTES"	99.7	"401        "
"422        "	"Davi Rui Pasquim"	"2002-04-17"	"ESTES"	76.8	"402        "
"423        "	"Diego Ruas"	"1995-12-20"	"ESTES"	85.9	"403        "
"424        "	"Pedro Tiene Silva"	"2003-05-22"	"ESTES"	63.8	"404        "
"444        "	"Jason Manmoa"	"1962-03-06"	"FAEDU"	67.5	"420        "
"445        "	"Scott Pilgrim"	"1964-04-04"	"FAEDU"	88.3	"421        "
"446        "	"Naruto Uzumaki"	"1967-12-11"	"FAEDU"	59	"421        "
"447        "	"Frederico Krueger"	"1968-03-20"	"FAEDU"	78.5	"423        "
"448        "	"Jason Thirtenn"	"1968-03-20"	"FAEDU"	98.5	"423        "
"1405       "	"Aline Ferreira Magalhaes"	"2000-06-04"	"IFILO"	70	"1400       "
"1406       "	"Cristiano Bueno de Almeida"	"2002-07-13"	"IFILO"	88.9	"1400       "
"1407       "	"Derli Luis Arantes Junior"	"2001-12-20"	"IFILO"	77	"1403       "
"1408       "	"Gladston Marcelo Pereira do Vale"	"2000-05-11"	"IFILO"	80.2	"1403       "
"1409       "	"Kamila Stephany Alves Santos"	"2005-07-30"	"IFILO"	66	"1402       "
"199        "	"Alexandre Borba Chiqueta"	"1999-05-14"	"FACOM"	80.58	"100        "
"198        "	"Flávio Fernandes"	"1998-08-02"	"FACOM"	83.01	"100        "
"197        "	"Gabrel Toledo"	"1983-07-02"	"FACOM"	85	"102        "
"196        "	"Nicolas Paolinelli"	"1995-03-26"	"FACOM"	79.64	"100        "
"195        "	"Matheus Brasileiro Aguiar"	"1990-09-17"	"FACOM"	77.98	"104        "
"1300       "	"João Augusto Silva"	"2000-09-09"	"FAMEV"	80	
"1301       "	"Pedro Nunes"	"2001-12-09"	"FAMEV"	90	"1300       "
"1302       "	"Augusto Pereira"	"1999-01-28"	"FAMEV"	73	
"1303       "	"Maria Ferreira"	"2000-02-02"	"FAMEV"	95	"1304       "
"1304       "	"Ana Paula Freitas"	"2002-10-18"	"FAMEV"	89	
"605        "	"Elaine Ribeiro de Faria Paiva"	"1998-01-26"	"FADIR"	89	"603        "
"606        "	"Fernando Souza"	"1999-03-12"	"FADIR"	67.25	"603        "
"607        "	"Rafael Silva"	"2002-12-01"	"FADIR"	78.55	"604        "
"608        "	"João Marcos Ramos"	"2001-05-12"	"FADIR"	87.9	"604        "
"609        "	"Marcos Estefam"	"2000-07-15"	"FADIR"	75.15	"604        "
"305        "	"Neil Gaiman"	"2000-11-10"	"INFIS"	90.5	"300        "
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"INFIS"	85	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"INFIS"	78.2	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"INFIS"	88	"302        "
"309        "	"Marry Shelley"	"1999-08-30"	"INFIS"	91.7	"303        "
"2010       "	"Peter Benjamin Parker"	"1993-08-27"	"ICBIM"	100	"2008       "
"2011       "	"Peter Kavinsky"	"2003-08-03"	"ICBIM"	70	"2009       "
"2012       "	"Lara Jean"	"2002-04-06"	"ICBIM"	99	"2005       "
"2013       "	"Percy Jackson"	"1993-08-18"	"ICBIM"	75	"2007       "
"2014       "	"Veronica Lodge"	"1994-06-29"	"ICBIM"	60	"2006       "
"1807       "	"Annelise Salem"	"2002-08-06"	"ICIAG"	20	"1812       "
"1808       "	"Victor Bagliano"	"2000-07-14"	"ICIAG"	90.2	
"1809       "	"Leandro Peres"	"2001-09-12"	"ICIAG"	60	
"1810       "	"Marina Barcelos"	"2002-10-14"	"ICIAG"	70	
"1811       "	"Gabriel Hugo Borges"	"1999-12-14"	"ICIAG"	40.5	"1813       "
"950        "	"Gustavo Duarte Gomides"	"2002-12-12"	"ESTES"	85.5	"904        "
"951        "	"Rodrigo Alves da Silva"	"1990-05-20"	"ESTES"	75.2	"900        "
"952        "	"Julia Echeverria"	"1999-09-05"	"ESTES"	90.8	"902        "
"953        "	"Guilherme Duarte"	"1998-10-15"	"ESTES"	800	"904        "
"954        "	"Rodrigo da Silva"	"2000-01-01"	"ESTES"	60.2	"900        "
"12021GEO001"	"Rafael Henrique Guimarães"	"2003-03-14"	"FACIP"	88.4	"501        "
"12021GEO002"	"Felipe Langer"	"2000-04-01"	"FACIP"	86.7	"501        "
"12021GEO003"	"Lucas Daniel Cunha"	"2002-12-28"	"FACIP"	84.2	"502        "
"12021GEO004"	"Laura Rezende Teixeira Santos"	"2003-08-13"	"FACIP"	91.3	"503        "
"12021GEO005"	"Mariana Serrano Guimaraes"	"1998-01-06"	"FACIP"	92.1	"504        "
*/

-- b) Listar todos as salas cadastrada
SELECT * FROM sala;
/*
"predio"	"numero"	"capacidade"
"1B   "	204	80
"1B   "	203	80
"5R   "	103	90
"3D   "	102	60
"3D   "	104	40
"3D   "	106	60
"1X   "	1	60
"1X   "	2	60
"1X   "	3	60
"2A   "	1	50
"2A   "	2	50
"2A   "	3	50
"2A   "	4	50
"2A   "	5	50
"2A   "	6	50
"2E   "	201	50
"2E   "	202	30
"2E   "	203	40
"4K   "	205	40
"4K   "	206	60
"4K   "	207	30
"3K   "	101	50
"3K   "	102	50
"3K   "	103	50
"1BCG "	101	50
"1BCG "	102	40
"1BCG "	103	90
"8C   "	119	60
"2D   "	13	50
"8C   "	121	60
"8C   "	322	40
"8C   "	123	60
"1U   "	204	60
"5O-A "	206	60
"5O-A "	207	60
"5S   "	207	40
"5S   "	205	40
"5S   "	208	40
"1F   "	215	70
"1F   "	216	75
"1F   "	217	45
"1BBSI"	127	90
"1BBSI"	128	90
"1BBSI"	129	90
"UMU4L"	39	100
"UMU3L"	38	80
"UMU1L"	37	50
"1G   "	101	50
"1G   "	102	50
"1G   "	103	50
"1G   "	104	50
"1G   "	105	50
"1A   "	490	55
"1A   "	491	40
"1A   "	492	50
*/

-- c) Listar todas as disciplinas
SELECT * FROM disciplina;
/*
"codigo"	"nome"	"fac_disc"	"ch"
"GEDU43"	"Comportamento Motor "	"FAEDU"	90
"GBC045"	"Programação Procedimental"	"FACOM"	90
"GBC023"	"Algoritmo e Estrutura de Dados 1"	"FACOM"	90
"GBC024"	"Algoritmo e Estrutura de Dados 2"	"FACOM"	70
"GBC034"	"Programação Orientada a Objetos"	"FACOM"	60
"GBC012"	"Lógica"	"FACOM"	60
"BCC002"	"Lógica para Programação"	"FACOM"	60
"BCC003"	"Cálculo 1"	"FACOM"	60
"BCC005"	"Arquitetura e Organização de Computadores"	"FACOM"	60
"GMV003"	"Bioquímica 1"	"FAMEV"	75
"GMV007"	"Bioquímica 2"	"FAMEV"	75
"GMV005"	"Fundamentos de Anatomia Veterinária"	"FAMEV"	75
"GMV006"	"Anatomia dos Animais Domésticos"	"FAMEV"	75
"GMV001"	"Citologia, Histologia e Embriologia"	"FAMEV"	75
"1410  "	"Filosofia Geral: Problemas Metafísicos"	"IFILO"	60
"1411  "	"História da Filosofia Medieval"	"IFILO"	30
"1412  "	"Ética"	"IFILO"	90
"1413  "	"Psicologia da Educação"	"IFILO"	60
"1414  "	"Didática Geral"	"IFILO"	60
"1415  "	"Etica II"	"IFILO"	90
"1416  "	"Didática Geral II"	"IFILO"	60
"GAV001"	"Historia da Arte I"	"IARTE"	60
"GAV007"	"Historia da Arte II"	"IARTE"	60
"GAV013"	"Arte Contemporanea I"	"IARTE"	60
"GAV019"	"Arte Contemporanea II"	"IARTE"	60
"GAV010"	"Arte Computacional"	"IARTE"	60
"31505 "	"Avaliação de Impactos Ambiental para Biólogos"	"INBIO"	60
"39030 "	"Biologia e Cultura - (PROINTER III)"	"INBIO"	60
"31104 "	"Construção do Conhecimento Científico"	"INBIO"	30
"31602 "	"Evolução"	"INBIO"	60
"31407 "	"Profissão Biólogo"	"INBIO"	30
"FADIR3"	"Teoria do Direito"	"FADIR"	60
"FADIR4"	"Direito Digital"	"FADIR"	30
"FADIR5"	"Direito do Trabalho 1"	"FADIR"	60
"FADIR6"	"Direito do Trabalho 2"	"FADIR"	30
"FADIR7"	"Direito Financeiro"	"FADIR"	30
"310   "	"Física Básica I"	"INFIS"	90
"311   "	"Física Básica II"	"INFIS"	90
"312   "	"Física Básica III"	"INFIS"	90
"313   "	"Geometrica Analítica"	"INFIS"	60
"314   "	"Algoritmos e Programação de Computadores"	"INFIS"	60
"2000  "	"Analises Clinicas"	"ICBIM"	40
"2001  "	"Imunologia"	"ICBIM"	30
"2002  "	"Genetica"	"ICBIM"	20
"2003  "	"Microbiologia"	"ICBIM"	30
"2004  "	"Biossegurança"	"ICBIM"	40
"1801  "	"Construções Rurais"	"ICIAG"	60
"1802  "	"Adubos e Adubação"	"ICIAG"	60
"1803  "	"Manejo e Conservação do Solo e da Água"	"ICIAG"	60
"1804  "	"Irrigação e Drenagem"	"ICIAG"	75
"1805  "	"Agrometeorologia"	"ICIAG"	60
"ESTES1"	"Fundamentos em Enfermagem"	"ESTES"	75
"ESTES2"	"Saúde Coletiva I"	"ESTES"	45
"ESTES3"	"Saúde Coletiva II"	"ESTES"	30
"ESTES4"	"Enfermagem Médica"	"ESTES"	60
"ESTES5"	"Psicologia e Ética"	"ESTES"	45
"GGO001"	"Geologia 1"	"FACIP"	60
"GGO002"	"Climatologia 1"	"FACIP"	60
"GGO003"	"Teoria e método em Geografia"	"FACIP"	60
"GGO004"	"Cartografia"	"FACIP"	60
"GGO005"	"PIPE 1"	"FACIP"	60
"GGO011"	"Geologia 2"	"FACIP"	60
"GGO012"	"Climatologia 2"	"FACIP"	60
"MAT201"	"Fundamentos de Matemática Elementar I"	"FAMAT"	90
"MAT211"	"Fundamentos de Matemática Elementar II"	"FAMAT"	90
"MAT212"	"Cálculo Diferencial e Integral I"	"FAMAT"	90
"MAT213"	"Cálculo Diferencial e Integral II"	"FAMAT"	90
"MAT214"	"Geometria Analitica"	"FAMAT"	90
"GBC043"	"Sistemas de Banco de Dados"	"FACOM"	90
"GSI023"	"Redes de computadores"	"FACOM"	60
"GSI034"	"Projeto e desenvolvimento 1"	"FACOM"	60
"GSI030"	"Engenharia de Software"	"FACOM"	60
"GSI027"	"Otimização"	"FACOM"	60
"GOG001"	"Unidade de Constituição do Organismo"	"FOUFU"	210
"GOG002"	"Unidade de Funcionamento do Organismo I"	"FOUFU"	120
"GOG003"	"Un. de Reabilitação Integral do Ap. Estomatognático I"	"FOUFU"	60
"GOG004"	"Unidade de Investigação Científica I (UIC1)"	"FOUFU"	45
"GOG005"	"Unidade de Saúde Humana I (USH1)"	"FOUFU"	30
"410   "	"Metodologia do Ensino de Ciência"	"ESTES"	120
"411   "	"Estágio Supervisionado I"	"ESTES"	150
"412   "	"Construção do Discurso Escrito"	"ESTES"	60
"413   "	"Metodologia do Ensino da Língua Portuguesa"	"ESTES"	120
"414   "	"Filosofia da Educação"	"ESTES"	60
"GEDU31"	"Fisiologia do Exercício"	"FAEDU"	90
"GEDU32"	"Teoria e Prática do Treinamento I"	"FAEDU"	60
"GEDU41"	"Ritmo e Expressão"	"FAEDU"	60
"GEDU42"	"Teoria e Prática do Treinamento II"	"FAEDU"	60
*/

-- 4) Consultas usando SELECT <coluna> [, ...] FROM
-- a) Listar o nome e a data de nascimento de todos os alunos
SELECT nome, datanasc FROM estudante;
/*
"nome"	"datanasc"
"Pedro Henrique Silva"	"2001-05-02"
"Gabriel Borges Júnior"	"2002-01-09"
"Amanda Gomes de Oliveira"	"2000-03-07"
"Jorge Antônio Santos"	"1999-08-03"
"Bruna Tobias Pinto"	"2001-07-04"
"Jonas Caravalho"	"1990-09-12"
"Luna da Conceição"	"1987-07-19"
"Ana Silveira"	"2003-07-22"
"Guilherme da Cunha"	"2000-12-02"
"Davi Lucca Duarte"	"1974-09-25"
"Henrique Corrêa de Oliveira"	"2000-01-26"
"Gabriel de Araujo"	"2000-04-09"
"Luisa Gomes Ferreira"	"2000-02-07"
"Gabriela Pereira"	"2000-07-07"
"Gabriel Alves"	"2000-09-19"
"Joao Vitor Correia"	"2000-03-05"
"Marina Silva Gomes"	"2002-08-17"
"Maria Julia Oliveira"	"1999-11-02"
"Vicente Araujo Mendes"	"1995-04-14"
"Alexandre Oliveira Rodrigues"	"2001-05-20"
"Vinicius Ribeiro"	"1993-01-06"
"César Bertolin"	"1993-01-06"
"Bruno José"	"1900-01-06"
"Elaine Maria"	"1989-01-06"
"Carlos Silva"	"1993-01-06"
"Isabella Melo Sousa"	"2000-03-11"
"Jose Almeida Azevedo"	"2002-05-21"
"Aline Oliveira Araujo"	"2001-08-15"
"Andre Silva Martins"	"2000-09-03"
"Lavinia Sousa Carvalho"	"2002-10-18"
"Victor Guilherme Oliveira Santos"	"1998-11-20"
"Sara Pelegrineti de José"	"1974-01-01"
"Davi Rui Pasquim"	"2002-04-17"
"Diego Ruas"	"1995-12-20"
"Pedro Tiene Silva"	"2003-05-22"
"Jason Manmoa"	"1962-03-06"
"Scott Pilgrim"	"1964-04-04"
"Naruto Uzumaki"	"1967-12-11"
"Frederico Krueger"	"1968-03-20"
"Jason Thirtenn"	"1968-03-20"
"Aline Ferreira Magalhaes"	"2000-06-04"
"Cristiano Bueno de Almeida"	"2002-07-13"
"Derli Luis Arantes Junior"	"2001-12-20"
"Gladston Marcelo Pereira do Vale"	"2000-05-11"
"Kamila Stephany Alves Santos"	"2005-07-30"
"Alexandre Borba Chiqueta"	"1999-05-14"
"Flávio Fernandes"	"1998-08-02"
"Gabrel Toledo"	"1983-07-02"
"Nicolas Paolinelli"	"1995-03-26"
"Matheus Brasileiro Aguiar"	"1990-09-17"
"João Augusto Silva"	"2000-09-09"
"Pedro Nunes"	"2001-12-09"
"Augusto Pereira"	"1999-01-28"
"Maria Ferreira"	"2000-02-02"
"Ana Paula Freitas"	"2002-10-18"
"Elaine Ribeiro de Faria Paiva"	"1998-01-26"
"Fernando Souza"	"1999-03-12"
"Rafael Silva"	"2002-12-01"
"João Marcos Ramos"	"2001-05-12"
"Marcos Estefam"	"2000-07-15"
"Neil Gaiman"	"2000-11-10"
"Robert Louis Stevenson"	"1999-11-13"
"Anne Rice"	"2000-10-04"
"Bram Stocker"	"2000-11-08"
"Marry Shelley"	"1999-08-30"
"Peter Benjamin Parker"	"1993-08-27"
"Peter Kavinsky"	"2003-08-03"
"Lara Jean"	"2002-04-06"
"Percy Jackson"	"1993-08-18"
"Veronica Lodge"	"1994-06-29"
"Annelise Salem"	"2002-08-06"
"Victor Bagliano"	"2000-07-14"
"Leandro Peres"	"2001-09-12"
"Marina Barcelos"	"2002-10-14"
"Gabriel Hugo Borges"	"1999-12-14"
"Gustavo Duarte Gomides"	"2002-12-12"
"Rodrigo Alves da Silva"	"1990-05-20"
"Julia Echeverria"	"1999-09-05"
"Guilherme Duarte"	"1998-10-15"
"Rodrigo da Silva"	"2000-01-01"
"Rafael Henrique Guimarães"	"2003-03-14"
"Felipe Langer"	"2000-04-01"
"Lucas Daniel Cunha"	"2002-12-28"
"Laura Rezende Teixeira Santos"	"2003-08-13"
"Mariana Serrano Guimaraes"	"1998-01-06"
*/

-- b) Listar o nome de todas as faculdades
SELECT nome FROM faculdade;
/*
"nome"
"Faculdade da Computação"
"Faculdade de Direito"
"Instituto de Física"
"Instituto de Ciências Biomédicas"
"Instituto de Ciências Agrárias"
"Escola Técnica de Saúde"
"Faculdade de Ciencias Integradas de Pontal"
"Faculdade de Medicina Veterinária"
"Instituto de Biologia"
"Instituto de Filosofia"
"Instituto de Artes"
"Faculdade de Matematica"
"Faculdade de Engenharia Civil"
"Faculdade de Engenharia Elétrica"
"Faculdade de Odontologia"
"Faculdade de Educação Física"
"Faculdade de Engenharia Mecânica"
*/

-- c) Listar todos os horários iniciais disponíveis
SELECT hora_inicio FROM horario;
/*
"hora_inicio"
"07:10:00"
"08:00:00"
"08:50:00"
"09:50:00"
"10:40:00"
"11:30:00"
"13:10:00"
"14:00:00"
"14:50:00"
"16:00:00"
"16:50:00"
"17:40:00"
"18:10:00"
"19:00:00"
"19:50:00"
"20:50:00"
"21:40:00"
*/

-- 5) Consultas com SELECT <coluna> [, ...] AS <novo_nome> FROM
-- a) Listar todos os nomes das discicplinas e seus crédios, trocando, no resultado, o crédito por 'carga'.
SELECT ch AS carga FROM disciplina;
/*
"carga"
90
90
90
70
60
60
60
60
60
75
75
75
75
75
60
30
90
60
60
90
60
60
60
60
60
60
60
60
30
60
30
60
30
60
30
30
90
90
90
60
60
40
30
20
30
40
60
60
60
75
60
75
45
30
60
45
60
60
60
60
60
60
60
90
90
90
90
90
90
60
60
60
60
210
120
60
45
30
120
150
60
120
60
90
60
60
60
*/

-- b) Supondo que 1 crédito de aula corresponda a 15 horas de aula, listar todos os nomes das disciplinas e seus créditos, 
--trocando, no resultado, o crédito por 'carga_horaria' e faça a conversão em horas dos valores
SELECT nome, ch/15 AS carga_horaria FROM disciplina;
/*
"nome"	"carga_horaria"
"Comportamento Motor "	6
"Programação Procedimental"	6
"Algoritmo e Estrutura de Dados 1"	6
"Algoritmo e Estrutura de Dados 2"	4
"Programação Orientada a Objetos"	4
"Lógica"	4
"Lógica para Programação"	4
"Cálculo 1"	4
"Arquitetura e Organização de Computadores"	4
"Bioquímica 1"	5
"Bioquímica 2"	5
"Fundamentos de Anatomia Veterinária"	5
"Anatomia dos Animais Domésticos"	5
"Citologia, Histologia e Embriologia"	5
"Filosofia Geral: Problemas Metafísicos"	4
"História da Filosofia Medieval"	2
"Ética"	6
"Psicologia da Educação"	4
"Didática Geral"	4
"Etica II"	6
"Didática Geral II"	4
"Historia da Arte I"	4
"Historia da Arte II"	4
"Arte Contemporanea I"	4
"Arte Contemporanea II"	4
"Arte Computacional"	4
"Avaliação de Impactos Ambiental para Biólogos"	4
"Biologia e Cultura - (PROINTER III)"	4
"Construção do Conhecimento Científico"	2
"Evolução"	4
"Profissão Biólogo"	2
"Teoria do Direito"	4
"Direito Digital"	2
"Direito do Trabalho 1"	4
"Direito do Trabalho 2"	2
"Direito Financeiro"	2
"Física Básica I"	6
"Física Básica II"	6
"Física Básica III"	6
"Geometrica Analítica"	4
"Algoritmos e Programação de Computadores"	4
"Analises Clinicas"	2
"Imunologia"	2
"Genetica"	1
"Microbiologia"	2
"Biossegurança"	2
"Construções Rurais"	4
"Adubos e Adubação"	4
"Manejo e Conservação do Solo e da Água"	4
"Irrigação e Drenagem"	5
"Agrometeorologia"	4
"Fundamentos em Enfermagem"	5
"Saúde Coletiva I"	3
"Saúde Coletiva II"	2
"Enfermagem Médica"	4
"Psicologia e Ética"	3
"Geologia 1"	4
"Climatologia 1"	4
"Teoria e método em Geografia"	4
"Cartografia"	4
"PIPE 1"	4
"Geologia 2"	4
"Climatologia 2"	4
"Fundamentos de Matemática Elementar I"	6
"Fundamentos de Matemática Elementar II"	6
"Cálculo Diferencial e Integral I"	6
"Cálculo Diferencial e Integral II"	6
"Geometria Analitica"	6
"Sistemas de Banco de Dados"	6
"Redes de computadores"	4
"Projeto e desenvolvimento 1"	4
"Engenharia de Software"	4
"Otimização"	4
"Unidade de Constituição do Organismo"	14
"Unidade de Funcionamento do Organismo I"	8
"Un. de Reabilitação Integral do Ap. Estomatognático I"	4
"Unidade de Investigação Científica I (UIC1)"	3
"Unidade de Saúde Humana I (USH1)"	2
"Metodologia do Ensino de Ciência"	8
"Estágio Supervisionado I"	10
"Construção do Discurso Escrito"	4
"Metodologia do Ensino da Língua Portuguesa"	8
"Filosofia da Educação"	4
"Fisiologia do Exercício"	6
"Teoria e Prática do Treinamento I"	4
"Ritmo e Expressão"	4
"Teoria e Prática do Treinamento II"	4
*/

-- c) Listar todas as faculdades, renomeando as colunas de saída como faculdade(cod,nome_faculdade,local,orcamento)
SELECT sigla AS cod, 
		nome AS nome_faculdade,
		predio AS local,
		orcamento
		FROM faculdade;

/*
"cod"	"nome_faculdade"	"local"	"orcamento"
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

-- d)  Listar o nome e a idade em anos de todos os estudantes cadastradas no banco
SELECT nome, extract(year FROM age(datanasc)) AS idade FROM estudante;
 /*
"nome"	"idade"
"Pedro Henrique Silva"	21
"Gabriel Borges Júnior"	20
"Amanda Gomes de Oliveira"	22
"Jorge Antônio Santos"	23
"Bruna Tobias Pinto"	21
"Jonas Caravalho"	32
"Luna da Conceição"	35
"Ana Silveira"	19
"Guilherme da Cunha"	21
"Davi Lucca Duarte"	48
"Henrique Corrêa de Oliveira"	22
"Gabriel de Araujo"	22
"Luisa Gomes Ferreira"	22
"Gabriela Pereira"	22
"Gabriel Alves"	22
"Joao Vitor Correia"	22
"Marina Silva Gomes"	20
"Maria Julia Oliveira"	23
"Vicente Araujo Mendes"	27
"Alexandre Oliveira Rodrigues"	21
"Vinicius Ribeiro"	29
"César Bertolin"	29
"Bruno José"	122
"Elaine Maria"	33
"Carlos Silva"	29
"Isabella Melo Sousa"	22
"Jose Almeida Azevedo"	20
"Aline Oliveira Araujo"	21
"Andre Silva Martins"	22
"Lavinia Sousa Carvalho"	20
"Victor Guilherme Oliveira Santos"	23
"Sara Pelegrineti de José"	48
"Davi Rui Pasquim"	20
"Diego Ruas"	26
"Pedro Tiene Silva"	19
"Jason Manmoa"	60
"Scott Pilgrim"	58
"Naruto Uzumaki"	54
"Frederico Krueger"	54
"Jason Thirtenn"	54
"Aline Ferreira Magalhaes"	22
"Cristiano Bueno de Almeida"	20
"Derli Luis Arantes Junior"	20
"Gladston Marcelo Pereira do Vale"	22
"Kamila Stephany Alves Santos"	17
"Alexandre Borba Chiqueta"	23
"Flávio Fernandes"	24
"Gabrel Toledo"	39
"Nicolas Paolinelli"	27
"Matheus Brasileiro Aguiar"	32
"João Augusto Silva"	22
"Pedro Nunes"	20
"Augusto Pereira"	23
"Maria Ferreira"	22
"Ana Paula Freitas"	20
"Elaine Ribeiro de Faria Paiva"	24
"Fernando Souza"	23
"Rafael Silva"	19
"João Marcos Ramos"	21
"Marcos Estefam"	22
"Neil Gaiman"	22
"Robert Louis Stevenson"	23
"Anne Rice"	22
"Bram Stocker"	22
"Marry Shelley"	23
"Peter Benjamin Parker"	29
"Peter Kavinsky"	19
"Lara Jean"	20
"Percy Jackson"	29
"Veronica Lodge"	28
"Annelise Salem"	20
"Victor Bagliano"	22
"Leandro Peres"	21
"Marina Barcelos"	20
"Gabriel Hugo Borges"	22
"Gustavo Duarte Gomides"	19
"Rodrigo Alves da Silva"	32
"Julia Echeverria"	23
"Guilherme Duarte"	24
"Rodrigo da Silva"	22
"Rafael Henrique Guimarães"	19
"Felipe Langer"	22
"Lucas Daniel Cunha"	19
"Laura Rezende Teixeira Santos"	19
"Mariana Serrano Guimaraes"	24
 */
 
-- 6) Consultas com SELECT FROM WHERE - com uma condição de seleção
-- a) Listar todos as faculdade localizadas no prédio '1F'
SELECT * FROM faculdade WHERE predio='1F';
/*
"sigla"	"nome"	"predio"	"orcamento"
"FAMAT"	"Faculdade de Matematica"	"1F   "	37500000.00
*/

-- b) Listar todas os alunos com CRA superior a 60
SELECT * FROM estudante WHERE cra>60.0;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"106        "	"Pedro Henrique Silva"	"2001-05-02"	"FACOM"	75.3	"101        "
"107        "	"Gabriel Borges Júnior"	"2002-01-09"	"FACOM"	68.1	"102        "
"109        "	"Jorge Antônio Santos"	"1999-08-03"	"FACOM"	81.4	"104        "
"1710       "	"Jonas Caravalho"	"1990-09-12"	"INBIO"	70	"1700       "
"1711       "	"Luna da Conceição"	"1987-07-19"	"INBIO"	60.2	
"1712       "	"Ana Silveira"	"2003-07-22"	"INBIO"	80.9	"1703       "
"1713       "	"Guilherme da Cunha"	"2000-12-02"	"INBIO"	66.6	"1701       "
"221BSI251ST"	"Henrique Corrêa de Oliveira"	"2000-01-26"	"FACOM"	75.7	"10000000010"
"222BCC201ST"	"Gabriel de Araujo"	"2000-04-09"	"FACOM"	72.3	"10000000011"
"189BSI255ST"	"Luisa Gomes Ferreira"	"2000-02-07"	"FACOM"	78.3	"10000000001"
"221BSI255ST"	"Gabriela Pereira"	"2000-07-07"	"FACOM"	71.3	"10000000000"
"189BSI232ST"	"Gabriel Alves"	"2000-09-19"	"FACOM"	68.3	"10000000100"
"205        "	"Joao Vitor Correia"	"2000-03-05"	"FAMAT"	70	"204        "
"206        "	"Marina Silva Gomes"	"2002-08-17"	"FAMAT"	85	"203        "
"207        "	"Maria Julia Oliveira"	"1999-11-02"	"FAMAT"	90	"202        "
"208        "	"Vicente Araujo Mendes"	"1995-04-14"	"FAMAT"	80	"200        "
"209        "	"Alexandre Oliveira Rodrigues"	"2001-05-20"	"FAMAT"	65	"201        "
"1500       "	"Vinicius Ribeiro"	"1993-01-06"	"FOUFU"	100	"1500       "
"1502       "	"Bruno José"	"1900-01-06"	"FOUFU"	100	"1502       "
"1504       "	"Carlos Silva"	"1993-01-06"	"FOUFU"	70	"1504       "
"420        "	"Victor Guilherme Oliveira Santos"	"1998-11-20"	"ESTES"	96.3	"400        "
"421        "	"Sara Pelegrineti de José"	"1974-01-01"	"ESTES"	99.7	"401        "
"422        "	"Davi Rui Pasquim"	"2002-04-17"	"ESTES"	76.8	"402        "
"423        "	"Diego Ruas"	"1995-12-20"	"ESTES"	85.9	"403        "
"424        "	"Pedro Tiene Silva"	"2003-05-22"	"ESTES"	63.8	"404        "
"444        "	"Jason Manmoa"	"1962-03-06"	"FAEDU"	67.5	"420        "
"445        "	"Scott Pilgrim"	"1964-04-04"	"FAEDU"	88.3	"421        "
"447        "	"Frederico Krueger"	"1968-03-20"	"FAEDU"	78.5	"423        "
"448        "	"Jason Thirtenn"	"1968-03-20"	"FAEDU"	98.5	"423        "
"1405       "	"Aline Ferreira Magalhaes"	"2000-06-04"	"IFILO"	70	"1400       "
"1406       "	"Cristiano Bueno de Almeida"	"2002-07-13"	"IFILO"	88.9	"1400       "
"1407       "	"Derli Luis Arantes Junior"	"2001-12-20"	"IFILO"	77	"1403       "
"1408       "	"Gladston Marcelo Pereira do Vale"	"2000-05-11"	"IFILO"	80.2	"1403       "
"1409       "	"Kamila Stephany Alves Santos"	"2005-07-30"	"IFILO"	66	"1402       "
"199        "	"Alexandre Borba Chiqueta"	"1999-05-14"	"FACOM"	80.58	"100        "
"198        "	"Flávio Fernandes"	"1998-08-02"	"FACOM"	83.01	"100        "
"197        "	"Gabrel Toledo"	"1983-07-02"	"FACOM"	85	"102        "
"196        "	"Nicolas Paolinelli"	"1995-03-26"	"FACOM"	79.64	"100        "
"195        "	"Matheus Brasileiro Aguiar"	"1990-09-17"	"FACOM"	77.98	"104        "
"1300       "	"João Augusto Silva"	"2000-09-09"	"FAMEV"	80	
"1301       "	"Pedro Nunes"	"2001-12-09"	"FAMEV"	90	"1300       "
"1302       "	"Augusto Pereira"	"1999-01-28"	"FAMEV"	73	
"1303       "	"Maria Ferreira"	"2000-02-02"	"FAMEV"	95	"1304       "
"1304       "	"Ana Paula Freitas"	"2002-10-18"	"FAMEV"	89	
"605        "	"Elaine Ribeiro de Faria Paiva"	"1998-01-26"	"FADIR"	89	"603        "
"606        "	"Fernando Souza"	"1999-03-12"	"FADIR"	67.25	"603        "
"607        "	"Rafael Silva"	"2002-12-01"	"FADIR"	78.55	"604        "
"608        "	"João Marcos Ramos"	"2001-05-12"	"FADIR"	87.9	"604        "
"609        "	"Marcos Estefam"	"2000-07-15"	"FADIR"	75.15	"604        "
"305        "	"Neil Gaiman"	"2000-11-10"	"INFIS"	90.5	"300        "
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"INFIS"	85	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"INFIS"	78.2	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"INFIS"	88	"302        "
"309        "	"Marry Shelley"	"1999-08-30"	"INFIS"	91.7	"303        "
"2010       "	"Peter Benjamin Parker"	"1993-08-27"	"ICBIM"	100	"2008       "
"2011       "	"Peter Kavinsky"	"2003-08-03"	"ICBIM"	70	"2009       "
"2012       "	"Lara Jean"	"2002-04-06"	"ICBIM"	99	"2005       "
"2013       "	"Percy Jackson"	"1993-08-18"	"ICBIM"	75	"2007       "
"1808       "	"Victor Bagliano"	"2000-07-14"	"ICIAG"	90.2	
"1810       "	"Marina Barcelos"	"2002-10-14"	"ICIAG"	70	
"950        "	"Gustavo Duarte Gomides"	"2002-12-12"	"ESTES"	85.5	"904        "
"951        "	"Rodrigo Alves da Silva"	"1990-05-20"	"ESTES"	75.2	"900        "
"952        "	"Julia Echeverria"	"1999-09-05"	"ESTES"	90.8	"902        "
"953        "	"Guilherme Duarte"	"1998-10-15"	"ESTES"	800	"904        "
"954        "	"Rodrigo da Silva"	"2000-01-01"	"ESTES"	60.2	"900        "
"12021GEO001"	"Rafael Henrique Guimarães"	"2003-03-14"	"FACIP"	88.4	"501        "
"12021GEO002"	"Felipe Langer"	"2000-04-01"	"FACIP"	86.7	"501        "
"12021GEO003"	"Lucas Daniel Cunha"	"2002-12-28"	"FACIP"	84.2	"502        "
"12021GEO004"	"Laura Rezende Teixeira Santos"	"2003-08-13"	"FACIP"	91.3	"503        "
"12021GEO005"	"Mariana Serrano Guimaraes"	"1998-01-06"	"FACIP"	92.1	"504        "
*/

-- c) Listar todas as turmas ofertadas neste semestre
SELECT * FROM turma WHERE semestre=2 AND ano=2022;
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
924	"1A"	2	2022	"ESTES4"	"4K   "	206
925	"1A"	2	2022	"ESTES5"	"4K   "	207
512	"33"	2	2022	"GGO012"	"3K   "	101
1420	"A "	2	2022	"1413  "	"5O-A "	207
1421	"A "	2	2022	"1414  "	"1U   "	204
1422	"B "	2	2022	"1414  "	"1U   "	204
2	"02"	2	2022	"GBC043"	"1BBSI"	127
3	"03"	2	2022	"GSI023"	"1BBSI"	128
4	"04"	2	2022	"GSI034"	"1BBSI"	129
5	"05"	2	2022	"GSI027"	"1BBSI"	128
151	"67"	2	2022	"GBC045"		
650	"D1"	2	2022	"FADIR3"	"3D   "	102
653	"D3"	2	2022	"FADIR6"		
*/

-- d) Mostre o aniversário (somente o dia e mês) de um dos integrantes do seu grupo (escolher um dos nomes)
SELECT extract(month FROM datanasc) AS mes, extract(day FROM datanasc) AS dia FROM estudante WHERE nome='Neil Gaiman';
/*
"mes"	"dia"
11	10
*/

-- e) Listar o nome de todas as disciplinas que começam com a letra “S”
SELECT nome FROM disciplina WHERE nome LIKE 'S%';
/*
"nome"
"Saúde Coletiva I"
"Saúde Coletiva II"
"Sistemas de Banco de Dados"
*/

-- f) Listar todos os estudantes que nasceram nos últimos 20 anos (essa consulta deve ser genérica – você não deve 
--explicitar nenhuma data
SELECT *, EXTRACT (year FROM age(datanasc)) FROM estudante WHERE datanasc >= current_date - interval '20 years';
--ou
SELECT *,  EXTRACT ( year from AGE(datanasc))
FROM estudante
WHERE datanasc >= now() - interval '20 years';
--ou sem mostrar a idade
SELECT * FROM estudante WHERE datanasc >= current_date - interval '20 years';

/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"	"extract"
"1712       "	"Ana Silveira"	"2003-07-22"	"INBIO"	80.9	"1703       "	19
"424        "	"Pedro Tiene Silva"	"2003-05-22"	"ESTES"	63.8	"404        "	19
"1409       "	"Kamila Stephany Alves Santos"	"2005-07-30"	"IFILO"	66	"1402       "	17
"607        "	"Rafael Silva"	"2002-12-01"	"FADIR"	78.55	"604        "	19
"2011       "	"Peter Kavinsky"	"2003-08-03"	"ICBIM"	70	"2009       "	19
"950        "	"Gustavo Duarte Gomides"	"2002-12-12"	"ESTES"	85.5	"904        "	19
"12021GEO001"	"Rafael Henrique Guimarães"	"2003-03-14"	"FACIP"	88.4	"501        "	19
"12021GEO003"	"Lucas Daniel Cunha"	"2002-12-28"	"FACIP"	84.2	"502        "	19
"12021GEO004"	"Laura Rezende Teixeira Santos"	"2003-08-13"	"FACIP"	91.3	"503        "	19
*/

-- g) Listar todos os estudantes que não possuem tutores
SELECT * FROM estudante WHERE tutor IS NULL;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"1711       "	"Luna da Conceição"	"1987-07-19"	"INBIO"	60.2	
"1300       "	"João Augusto Silva"	"2000-09-09"	"FAMEV"	80	
"1302       "	"Augusto Pereira"	"1999-01-28"	"FAMEV"	73	
"1304       "	"Ana Paula Freitas"	"2002-10-18"	"FAMEV"	89	
"1808       "	"Victor Bagliano"	"2000-07-14"	"ICIAG"	90.2	
"1809       "	"Leandro Peres"	"2001-09-12"	"ICIAG"	60	
"1810       "	"Marina Barcelos"	"2002-10-14"	"ICIAG"	70	
*/

-- h) Listar todos os estudantes que possuem tutores
SELECT * FROM estudante WHERE tutor IS NOT NULL;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"106        "	"Pedro Henrique Silva"	"2001-05-02"	"FACOM"	75.3	"101        "
"107        "	"Gabriel Borges Júnior"	"2002-01-09"	"FACOM"	68.1	"102        "
"108        "	"Amanda Gomes de Oliveira"	"2000-03-07"	"FACOM"	56.9	"103        "
"109        "	"Jorge Antônio Santos"	"1999-08-03"	"FACOM"	81.4	"104        "
"110        "	"Bruna Tobias Pinto"	"2001-07-04"	"FACOM"	47.5	"105        "
"1710       "	"Jonas Caravalho"	"1990-09-12"	"INBIO"	70	"1700       "
"1712       "	"Ana Silveira"	"2003-07-22"	"INBIO"	80.9	"1703       "
"1713       "	"Guilherme da Cunha"	"2000-12-02"	"INBIO"	66.6	"1701       "
"1714       "	"Davi Lucca Duarte"	"1974-09-25"	"INBIO"	55.3	"1700       "
"221BSI251ST"	"Henrique Corrêa de Oliveira"	"2000-01-26"	"FACOM"	75.7	"10000000010"
"222BCC201ST"	"Gabriel de Araujo"	"2000-04-09"	"FACOM"	72.3	"10000000011"
"189BSI255ST"	"Luisa Gomes Ferreira"	"2000-02-07"	"FACOM"	78.3	"10000000001"
"221BSI255ST"	"Gabriela Pereira"	"2000-07-07"	"FACOM"	71.3	"10000000000"
"189BSI232ST"	"Gabriel Alves"	"2000-09-19"	"FACOM"	68.3	"10000000100"
"205        "	"Joao Vitor Correia"	"2000-03-05"	"FAMAT"	70	"204        "
"206        "	"Marina Silva Gomes"	"2002-08-17"	"FAMAT"	85	"203        "
"207        "	"Maria Julia Oliveira"	"1999-11-02"	"FAMAT"	90	"202        "
"208        "	"Vicente Araujo Mendes"	"1995-04-14"	"FAMAT"	80	"200        "
"209        "	"Alexandre Oliveira Rodrigues"	"2001-05-20"	"FAMAT"	65	"201        "
"1500       "	"Vinicius Ribeiro"	"1993-01-06"	"FOUFU"	100	"1500       "
"1501       "	"César Bertolin"	"1993-01-06"	"FOUFU"	50	"1501       "
"1502       "	"Bruno José"	"1900-01-06"	"FOUFU"	100	"1502       "
"1503       "	"Elaine Maria"	"1989-01-06"	"FOUFU"	60	"1503       "
"1504       "	"Carlos Silva"	"1993-01-06"	"FOUFU"	70	"1504       "
"12021BAV001"	"Isabella Melo Sousa"	"2000-03-11"	"IARTE"	8	"1600       "
"12021BAV016"	"Jose Almeida Azevedo"	"2002-05-21"	"IARTE"	7	"1605       "
"12021BAV029"	"Aline Oliveira Araujo"	"2001-08-15"	"IARTE"	8	"1600       "
"12021BAV040"	"Andre Silva Martins"	"2000-09-03"	"IARTE"	7	"1610       "
"12021BAV020"	"Lavinia Sousa Carvalho"	"2002-10-18"	"IARTE"	8	"1600       "
"420        "	"Victor Guilherme Oliveira Santos"	"1998-11-20"	"ESTES"	96.3	"400        "
"421        "	"Sara Pelegrineti de José"	"1974-01-01"	"ESTES"	99.7	"401        "
"422        "	"Davi Rui Pasquim"	"2002-04-17"	"ESTES"	76.8	"402        "
"423        "	"Diego Ruas"	"1995-12-20"	"ESTES"	85.9	"403        "
"424        "	"Pedro Tiene Silva"	"2003-05-22"	"ESTES"	63.8	"404        "
"444        "	"Jason Manmoa"	"1962-03-06"	"FAEDU"	67.5	"420        "
"445        "	"Scott Pilgrim"	"1964-04-04"	"FAEDU"	88.3	"421        "
"446        "	"Naruto Uzumaki"	"1967-12-11"	"FAEDU"	59	"421        "
"447        "	"Frederico Krueger"	"1968-03-20"	"FAEDU"	78.5	"423        "
"448        "	"Jason Thirtenn"	"1968-03-20"	"FAEDU"	98.5	"423        "
"1405       "	"Aline Ferreira Magalhaes"	"2000-06-04"	"IFILO"	70	"1400       "
"1406       "	"Cristiano Bueno de Almeida"	"2002-07-13"	"IFILO"	88.9	"1400       "
"1407       "	"Derli Luis Arantes Junior"	"2001-12-20"	"IFILO"	77	"1403       "
"1408       "	"Gladston Marcelo Pereira do Vale"	"2000-05-11"	"IFILO"	80.2	"1403       "
"1409       "	"Kamila Stephany Alves Santos"	"2005-07-30"	"IFILO"	66	"1402       "
"199        "	"Alexandre Borba Chiqueta"	"1999-05-14"	"FACOM"	80.58	"100        "
"198        "	"Flávio Fernandes"	"1998-08-02"	"FACOM"	83.01	"100        "
"197        "	"Gabrel Toledo"	"1983-07-02"	"FACOM"	85	"102        "
"196        "	"Nicolas Paolinelli"	"1995-03-26"	"FACOM"	79.64	"100        "
"195        "	"Matheus Brasileiro Aguiar"	"1990-09-17"	"FACOM"	77.98	"104        "
"1301       "	"Pedro Nunes"	"2001-12-09"	"FAMEV"	90	"1300       "
"1303       "	"Maria Ferreira"	"2000-02-02"	"FAMEV"	95	"1304       "
"605        "	"Elaine Ribeiro de Faria Paiva"	"1998-01-26"	"FADIR"	89	"603        "
"606        "	"Fernando Souza"	"1999-03-12"	"FADIR"	67.25	"603        "
"607        "	"Rafael Silva"	"2002-12-01"	"FADIR"	78.55	"604        "
"608        "	"João Marcos Ramos"	"2001-05-12"	"FADIR"	87.9	"604        "
"609        "	"Marcos Estefam"	"2000-07-15"	"FADIR"	75.15	"604        "
"305        "	"Neil Gaiman"	"2000-11-10"	"INFIS"	90.5	"300        "
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"INFIS"	85	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"INFIS"	78.2	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"INFIS"	88	"302        "
"309        "	"Marry Shelley"	"1999-08-30"	"INFIS"	91.7	"303        "
"2010       "	"Peter Benjamin Parker"	"1993-08-27"	"ICBIM"	100	"2008       "
"2011       "	"Peter Kavinsky"	"2003-08-03"	"ICBIM"	70	"2009       "
"2012       "	"Lara Jean"	"2002-04-06"	"ICBIM"	99	"2005       "
"2013       "	"Percy Jackson"	"1993-08-18"	"ICBIM"	75	"2007       "
"2014       "	"Veronica Lodge"	"1994-06-29"	"ICBIM"	60	"2006       "
"1807       "	"Annelise Salem"	"2002-08-06"	"ICIAG"	20	"1812       "
"1811       "	"Gabriel Hugo Borges"	"1999-12-14"	"ICIAG"	40.5	"1813       "
"950        "	"Gustavo Duarte Gomides"	"2002-12-12"	"ESTES"	85.5	"904        "
"951        "	"Rodrigo Alves da Silva"	"1990-05-20"	"ESTES"	75.2	"900        "
"952        "	"Julia Echeverria"	"1999-09-05"	"ESTES"	90.8	"902        "
"953        "	"Guilherme Duarte"	"1998-10-15"	"ESTES"	800	"904        "
"954        "	"Rodrigo da Silva"	"2000-01-01"	"ESTES"	60.2	"900        "
"12021GEO001"	"Rafael Henrique Guimarães"	"2003-03-14"	"FACIP"	88.4	"501        "
"12021GEO002"	"Felipe Langer"	"2000-04-01"	"FACIP"	86.7	"501        "
"12021GEO003"	"Lucas Daniel Cunha"	"2002-12-28"	"FACIP"	84.2	"502        "
"12021GEO004"	"Laura Rezende Teixeira Santos"	"2003-08-13"	"FACIP"	91.3	"503        "
"12021GEO005"	"Mariana Serrano Guimaraes"	"1998-01-06"	"FACIP"	92.1	"504        "
*/

-- i) Listar as turmas ministradas de 2000 até hoje.
SELECT * FROM turma WHERE ano>=2000;
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
1822	"06"	20232	2023	"1805  "	"2E   "	203
920	"1A"	1	2022	"ESTES1"	"4K   "	205
921	"1B"	1	2022	"ESTES1"	"4K   "	205
922	"1A"	1	2022	"ESTES2"	"4K   "	206
923	"1A"	1	2022	"ESTES3"	"4K   "	207
924	"1A"	2	2022	"ESTES4"	"4K   "	206
925	"1A"	2	2022	"ESTES5"	"4K   "	207
511	"33"	1	2022	"GGO002"	"3K   "	101
512	"33"	2	2022	"GGO012"	"3K   "	101
513	"31"	1	2021	"GGO001"	"3K   "	102
514	"31"	2	2021	"GGO011"	"3K   "	102
515	"29"	2	2020	"GGO012"	"3K   "	103
1300	"A "	1	2022	"GMV003"	"1BCG "	101
1301	"B "	1	2022	"GMV007"	"1BCG "	102
1302	"C "	1	2022	"GMV005"	"1BCG "	103
1303	"D "	1	2022	"GMV006"	"1BCG "	103
1304	"E "	1	2022	"GMV001"	"1BCG "	102
1305	"F "	1	2022	"GMV005"	"1BCG "	103
1720	"C "	1	2022	"31505 "	"8C   "	119
1721	"D "	1	2022	"31505 "	"8C   "	119
1722	"C "	1	2022	"39030 "	"2D   "	13
1723	"C "	1	2022	"31104 "	"8C   "	121
1724	"C "	1	2022	"31602 "	"8C   "	322
1725	"C "	1	2022	"31407 "	"8C   "	123
1417	"A "	1	2022	"1410  "	"1U   "	204
1418	"A "	1	2022	"1411  "	"5O-A "	206
1419	"A "	1	2022	"1412  "	"5O-A "	206
1420	"A "	2	2022	"1413  "	"5O-A "	207
1421	"A "	2	2022	"1414  "	"1U   "	204
1422	"B "	2	2022	"1414  "	"1U   "	204
10	"55"	1	2015	"GAV001"	"5S   "	207
20	"57"	2	2016	"GAV007"	"5S   "	205
30	"59"	1	2017	"GAV013"	"5S   "	208
40	"61"	2	2018	"GAV019"	"5S   "	207
50	"63"	1	2019	"GAV010"	"5S   "	205
218	"A "	1	2018	"MAT201"	"1F   "	215
219	"B "	2	2019	"MAT211"	"1F   "	216
220	"C "	3	2020	"MAT212"	"1F   "	217
221	"D "	4	2021	"MAT213"	"1F   "	215
222	"E "	5	2022	"MAT214"	"1F   "	216
223	"F "	6	2022	"MAT214"	"1F   "	216
1	"01"	1	2022	"GBC043"	"1BBSI"	127
2	"02"	2	2022	"GBC043"	"1BBSI"	127
3	"03"	2	2022	"GSI023"	"1BBSI"	128
4	"04"	2	2022	"GSI034"	"1BBSI"	129
5	"05"	2	2022	"GSI027"	"1BBSI"	128
1500	"17"	12022	2022	"GOG001"	"UMU4L"	39
1501	"17"	12021	2021	"GOG001"	"UMU4L"	39
1502	"18"	22021	2021	"GOG002"	"UMU3L"	38
1503	"19"	22022	2022	"GOG003"	"UMU4L"	39
1504	"20"	12023	2023	"GOG004"	"UMU1L"	37
430	"65"	2	2020	"410   "	"1G   "	101
431	"66"	1	2020	"410   "	"1G   "	101
432	"67"	2	2020	"411   "	"1G   "	102
433	"68"	1	2021	"412   "	"1G   "	103
434	"69"	2	2021	"413   "	"1G   "	104
155	"63"	2	2020	"GBC034"	"1B   "	204
154	"64"	1	2021	"GBC034"	"1B   "	203
153	"65"	2	2021	"GBC024"	"5R   "	103
152	"66"	1	2022	"GBC023"	"5R   "	103
151	"67"	2	2022	"GBC045"		
650	"D1"	2	2022	"FADIR3"	"3D   "	102
651	"D1"	2	2020	"FADIR4"	"3D   "	104
652	"D2"	1	2021	"FADIR5"	"3D   "	104
653	"D3"	2	2022	"FADIR6"		
654	"D4"	1	2022	"FADIR6"		
315	"A1"	2	2020	"310   "	"1X   "	2
316	"A2"	2	2020	"310   "	"1X   "	2
317	"B1"	3	2020	"311   "	"1X   "	3
318	"C1"	4	2021	"312   "	"1X   "	1
319	"D1"	1	2021	"313   "	"1X   "	1
320	"E1"	4	2021	"314   "	"1X   "	1
2015	"A "	1	2022	"2000  "	"2A   "	1
2016	"B "	1	2022	"2001  "	"2A   "	2
2017	"C "	1	2022	"2002  "	"2A   "	3
2018	"D "	1	2022	"2003  "	"2A   "	4
2019	"E "	1	2022	"2004  "	"2A   "	5
2020	"F "	1	2022	"2004  "	"2A   "	6
1817	"01"	20211	2021	"1801  "	"2E   "	201
1818	"02"	20212	2021	"1801  "	"2E   "	201
1819	"03"	20221	2022	"1803  "	"2E   "	201
1820	"04"	20222	2022	"1804  "	"2E   "	202
1821	"05"	20231	2023	"1802  "	"2E   "	202
*/

-- j) Mostrar os estudantes (nome /datanasc) que nasceram entre 1985 e 1995. Utilizar BETWEEN
SELECT nome, datanasc FROM estudante WHERE extract(YEAR FROM datanasc) BETWEEN 1985 AND 1995;
/*
"nome"	"datanasc"
"Jonas Caravalho"	"1990-09-12"
"Luna da Conceição"	"1987-07-19"
"Vicente Araujo Mendes"	"1995-04-14"
"Vinicius Ribeiro"	"1993-01-06"
"César Bertolin"	"1993-01-06"
"Elaine Maria"	"1989-01-06"
"Carlos Silva"	"1993-01-06"
"Diego Ruas"	"1995-12-20"
"Nicolas Paolinelli"	"1995-03-26"
"Matheus Brasileiro Aguiar"	"1990-09-17"
"Peter Benjamin Parker"	"1993-08-27"
"Percy Jackson"	"1993-08-18"
"Veronica Lodge"	"1994-06-29"
"Rodrigo Alves da Silva"	"1990-05-20"
*/

-- k) Mostrar, em ordem alfabética, os nomes dos professores entre “Carlos” e “Maria”. Utilizar BETWEEN
SELECT nome FROM professor WHERE nome BETWEEN 'Carlos' AND 'Maria' ORDER BY nome ASC;
/*
"nome"
"Carlos Hernrique Gomes"
"Cassiano Aimberê Dorneles Welker"
"Cláudio Assembly"
"Clelia Regina Cafer"
"Daniela Cristina de Oliveira"
"Daniela de Melo Crosara"
"Dennys Garcia Xavier"
"Disney Oliver"
"Djalmir Nestor Messias"
"Elaine Java"
"Elaine Ribeiro"
"Elsieni Coelho da Silva"
"Fernando Rodrigo Rafaeli"
"Fernando Rodrigues Martins"
"Gabriel Jesus"
"Gastao da Cunha Frota"
"Gina Maira"
"Giuliano Buzá Jacobucci"
"Gustavo de Carvalho Marin"
"Henrique Tomaz Gonzaga"
"Jailson Mendes"
"Jamil Salem"
"Jeamylle Nilin Gonçalves"
"Jean Ponciano"
"João Guilherme"
"Julia Vingadora"
"Kelly Aparecida Geraldo Yoneyama Tudini"
"Lilian Rodrigues Sant’ Anna Campos"
"Lucas de Assis Ribeiro"
"Luciano Hulk"
"Luiz Gustavo Almeida Martins"
"Marcel Novaes"
"Marcelo Keese Albertini"
"Marcia Aparecida Fernandes"
*/

-- l) Mostrar os nomes das disciplinas das seguintes faculdades: FADIR, FAMAT, FEMEC
SELECT nome FROM disciplina WHERE UPPER (fac_disc) in ('FADIR','FAMAT','FEMEC'); --n tem da femec -- UPPER deixa tudo maiusculo
--SELECT nome FROM disciplina WHERE UPPER (fac_disc) = 'FADIR' OR UPPER (fac_disc) = 'FAMAT' OR UPPER (fac_disc) = 'FEMEC';
/*
"nome"
"Teoria do Direito"
"Direito Digital"
"Direito do Trabalho 1"
"Direito do Trabalho 2"
"Direito Financeiro"
"Fundamentos de Matemática Elementar I"
"Fundamentos de Matemática Elementar II"
"Cálculo Diferencial e Integral I"
"Cálculo Diferencial e Integral II"
"Geometria Analitica"
*/

--n) Mostrar se algum registro da tabela turma possui erro no cadastro do semestre (ou seja, diferente de 1 ou 2)
SELECT * FROM turma WHERE semestre != 1 AND semestre != 2;
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
1822	"06"	20232	2023	"1805  "	"2E   "	203
220	"C "	3	2020	"MAT212"	"1F   "	217
221	"D "	4	2021	"MAT213"	"1F   "	215
222	"E "	5	2022	"MAT214"	"1F   "	216
223	"F "	6	2022	"MAT214"	"1F   "	216
1500	"17"	12022	2022	"GOG001"	"UMU4L"	39
1501	"17"	12021	2021	"GOG001"	"UMU4L"	39
1502	"18"	22021	2021	"GOG002"	"UMU3L"	38
1503	"19"	22022	2022	"GOG003"	"UMU4L"	39
1504	"20"	12023	2023	"GOG004"	"UMU1L"	37
317	"B1"	3	2020	"311   "	"1X   "	3
318	"C1"	4	2021	"312   "	"1X   "	1
320	"E1"	4	2021	"314   "	"1X   "	1
1817	"01"	20211	2021	"1801  "	"2E   "	201
1818	"02"	20212	2021	"1801  "	"2E   "	201
1819	"03"	20221	2022	"1803  "	"2E   "	201
1820	"04"	20222	2022	"1804  "	"2E   "	202
1821	"05"	20231	2023	"1802  "	"2E   "	202
*/

-- 7) Consultas com atualizações
-- a) Altere para letras em maiúsculo os nomes de todas as disciplinas

--UPDATE disciplina SET nome = UPPER (nome) RETURNING nome;
UPDATE disciplina SET nome = UPPER (nome);
SELECT nome FROM disciplina;
/*
"nome"
"COMPORTAMENTO MOTOR "
"PROGRAMAÇÃO PROCEDIMENTAL"
"ALGORITMO E ESTRUTURA DE DADOS 1"
"ALGORITMO E ESTRUTURA DE DADOS 2"
"PROGRAMAÇÃO ORIENTADA A OBJETOS"
"LÓGICA"
"LÓGICA PARA PROGRAMAÇÃO"
"CÁLCULO 1"
"ARQUITETURA E ORGANIZAÇÃO DE COMPUTADORES"
"BIOQUÍMICA 1"
"BIOQUÍMICA 2"
"FUNDAMENTOS DE ANATOMIA VETERINÁRIA"
"ANATOMIA DOS ANIMAIS DOMÉSTICOS"
"ÉTICA"
"CITOLOGIA, HISTOLOGIA E EMBRIOLOGIA"
"FILOSOFIA GERAL: PROBLEMAS METAFÍSICOS"
"HISTÓRIA DA FILOSOFIA MEDIEVAL"
"PSICOLOGIA DA EDUCAÇÃO"
"DIDÁTICA GERAL"
"ETICA II"
"DIDÁTICA GERAL II"
"HISTORIA DA ARTE I"
"HISTORIA DA ARTE II"
"ARTE CONTEMPORANEA I"
"ARTE CONTEMPORANEA II"
"ARTE COMPUTACIONAL"
"AVALIAÇÃO DE IMPACTOS AMBIENTAL PARA BIÓLOGOS"
"BIOLOGIA E CULTURA - (PROINTER III)"
"CONSTRUÇÃO DO CONHECIMENTO CIENTÍFICO"
"EVOLUÇÃO"
"PROFISSÃO BIÓLOGO"
"TEORIA DO DIREITO"
"DIREITO DIGITAL"
"DIREITO DO TRABALHO 1"
"DIREITO DO TRABALHO 2"
"DIREITO FINANCEIRO"
"FÍSICA BÁSICA I"
"FÍSICA BÁSICA II"
"FÍSICA BÁSICA III"
"GEOMETRICA ANALÍTICA"
"ALGORITMOS E PROGRAMAÇÃO DE COMPUTADORES"
"ANALISES CLINICAS"
"IMUNOLOGIA"
"GENETICA"
"MICROBIOLOGIA"
"BIOSSEGURANÇA"
"CONSTRUÇÕES RURAIS"
"ADUBOS E ADUBAÇÃO"
"MANEJO E CONSERVAÇÃO DO SOLO E DA ÁGUA"
"IRRIGAÇÃO E DRENAGEM"
"AGROMETEOROLOGIA"
"FUNDAMENTOS EM ENFERMAGEM"
"SAÚDE COLETIVA I"
"SAÚDE COLETIVA II"
"ENFERMAGEM MÉDICA"
"PSICOLOGIA E ÉTICA"
"GEOLOGIA 1"
"CLIMATOLOGIA 1"
"TEORIA E MÉTODO EM GEOGRAFIA"
"CARTOGRAFIA"
"PIPE 1"
"GEOLOGIA 2"
"CLIMATOLOGIA 2"
"FUNDAMENTOS DE MATEMÁTICA ELEMENTAR I"
"FUNDAMENTOS DE MATEMÁTICA ELEMENTAR II"
"CÁLCULO DIFERENCIAL E INTEGRAL I"
"CÁLCULO DIFERENCIAL E INTEGRAL II"
"GEOMETRIA ANALITICA"
"SISTEMAS DE BANCO DE DADOS"
"REDES DE COMPUTADORES"
"PROJETO E DESENVOLVIMENTO 1"
"ENGENHARIA DE SOFTWARE"
"OTIMIZAÇÃO"
"UNIDADE DE CONSTITUIÇÃO DO ORGANISMO"
"UNIDADE DE FUNCIONAMENTO DO ORGANISMO I"
"UN. DE REABILITAÇÃO INTEGRAL DO AP. ESTOMATOGNÁTICO I"
"UNIDADE DE INVESTIGAÇÃO CIENTÍFICA I (UIC1)"
"UNIDADE DE SAÚDE HUMANA I (USH1)"
"METODOLOGIA DO ENSINO DE CIÊNCIA"
"ESTÁGIO SUPERVISIONADO I"
"CONSTRUÇÃO DO DISCURSO ESCRITO"
"METODOLOGIA DO ENSINO DA LÍNGUA PORTUGUESA"
"FILOSOFIA DA EDUCAÇÃO"
"FISIOLOGIA DO EXERCÍCIO"
"TEORIA E PRÁTICA DO TREINAMENTO I"
"RITMO E EXPRESSÃO"
"TEORIA E PRÁTICA DO TREINAMENTO II"
*/

-- b) Aumente o CRA de todos os alunos em 10%
UPDATE estudante SET cra = cra*1.1;
SELECT cra FROM estudante;
/*
"cra"
82.83
74.909996
62.59
89.54
52.25
77
66.22
88.990005
73.259995
60.829998
83.27
79.53001
86.130005
78.43
75.130005
77
93.5
99
88
71.5
110
55
110
66
77
8.8
7.7
8.8
7.7
8.8
105.93
109.67
84.48
94.490005
70.18
74.25
97.130005
64.9
86.35
108.35
77
97.79
84.7
88.21999
72.6
88.638
91.311005
93.5
87.604
85.778
88
99
80.3
104.5
97.9
97.9
73.975
86.40501
96.69
82.665
99.55
93.5
86.02
96.8
100.869995
110
77
108.9
82.5
66
22
99.21999
66
77
44.55
94.05
82.71999
99.880005
880
66.22
97.240005
95.369995
92.619995
100.43
101.31
*/

-- c) Passe para o valor 100 os CRAs que ficaram acima de 100
--só tinha um acima de 100, com 800;
UPDATE estudante SET cra = 100 WHERE cra>100;
SELECT cra FROM estudante;
/*
"cra"
100
82.83
74.909996
62.59
89.54
52.25
100
100
100
100
100
100
100
100
100
100
77
66.22
88.990005
73.259995
60.829998
83.27
79.53001
86.130005
78.43
75.130005
77
93.5
99
88
71.5
55
66
77
8.8
7.7
8.8
7.7
8.8
84.48
94.490005
70.18
74.25
97.130005
64.9
86.35
77
97.79
84.7
88.21999
72.6
88.638
91.311005
93.5
87.604
85.778
88
99
80.3
97.9
97.9
73.975
86.40501
96.69
82.665
99.55
93.5
86.02
96.8
77
82.5
66
22
99.21999
66
77
44.55
94.05
82.71999
99.880005
66.22
97.240005
95.369995
92.619995
100
*/

-- d) Não deixe que alunos com CRA menor que 80 façam iniciação científica
UPDATE estudante SET tutor=NULL WHERE cra<80;
SELECT * FROM estudante;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"12021GEO005"	"Mariana Serrano Guimaraes"	"1998-01-06"	"FACIP"	100	"504        "
"107        "	"Gabriel Borges Júnior"	"2002-01-09"	"FACOM"	74.909996	
"108        "	"Amanda Gomes de Oliveira"	"2000-03-07"	"FACOM"	62.59	
"110        "	"Bruna Tobias Pinto"	"2001-07-04"	"FACOM"	52.25	
"12021BAV016"	"Jose Almeida Azevedo"	"2002-05-21"	"IARTE"	7.7	
"12021BAV029"	"Aline Oliveira Araujo"	"2001-08-15"	"IARTE"	8.8	
"12021BAV040"	"Andre Silva Martins"	"2000-09-03"	"IARTE"	7.7	
"12021BAV020"	"Lavinia Sousa Carvalho"	"2002-10-18"	"IARTE"	8.8	
"424        "	"Pedro Tiene Silva"	"2003-05-22"	"ESTES"	70.18	
"444        "	"Jason Manmoa"	"1962-03-06"	"FAEDU"	74.25	
"446        "	"Naruto Uzumaki"	"1967-12-11"	"FAEDU"	64.9	
"1405       "	"Aline Ferreira Magalhaes"	"2000-06-04"	"IFILO"	77	
"1409       "	"Kamila Stephany Alves Santos"	"2005-07-30"	"IFILO"	72.6	
"606        "	"Fernando Souza"	"1999-03-12"	"FADIR"	73.975	
"2011       "	"Peter Kavinsky"	"2003-08-03"	"ICBIM"	77	
"2014       "	"Veronica Lodge"	"1994-06-29"	"ICBIM"	66	
"1807       "	"Annelise Salem"	"2002-08-06"	"ICIAG"	22	
"1809       "	"Leandro Peres"	"2001-09-12"	"ICIAG"	66	
"1810       "	"Marina Barcelos"	"2002-10-14"	"ICIAG"	77	
"1811       "	"Gabriel Hugo Borges"	"1999-12-14"	"ICIAG"	44.55	
"954        "	"Rodrigo da Silva"	"2000-01-01"	"ESTES"	66.22	
"106        "	"Pedro Henrique Silva"	"2001-05-02"	"FACOM"	82.83	"101        "
"109        "	"Jorge Antônio Santos"	"1999-08-03"	"FACOM"	89.54	"104        "
"1500       "	"Vinicius Ribeiro"	"1993-01-06"	"FOUFU"	100	"1500       "
"1502       "	"Bruno José"	"1900-01-06"	"FOUFU"	100	"1502       "
"420        "	"Victor Guilherme Oliveira Santos"	"1998-11-20"	"ESTES"	100	"400        "
"421        "	"Sara Pelegrineti de José"	"1974-01-01"	"ESTES"	100	"401        "
"448        "	"Jason Thirtenn"	"1968-03-20"	"FAEDU"	100	"423        "
"1303       "	"Maria Ferreira"	"2000-02-02"	"FAMEV"	100	"1304       "
"309        "	"Marry Shelley"	"1999-08-30"	"INFIS"	100	"303        "
"2010       "	"Peter Benjamin Parker"	"1993-08-27"	"ICBIM"	100	"2008       "
"2012       "	"Lara Jean"	"2002-04-06"	"ICBIM"	100	"2005       "
"953        "	"Guilherme Duarte"	"1998-10-15"	"ESTES"	100	"904        "
"1712       "	"Ana Silveira"	"2003-07-22"	"INBIO"	88.990005	"1703       "
"221BSI251ST"	"Henrique Corrêa de Oliveira"	"2000-01-26"	"FACOM"	83.27	"10000000010"
"189BSI255ST"	"Luisa Gomes Ferreira"	"2000-02-07"	"FACOM"	86.130005	"10000000001"
"206        "	"Marina Silva Gomes"	"2002-08-17"	"FAMAT"	93.5	"203        "
"207        "	"Maria Julia Oliveira"	"1999-11-02"	"FAMAT"	99	"202        "
"208        "	"Vicente Araujo Mendes"	"1995-04-14"	"FAMAT"	88	"200        "
"422        "	"Davi Rui Pasquim"	"2002-04-17"	"ESTES"	84.48	"402        "
"423        "	"Diego Ruas"	"1995-12-20"	"ESTES"	94.490005	"403        "
"445        "	"Scott Pilgrim"	"1964-04-04"	"FAEDU"	97.130005	"421        "
"447        "	"Frederico Krueger"	"1968-03-20"	"FAEDU"	86.35	"423        "
"1406       "	"Cristiano Bueno de Almeida"	"2002-07-13"	"IFILO"	97.79	"1400       "
"1407       "	"Derli Luis Arantes Junior"	"2001-12-20"	"IFILO"	84.7	"1403       "
"1408       "	"Gladston Marcelo Pereira do Vale"	"2000-05-11"	"IFILO"	88.21999	"1403       "
"199        "	"Alexandre Borba Chiqueta"	"1999-05-14"	"FACOM"	88.638	"100        "
"198        "	"Flávio Fernandes"	"1998-08-02"	"FACOM"	91.311005	"100        "
"197        "	"Gabrel Toledo"	"1983-07-02"	"FACOM"	93.5	"102        "
"196        "	"Nicolas Paolinelli"	"1995-03-26"	"FACOM"	87.604	"100        "
"195        "	"Matheus Brasileiro Aguiar"	"1990-09-17"	"FACOM"	85.778	"104        "
"1300       "	"João Augusto Silva"	"2000-09-09"	"FAMEV"	88	
"1301       "	"Pedro Nunes"	"2001-12-09"	"FAMEV"	99	"1300       "
"1302       "	"Augusto Pereira"	"1999-01-28"	"FAMEV"	80.3	
"1304       "	"Ana Paula Freitas"	"2002-10-18"	"FAMEV"	97.9	
"605        "	"Elaine Ribeiro de Faria Paiva"	"1998-01-26"	"FADIR"	97.9	"603        "
"607        "	"Rafael Silva"	"2002-12-01"	"FADIR"	86.40501	"604        "
"608        "	"João Marcos Ramos"	"2001-05-12"	"FADIR"	96.69	"604        "
"609        "	"Marcos Estefam"	"2000-07-15"	"FADIR"	82.665	"604        "
"305        "	"Neil Gaiman"	"2000-11-10"	"INFIS"	99.55	"300        "
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"INFIS"	93.5	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"INFIS"	86.02	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"INFIS"	96.8	"302        "
"2013       "	"Percy Jackson"	"1993-08-18"	"ICBIM"	82.5	"2007       "
"1808       "	"Victor Bagliano"	"2000-07-14"	"ICIAG"	99.21999	
"950        "	"Gustavo Duarte Gomides"	"2002-12-12"	"ESTES"	94.05	"904        "
"951        "	"Rodrigo Alves da Silva"	"1990-05-20"	"ESTES"	82.71999	"900        "
"952        "	"Julia Echeverria"	"1999-09-05"	"ESTES"	99.880005	"902        "
"12021GEO001"	"Rafael Henrique Guimarães"	"2003-03-14"	"FACIP"	97.240005	"501        "
"12021GEO002"	"Felipe Langer"	"2000-04-01"	"FACIP"	95.369995	"501        "
"12021GEO003"	"Lucas Daniel Cunha"	"2002-12-28"	"FACIP"	92.619995	"502        "
"12021GEO004"	"Laura Rezende Teixeira Santos"	"2003-08-13"	"FACIP"	100	"503        "
"1710       "	"Jonas Caravalho"	"1990-09-12"	"INBIO"	77	
"1711       "	"Luna da Conceição"	"1987-07-19"	"INBIO"	66.22	
"1713       "	"Guilherme da Cunha"	"2000-12-02"	"INBIO"	73.259995	
"1714       "	"Davi Lucca Duarte"	"1974-09-25"	"INBIO"	60.829998	
"222BCC201ST"	"Gabriel de Araujo"	"2000-04-09"	"FACOM"	79.53001	
"221BSI255ST"	"Gabriela Pereira"	"2000-07-07"	"FACOM"	78.43	
"189BSI232ST"	"Gabriel Alves"	"2000-09-19"	"FACOM"	75.130005	
"205        "	"Joao Vitor Correia"	"2000-03-05"	"FAMAT"	77	
"209        "	"Alexandre Oliveira Rodrigues"	"2001-05-20"	"FAMAT"	71.5	
"1501       "	"César Bertolin"	"1993-01-06"	"FOUFU"	55	
"1503       "	"Elaine Maria"	"1989-01-06"	"FOUFU"	66	
"1504       "	"Carlos Silva"	"1993-01-06"	"FOUFU"	77	
"12021BAV001"	"Isabella Melo Sousa"	"2000-03-11"	"IARTE"	8.8	
*/

-- e) Passe todos os professores e alunos da FACOM para a FAMAT
UPDATE professor SET fac_prof='FAMAT' WHERE fac_prof='FACOM';
SELECT * FROM professor;
/*
"id"	"nome"	"fac_prof"	"admissao"
"1700       "	"Ailton Gonçalves Rodrigues Junior"	"INBIO"	"2021-10-12"
"1701       "	"Ariádine Cristine de Almeida"	"INBIO"	"2013-01-02"
"1702       "	"Giuliano Buzá Jacobucci"	"INBIO"	"2005-08-05"
"1703       "	"Jeamylle Nilin Gonçalves"	"INBIO"	"2019-02-28"
"1704       "	"Cassiano Aimberê Dorneles Welker"	"INBIO"	"2016-06-07"
"200        "	"Admilson Lopes dos Santos"	"FAMAT"	"2013-12-10"
"201        "	"Adriana Rodrigues da Silva"	"FAMAT"	"2010-03-26"
"202        "	"Camila Mariana Ruiz"	"FAMAT"	"2022-05-30"
"203        "	"Fernando Rodrigo Rafaeli"	"FAMAT"	"2014-06-03"
"204        "	"Taciana Oliveira Souza"	"FAMAT"	"2013-11-12"
"1500       "	"Adriano Mota Loyola"	"FOUFU"	"1988-12-01"
"1501       "	"Alessandra Maia de Castro Prado"	"FOUFU"	"2010-03-26"
"1502       "	"Álex Moreira Herval"	"FOUFU"	"2019-06-18"
"1503       "	"Ana Paula Turrioni Hidalgo"	"FOUFU"	"2015-12-01"
"1504       "	"Ana Paula de Lima Oliveira"	"FOUFU"	"2014-04-01"
"1600       "	"Belchior de Sousa"	"IARTE"	"2019-10-25"
"1605       "	"Elsieni Coelho da Silva"	"IARTE"	"2021-05-20"
"1610       "	"Gastao da Cunha Frota"	"IARTE"	"2012-06-15"
"1615       "	"Nikoleta Tzvetanova Kerinska"	"IARTE"	"2018-08-10"
"1620       "	"Renato Palumbo Doria"	"IARTE"	"2020-11-05"
"400        "	"Adriana Pastorello Buim Arena"	"ESTES"	"2004-08-02"
"401        "	"Aldeci Cacique Calixto"	"ESTES"	"2000-05-10"
"402        "	"Aléxia Pádua Franco"	"ESTES"	"2008-10-11"
"403        "	"Ana Beatriz da Silva Duarte"	"ESTES"	"2014-12-06"
"404        "	"Andrea Maturano Longarezi"	"ESTES"	"1998-05-08"
"420        "	"Jailson Mendes"	"FAEDU"	"1982-02-02"
"421        "	"Gabriel Jesus"	"FAEDU"	"1982-03-04"
"422        "	"Luciano Hulk"	"FAEDU"	"1983-10-11"
"423        "	"João Guilherme"	"FAEDU"	"1990-11-11"
"424        "	"Péricles Mendes"	"FAEDU"	"1985-09-07"
"1400       "	"Alcino Eduardo Bonella"	"IFILO"	"2009-12-30"
"1401       "	"Alexandre Guimarães Tadeu de Soares"	"IFILO"	"2003-11-01"
"1402       "	"Ana Maria Said"	"IFILO"	"2009-01-30"
"1403       "	"Anselmo Tadeu Ferreira"	"IFILO"	"2010-06-09"
"1404       "	"Dennys Garcia Xavier"	"IFILO"	"2011-11-05"
"1300       "	"Kelly Aparecida Geraldo Yoneyama Tudini"	"FAMEV"	"2000-09-09"
"1301       "	"Lucas de Assis Ribeiro"	"FAMEV"	"2005-07-26"
"1302       "	"Natália Mundim Tôrres"	"FAMEV"	"2007-07-09"
"1303       "	"Tiago Wilson Patriarca Mineo "	"FAMEV"	"2004-10-07"
"1304       "	"Neide Maria da Silva "	"FAMEV"	"2000-12-09"
"601        "	"Alexandre Garrido da Silva"	"FADIR"	"2010-08-15"
"602        "	"Beatriz Corrêa Camargo"	"FADIR"	"2015-03-21"
"603        "	"Daniela de Melo Crosara"	"FADIR"	"2022-08-03"
"604        "	"Fernando Rodrigues Martins"	"FADIR"	"2002-01-26"
"620        "	"Gustavo de Carvalho Marin"	"FADIR"	"2006-08-11"
"300        "	"Ademir Cavalheiro"	"INFIS"	"2007-12-10"
"301        "	"Adevailton Bernardo dos Santos"	"INFIS"	"2003-11-07"
"302        "	"Alessandra Riposati Arantes"	"INFIS"	"2012-01-12"
"303        "	"Djalmir Nestor Messias"	"INFIS"	"2003-11-07"
"304        "	"Marcel Novaes"	"INFIS"	"2012-01-12"
"2005       "	"Alberto da Silva Morais"	"ICBIM"	"2008-11-11"
"2006       "	"Carlos Hernrique Gomes"	"ICBIM"	"2019-01-10"
"2007       "	"Daniela Cristina de Oliveira"	"ICBIM"	"2010-03-05"
"2008       "	"Disney Oliver"	"ICBIM"	"2019-01-01"
"2009       "	"Henrique Tomaz Gonzaga"	"ICBIM"	"2020-09-09"
"1812       "	"Jamil Salem"	"ICIAG"	"1969-08-14"
"1813       "	"Julia Vingadora"	"ICIAG"	"2004-06-06"
"1814       "	"Roberto Carlos"	"ICIAG"	"1971-10-08"
"1815       "	"Cláudio Assembly"	"ICIAG"	"1969-12-01"
"1816       "	"Elaine Java"	"ICIAG"	"2000-09-11"
"900        "	"Lilian Rodrigues Sant’ Anna Campos"	"ESTES"	"2019-07-24"
"901        "	"Clelia Regina Cafer"	"ESTES"	"2008-02-20"
"902        "	"Marisa Aparecida Elias"	"ESTES"	"2017-06-13"
"903        "	"Barbara Dias Rezende Gontijo"	"ESTES"	"2014-06-04"
"904        "	"Tatiana Carneiro de Resende"	"ESTES"	"2010-01-26"
"500        "	"Alessandro Gomes Enoque"	"FACIP"	"2010-05-10"
"501        "	"Alex Fernando Borges"	"FACIP"	"2012-02-22"
"502        "	"Alexandre Alves Alvenha"	"FACIP"	"2020-10-02"
"503        "	"Alexandre Cacheffo"	"FACIP"	"2000-11-15"
"504        "	"Alexandre Calzavara Yoshida"	"FACIP"	"2016-06-17"
"100        "	"Gina Maira"	"FAMAT"	"2000-02-27"
"101        "	"Marcelo Keese Albertini"	"FAMAT"	"2013-03-07"
"102        "	"Rivalino Matias Júnior"	"FAMAT"	"2003-02-05"
"103        "	"André Backes"	"FAMAT"	"20015-06-02"
"104        "	"Bruno Augusto Nassif Travençolo"	"FAMAT"	"2018-01-09"
"105        "	"Luiz Gustavo Almeida Martins"	"FAMAT"	"2008-05-04"
"10000000000"	"Jean Ponciano"	"FAMAT"	"2005-10-10"
"10000000001"	"Elaine Ribeiro"	"FAMAT"	"2005-09-10"
"10000000010"	"Alexsandro Soares"	"FAMAT"	"2005-08-10"
"10000000011"	"Pedro Frosi"	"FAMAT"	"2000-10-10"
"10000000100"	"Marcia Aparecida Fernandes"	"FAMAT"	"2005-01-10"
*/
UPDATE estudante SET fac_est='FAMAT' WHERE fac_est='FACOM';
SELECT * FROM estudante;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"12021GEO005"	"Mariana Serrano Guimaraes"	"1998-01-06"	"FACIP"	100	"504        "
"12021BAV016"	"Jose Almeida Azevedo"	"2002-05-21"	"IARTE"	7.7	
"12021BAV029"	"Aline Oliveira Araujo"	"2001-08-15"	"IARTE"	8.8	
"12021BAV040"	"Andre Silva Martins"	"2000-09-03"	"IARTE"	7.7	
"12021BAV020"	"Lavinia Sousa Carvalho"	"2002-10-18"	"IARTE"	8.8	
"424        "	"Pedro Tiene Silva"	"2003-05-22"	"ESTES"	70.18	
"444        "	"Jason Manmoa"	"1962-03-06"	"FAEDU"	74.25	
"446        "	"Naruto Uzumaki"	"1967-12-11"	"FAEDU"	64.9	
"1405       "	"Aline Ferreira Magalhaes"	"2000-06-04"	"IFILO"	77	
"1409       "	"Kamila Stephany Alves Santos"	"2005-07-30"	"IFILO"	72.6	
"606        "	"Fernando Souza"	"1999-03-12"	"FADIR"	73.975	
"2011       "	"Peter Kavinsky"	"2003-08-03"	"ICBIM"	77	
"2014       "	"Veronica Lodge"	"1994-06-29"	"ICBIM"	66	
"1807       "	"Annelise Salem"	"2002-08-06"	"ICIAG"	22	
"1809       "	"Leandro Peres"	"2001-09-12"	"ICIAG"	66	
"1810       "	"Marina Barcelos"	"2002-10-14"	"ICIAG"	77	
"1811       "	"Gabriel Hugo Borges"	"1999-12-14"	"ICIAG"	44.55	
"954        "	"Rodrigo da Silva"	"2000-01-01"	"ESTES"	66.22	
"107        "	"Gabriel Borges Júnior"	"2002-01-09"	"FAMAT"	74.909996	
"108        "	"Amanda Gomes de Oliveira"	"2000-03-07"	"FAMAT"	62.59	
"110        "	"Bruna Tobias Pinto"	"2001-07-04"	"FAMAT"	52.25	
"106        "	"Pedro Henrique Silva"	"2001-05-02"	"FAMAT"	82.83	"101        "
"109        "	"Jorge Antônio Santos"	"1999-08-03"	"FAMAT"	89.54	"104        "
"1500       "	"Vinicius Ribeiro"	"1993-01-06"	"FOUFU"	100	"1500       "
"1502       "	"Bruno José"	"1900-01-06"	"FOUFU"	100	"1502       "
"420        "	"Victor Guilherme Oliveira Santos"	"1998-11-20"	"ESTES"	100	"400        "
"421        "	"Sara Pelegrineti de José"	"1974-01-01"	"ESTES"	100	"401        "
"448        "	"Jason Thirtenn"	"1968-03-20"	"FAEDU"	100	"423        "
"1303       "	"Maria Ferreira"	"2000-02-02"	"FAMEV"	100	"1304       "
"309        "	"Marry Shelley"	"1999-08-30"	"INFIS"	100	"303        "
"2010       "	"Peter Benjamin Parker"	"1993-08-27"	"ICBIM"	100	"2008       "
"2012       "	"Lara Jean"	"2002-04-06"	"ICBIM"	100	"2005       "
"953        "	"Guilherme Duarte"	"1998-10-15"	"ESTES"	100	"904        "
"1712       "	"Ana Silveira"	"2003-07-22"	"INBIO"	88.990005	"1703       "
"206        "	"Marina Silva Gomes"	"2002-08-17"	"FAMAT"	93.5	"203        "
"207        "	"Maria Julia Oliveira"	"1999-11-02"	"FAMAT"	99	"202        "
"208        "	"Vicente Araujo Mendes"	"1995-04-14"	"FAMAT"	88	"200        "
"422        "	"Davi Rui Pasquim"	"2002-04-17"	"ESTES"	84.48	"402        "
"423        "	"Diego Ruas"	"1995-12-20"	"ESTES"	94.490005	"403        "
"445        "	"Scott Pilgrim"	"1964-04-04"	"FAEDU"	97.130005	"421        "
"447        "	"Frederico Krueger"	"1968-03-20"	"FAEDU"	86.35	"423        "
"1406       "	"Cristiano Bueno de Almeida"	"2002-07-13"	"IFILO"	97.79	"1400       "
"1407       "	"Derli Luis Arantes Junior"	"2001-12-20"	"IFILO"	84.7	"1403       "
"1408       "	"Gladston Marcelo Pereira do Vale"	"2000-05-11"	"IFILO"	88.21999	"1403       "
"1300       "	"João Augusto Silva"	"2000-09-09"	"FAMEV"	88	
"1301       "	"Pedro Nunes"	"2001-12-09"	"FAMEV"	99	"1300       "
"1302       "	"Augusto Pereira"	"1999-01-28"	"FAMEV"	80.3	
"1304       "	"Ana Paula Freitas"	"2002-10-18"	"FAMEV"	97.9	
"605        "	"Elaine Ribeiro de Faria Paiva"	"1998-01-26"	"FADIR"	97.9	"603        "
"607        "	"Rafael Silva"	"2002-12-01"	"FADIR"	86.40501	"604        "
"608        "	"João Marcos Ramos"	"2001-05-12"	"FADIR"	96.69	"604        "
"609        "	"Marcos Estefam"	"2000-07-15"	"FADIR"	82.665	"604        "
"305        "	"Neil Gaiman"	"2000-11-10"	"INFIS"	99.55	"300        "
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"INFIS"	93.5	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"INFIS"	86.02	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"INFIS"	96.8	"302        "
"2013       "	"Percy Jackson"	"1993-08-18"	"ICBIM"	82.5	"2007       "
"1808       "	"Victor Bagliano"	"2000-07-14"	"ICIAG"	99.21999	
"950        "	"Gustavo Duarte Gomides"	"2002-12-12"	"ESTES"	94.05	"904        "
"951        "	"Rodrigo Alves da Silva"	"1990-05-20"	"ESTES"	82.71999	"900        "
"952        "	"Julia Echeverria"	"1999-09-05"	"ESTES"	99.880005	"902        "
"12021GEO001"	"Rafael Henrique Guimarães"	"2003-03-14"	"FACIP"	97.240005	"501        "
"12021GEO002"	"Felipe Langer"	"2000-04-01"	"FACIP"	95.369995	"501        "
"12021GEO003"	"Lucas Daniel Cunha"	"2002-12-28"	"FACIP"	92.619995	"502        "
"12021GEO004"	"Laura Rezende Teixeira Santos"	"2003-08-13"	"FACIP"	100	"503        "
"1710       "	"Jonas Caravalho"	"1990-09-12"	"INBIO"	77	
"1711       "	"Luna da Conceição"	"1987-07-19"	"INBIO"	66.22	
"1713       "	"Guilherme da Cunha"	"2000-12-02"	"INBIO"	73.259995	
"1714       "	"Davi Lucca Duarte"	"1974-09-25"	"INBIO"	60.829998	
"205        "	"Joao Vitor Correia"	"2000-03-05"	"FAMAT"	77	
"209        "	"Alexandre Oliveira Rodrigues"	"2001-05-20"	"FAMAT"	71.5	
"1501       "	"César Bertolin"	"1993-01-06"	"FOUFU"	55	
"1503       "	"Elaine Maria"	"1989-01-06"	"FOUFU"	66	
"1504       "	"Carlos Silva"	"1993-01-06"	"FOUFU"	77	
"12021BAV001"	"Isabella Melo Sousa"	"2000-03-11"	"IARTE"	8.8	
"221BSI251ST"	"Henrique Corrêa de Oliveira"	"2000-01-26"	"FAMAT"	83.27	"10000000010"
"189BSI255ST"	"Luisa Gomes Ferreira"	"2000-02-07"	"FAMAT"	86.130005	"10000000001"
"199        "	"Alexandre Borba Chiqueta"	"1999-05-14"	"FAMAT"	88.638	"100        "
"198        "	"Flávio Fernandes"	"1998-08-02"	"FAMAT"	91.311005	"100        "
"197        "	"Gabrel Toledo"	"1983-07-02"	"FAMAT"	93.5	"102        "
"196        "	"Nicolas Paolinelli"	"1995-03-26"	"FAMAT"	87.604	"100        "
"195        "	"Matheus Brasileiro Aguiar"	"1990-09-17"	"FAMAT"	85.778	"104        "
"222BCC201ST"	"Gabriel de Araujo"	"2000-04-09"	"FAMAT"	79.53001	
"221BSI255ST"	"Gabriela Pereira"	"2000-07-07"	"FAMAT"	78.43	
"189BSI232ST"	"Gabriel Alves"	"2000-09-19"	"FAMAT"	75.130005	
*/


-- 8) Consultas com remoção. Em alguns casos será necessário mais de um comando para a ação de completar. 
--Coloque todos os comando necessários e na ordem correta
-- a) Remova todos as informação de pré-requisito que existem no banco. 
DELETE FROM pre_requisito;
SELECT * FROM pre_requisito;
/*
Não copia nada, pois não tem nada na tabela
*/

-- b) Remova as salas com capacidade inferior a 90 lugares. Mostrar o comando e indicar se ele foi executado corremente ou se 
--ocorreu algum erro
DELETE FROM sala WHERE capacidade<90;
/*
ERROR:  update or delete on table "sala" violates foreign key constraint "fk_sala" on table "turma"
DETAIL:  Key (predio, numero)=(1B   , 204) is still referenced from table "turma".
SQL state: 23503
*/


-- c) Remova a faculdade FACOM. Se alguma informação ainda dependa da FACOM, passá-la para FAMAT antes da remoção
UPDATE disciplina SET fac_disc='FAMAT' WHERE fac_disc='FACOM';
DELETE FROM faculdade WHERE sigla='FACOM';

SELECT * FROM faculdade;
/*
"sigla"	"nome"	"predio"	"orcamento"
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

-- 9) Volte o banco ao estado original, antes das remoções e atualizações (basta executar o scriptinicial do banco novamente). 
--Não precisa mostrar nada na resposta.

-- 10) Consultas com SELECT FROM WHERE - com duas ou mais condições de seleção
-- a) Listar todos as faculdade localizadas no predio '1F' e com orçamento superior a R$ 5000,00
SELECT * FROM faculdade WHERE predio='1F' AND orcamento>5000.00;
/*
"sigla"	"nome"	"predio"	"orcamento"
"FAMAT"	"Faculdade de Matematica"	"1F   "	37500000.00
*/

-- b) Listar todas os alunos com CRA superior a 60 e que estudam na faculdade 'FACOM'
SELECT * FROM estudante WHERE cra>60 AND fac_est='FACOM';
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"106        "	"Pedro Henrique Silva"	"2001-05-02"	"FACOM"	75.3	"101        "
"107        "	"Gabriel Borges Júnior"	"2002-01-09"	"FACOM"	68.1	"102        "
"109        "	"Jorge Antônio Santos"	"1999-08-03"	"FACOM"	81.4	"104        "
"221BSI251ST"	"Henrique Corrêa de Oliveira"	"2000-01-26"	"FACOM"	75.7	"10000000010"
"222BCC201ST"	"Gabriel de Araujo"	"2000-04-09"	"FACOM"	72.3	"10000000011"
"189BSI255ST"	"Luisa Gomes Ferreira"	"2000-02-07"	"FACOM"	78.3	"10000000001"
"221BSI255ST"	"Gabriela Pereira"	"2000-07-07"	"FACOM"	71.3	"10000000000"
"189BSI232ST"	"Gabriel Alves"	"2000-09-19"	"FACOM"	68.3	"10000000100"
"199        "	"Alexandre Borba Chiqueta"	"1999-05-14"	"FACOM"	80.58	"100        "
"198        "	"Flávio Fernandes"	"1998-08-02"	"FACOM"	83.01	"100        "
"197        "	"Gabrel Toledo"	"1983-07-02"	"FACOM"	85	"102        "
"196        "	"Nicolas Paolinelli"	"1995-03-26"	"FACOM"	79.64	"100        "
"195        "	"Matheus Brasileiro Aguiar"	"1990-09-17"	"FACOM"	77.98	"104        "
*/

-- c) Listar todas as turmas ofertadas neste semestre da disciplina de cógido <ESCOLHER>
SELECT * FROM turma WHERE ano=2022 AND semestre=2 AND cod_disc='ESTES4';
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
924	"1A"	2	2022	"ESTES4"	"4K   "	206
*/

-- d) Listar todos os nome e data de nascimento dos estudantes que possuem tutores e possuem CRA maior que 80
SELECT nome, datanasc FROM estudante WHERE tutor IS NOT NULL AND cra>80;
/*
"nome"	"datanasc"
"Jorge Antônio Santos"	"1999-08-03"
"Ana Silveira"	"2003-07-22"
"Marina Silva Gomes"	"2002-08-17"
"Maria Julia Oliveira"	"1999-11-02"
"Vinicius Ribeiro"	"1993-01-06"
"Bruno José"	"1900-01-06"
"Victor Guilherme Oliveira Santos"	"1998-11-20"
"Sara Pelegrineti de José"	"1974-01-01"
"Diego Ruas"	"1995-12-20"
"Scott Pilgrim"	"1964-04-04"
"Jason Thirtenn"	"1968-03-20"
"Cristiano Bueno de Almeida"	"2002-07-13"
"Gladston Marcelo Pereira do Vale"	"2000-05-11"
"Alexandre Borba Chiqueta"	"1999-05-14"
"Flávio Fernandes"	"1998-08-02"
"Gabrel Toledo"	"1983-07-02"
"Pedro Nunes"	"2001-12-09"
"Maria Ferreira"	"2000-02-02"
"Elaine Ribeiro de Faria Paiva"	"1998-01-26"
"João Marcos Ramos"	"2001-05-12"
"Neil Gaiman"	"2000-11-10"
"Robert Louis Stevenson"	"1999-11-13"
"Bram Stocker"	"2000-11-08"
"Marry Shelley"	"1999-08-30"
"Peter Benjamin Parker"	"1993-08-27"
"Lara Jean"	"2002-04-06"
"Gustavo Duarte Gomides"	"2002-12-12"
"Julia Echeverria"	"1999-09-05"
"Guilherme Duarte"	"1998-10-15"
"Rafael Henrique Guimarães"	"2003-03-14"
"Felipe Langer"	"2000-04-01"
"Lucas Daniel Cunha"	"2002-12-28"
"Laura Rezende Teixeira Santos"	"2003-08-13"
"Mariana Serrano Guimaraes"	"1998-01-06"
*/

-- e) Listar o código e nome de todas as disciplinas cujo códigos começam com 'GBC' e possuem 4 créditos
SELECT codigo, nome FROM disciplina WHERE codigo LIKE 'GBC%' AND (ch/15)=4;
--1 CRÉDITO=15 HORAS/AULA
/*
"codigo"	"nome"
"GBC024"	"Algoritmo e Estrutura de Dados 2"
"GBC034"	"Programação Orientada a Objetos"
"GBC012"	"Lógica"
*/

-- f) Listar todos os estudantes que não possuem possuem tutores mas que possuem CRA maior ou igual a 60
SELECT * FROM estudante WHERE tutor IS NULL AND cra>=60;
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"1711       "	"Luna da Conceição"	"1987-07-19"	"INBIO"	60.2	
"1300       "	"João Augusto Silva"	"2000-09-09"	"FAMEV"	80	
"1302       "	"Augusto Pereira"	"1999-01-28"	"FAMEV"	73	
"1304       "	"Ana Paula Freitas"	"2002-10-18"	"FAMEV"	89	
"1808       "	"Victor Bagliano"	"2000-07-14"	"ICIAG"	90.2	
"1809       "	"Leandro Peres"	"2001-09-12"	"ICIAG"	60	
"1810       "	"Marina Barcelos"	"2002-10-14"	"ICIAG"	70	
*/
