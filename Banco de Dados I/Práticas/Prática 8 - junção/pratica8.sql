SET search_path TO universidade;

-- 11) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS TABELAS
-- >> Atenção: Colocar a condição de junção no WHERE
     --- (a) Liste o nome de todos as disciplinas juntamente com o nome das suas respectivas faculdades
SELECT disciplina.nome as nome_disciplina, faculdade.nome as nome_faculdade 
FROM disciplina,faculdade 
WHERE disciplina.fac_disc=faculdade.sigla;
/*
"nome_disciplina"	"nome_faculdade"
"Comportamento Motor "	"Faculdade de Educação Física"
"Programação Procedimental"	"Faculdade da Computação"
"Algoritmo e Estrutura de Dados 1"	"Faculdade da Computação"
"Algoritmo e Estrutura de Dados 2"	"Faculdade da Computação"
"Programação Orientada a Objetos"	"Faculdade da Computação"
"Lógica"	"Faculdade da Computação"
"Lógica para Programação"	"Faculdade da Computação"
"Cálculo 1"	"Faculdade da Computação"
"Arquitetura e Organização de Computadores"	"Faculdade da Computação"
"Bioquímica 1"	"Faculdade de Medicina Veterinária"
"Bioquímica 2"	"Faculdade de Medicina Veterinária"
"Fundamentos de Anatomia Veterinária"	"Faculdade de Medicina Veterinária"
"Anatomia dos Animais Domésticos"	"Faculdade de Medicina Veterinária"
"Citologia, Histologia e Embriologia"	"Faculdade de Medicina Veterinária"
"Filosofia Geral: Problemas Metafísicos"	"Instituto de Filosofia"
"História da Filosofia Medieval"	"Instituto de Filosofia"
"Ética"	"Instituto de Filosofia"
"Psicologia da Educação"	"Instituto de Filosofia"
"Didática Geral"	"Instituto de Filosofia"
"Etica II"	"Instituto de Filosofia"
"Didática Geral II"	"Instituto de Filosofia"
"Historia da Arte I"	"Instituto de Artes"
"Historia da Arte II"	"Instituto de Artes"
"Arte Contemporanea I"	"Instituto de Artes"
"Arte Contemporanea II"	"Instituto de Artes"
"Arte Computacional"	"Instituto de Artes"
"Avaliação de Impactos Ambiental para Biólogos"	"Instituto de Biologia"
"Biologia e Cultura - (PROINTER III)"	"Instituto de Biologia"
"Construção do Conhecimento Científico"	"Instituto de Biologia"
"Evolução"	"Instituto de Biologia"
"Profissão Biólogo"	"Instituto de Biologia"
"Teoria do Direito"	"Faculdade de Direito"
"Direito Digital"	"Faculdade de Direito"
"Direito do Trabalho 1"	"Faculdade de Direito"
"Direito do Trabalho 2"	"Faculdade de Direito"
"Direito Financeiro"	"Faculdade de Direito"
"Física Básica I"	"Instituto de Física"
"Física Básica II"	"Instituto de Física"
"Física Básica III"	"Instituto de Física"
"Geometrica Analítica"	"Instituto de Física"
"Algoritmos e Programação de Computadores"	"Instituto de Física"
"Analises Clinicas"	"Instituto de Ciências Biomédicas"
"Imunologia"	"Instituto de Ciências Biomédicas"
"Genetica"	"Instituto de Ciências Biomédicas"
"Microbiologia"	"Instituto de Ciências Biomédicas"
"Biossegurança"	"Instituto de Ciências Biomédicas"
"Construções Rurais"	"Instituto de Ciências Agrárias"
"Adubos e Adubação"	"Instituto de Ciências Agrárias"
"Manejo e Conservação do Solo e da Água"	"Instituto de Ciências Agrárias"
"Irrigação e Drenagem"	"Instituto de Ciências Agrárias"
"Agrometeorologia"	"Instituto de Ciências Agrárias"
"Fundamentos em Enfermagem"	"Escola Técnica de Saúde"
"Saúde Coletiva I"	"Escola Técnica de Saúde"
"Saúde Coletiva II"	"Escola Técnica de Saúde"
"Enfermagem Médica"	"Escola Técnica de Saúde"
"Psicologia e Ética"	"Escola Técnica de Saúde"
"Geologia 1"	"Faculdade de Ciencias Integradas de Pontal"
"Climatologia 1"	"Faculdade de Ciencias Integradas de Pontal"
"Teoria e método em Geografia"	"Faculdade de Ciencias Integradas de Pontal"
"Cartografia"	"Faculdade de Ciencias Integradas de Pontal"
"PIPE 1"	"Faculdade de Ciencias Integradas de Pontal"
"Geologia 2"	"Faculdade de Ciencias Integradas de Pontal"
"Climatologia 2"	"Faculdade de Ciencias Integradas de Pontal"
"Fundamentos de Matemática Elementar I"	"Faculdade de Matematica"
"Fundamentos de Matemática Elementar II"	"Faculdade de Matematica"
"Cálculo Diferencial e Integral I"	"Faculdade de Matematica"
"Cálculo Diferencial e Integral II"	"Faculdade de Matematica"
"Geometria Analitica"	"Faculdade de Matematica"
"Sistemas de Banco de Dados"	"Faculdade da Computação"
"Redes de computadores"	"Faculdade da Computação"
"Projeto e desenvolvimento 1"	"Faculdade da Computação"
"Engenharia de Software"	"Faculdade da Computação"
"Otimização"	"Faculdade da Computação"
"Unidade de Constituição do Organismo"	"Faculdade de Odontologia"
"Unidade de Funcionamento do Organismo I"	"Faculdade de Odontologia"
"Un. de Reabilitação Integral do Ap. Estomatognático I"	"Faculdade de Odontologia"
"Unidade de Investigação Científica I (UIC1)"	"Faculdade de Odontologia"
"Unidade de Saúde Humana I (USH1)"	"Faculdade de Odontologia"
"Metodologia do Ensino de Ciência"	"Escola Técnica de Saúde"
"Estágio Supervisionado I"	"Escola Técnica de Saúde"
"Construção do Discurso Escrito"	"Escola Técnica de Saúde"
"Metodologia do Ensino da Língua Portuguesa"	"Escola Técnica de Saúde"
"Filosofia da Educação"	"Escola Técnica de Saúde"
"Fisiologia do Exercício"	"Faculdade de Educação Física"
"Teoria e Prática do Treinamento I"	"Faculdade de Educação Física"
"Ritmo e Expressão"	"Faculdade de Educação Física"
"Teoria e Prática do Treinamento II"	"Faculdade de Educação Física"
*/

--- (b) Listar o nome de todas as disciplinas juntamente com todos as informações sobre suas turmas
SELECT disciplina.nome as nome_disciplina, turma.* 
FROM disciplina,turma 
WHERE disciplina.codigo=turma.cod_disc;
/*
"nome_disciplina"	"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
"Agrometeorologia"	1822	"06"	20232	2023	"1805  "	"2E   "	203
"Fundamentos em Enfermagem"	920	"1A"	1	2022	"ESTES1"	"4K   "	205
"Fundamentos em Enfermagem"	921	"1B"	1	2022	"ESTES1"	"4K   "	205
"Saúde Coletiva I"	922	"1A"	1	2022	"ESTES2"	"4K   "	206
"Saúde Coletiva II"	923	"1A"	1	2022	"ESTES3"	"4K   "	207
"Enfermagem Médica"	924	"1A"	2	2022	"ESTES4"	"4K   "	206
"Psicologia e Ética"	925	"1A"	2	2022	"ESTES5"	"4K   "	207
"Climatologia 1"	511	"33"	1	2022	"GGO002"	"3K   "	101
"Climatologia 2"	512	"33"	2	2022	"GGO012"	"3K   "	101
"Geologia 1"	513	"31"	1	2021	"GGO001"	"3K   "	102
"Geologia 2"	514	"31"	2	2021	"GGO011"	"3K   "	102
"Climatologia 2"	515	"29"	2	2020	"GGO012"	"3K   "	103
"Bioquímica 1"	1300	"A "	1	2022	"GMV003"	"1BCG "	101
"Bioquímica 2"	1301	"B "	1	2022	"GMV007"	"1BCG "	102
"Fundamentos de Anatomia Veterinária"	1302	"C "	1	2022	"GMV005"	"1BCG "	103
"Anatomia dos Animais Domésticos"	1303	"D "	1	2022	"GMV006"	"1BCG "	103
"Citologia, Histologia e Embriologia"	1304	"E "	1	2022	"GMV001"	"1BCG "	102
"Fundamentos de Anatomia Veterinária"	1305	"F "	1	2022	"GMV005"	"1BCG "	103
"Avaliação de Impactos Ambiental para Biólogos"	1720	"C "	1	2022	"31505 "	"8C   "	119
"Avaliação de Impactos Ambiental para Biólogos"	1721	"D "	1	2022	"31505 "	"8C   "	119
"Biologia e Cultura - (PROINTER III)"	1722	"C "	1	2022	"39030 "	"2D   "	13
"Construção do Conhecimento Científico"	1723	"C "	1	2022	"31104 "	"8C   "	121
"Evolução"	1724	"C "	1	2022	"31602 "	"8C   "	322
"Profissão Biólogo"	1725	"C "	1	2022	"31407 "	"8C   "	123
"Filosofia Geral: Problemas Metafísicos"	1417	"A "	1	2022	"1410  "	"1U   "	204
"História da Filosofia Medieval"	1418	"A "	1	2022	"1411  "	"5O-A "	206
"Ética"	1419	"A "	1	2022	"1412  "	"5O-A "	206
"Psicologia da Educação"	1420	"A "	2	2022	"1413  "	"5O-A "	207
"Didática Geral"	1421	"A "	2	2022	"1414  "	"1U   "	204
"Didática Geral"	1422	"B "	2	2022	"1414  "	"1U   "	204
"Historia da Arte I"	10	"55"	1	2015	"GAV001"	"5S   "	207
"Historia da Arte II"	20	"57"	2	2016	"GAV007"	"5S   "	205
"Arte Contemporanea I"	30	"59"	1	2017	"GAV013"	"5S   "	208
"Arte Contemporanea II"	40	"61"	2	2018	"GAV019"	"5S   "	207
"Arte Computacional"	50	"63"	1	2019	"GAV010"	"5S   "	205
"Fundamentos de Matemática Elementar I"	218	"A "	1	2018	"MAT201"	"1F   "	215
"Fundamentos de Matemática Elementar II"	219	"B "	2	2019	"MAT211"	"1F   "	216
"Cálculo Diferencial e Integral I"	220	"C "	3	2020	"MAT212"	"1F   "	217
"Cálculo Diferencial e Integral II"	221	"D "	4	2021	"MAT213"	"1F   "	215
"Geometria Analitica"	222	"E "	5	2022	"MAT214"	"1F   "	216
"Geometria Analitica"	223	"F "	6	2022	"MAT214"	"1F   "	216
"Sistemas de Banco de Dados"	1	"01"	1	2022	"GBC043"	"1BBSI"	127
"Sistemas de Banco de Dados"	2	"02"	2	2022	"GBC043"	"1BBSI"	127
"Redes de computadores"	3	"03"	2	2022	"GSI023"	"1BBSI"	128
"Projeto e desenvolvimento 1"	4	"04"	2	2022	"GSI034"	"1BBSI"	129
"Otimização"	5	"05"	2	2022	"GSI027"	"1BBSI"	128
"Unidade de Constituição do Organismo"	1500	"17"	12022	2022	"GOG001"	"UMU4L"	39
"Unidade de Constituição do Organismo"	1501	"17"	12021	2021	"GOG001"	"UMU4L"	39
"Unidade de Funcionamento do Organismo I"	1502	"18"	22021	2021	"GOG002"	"UMU3L"	38
"Un. de Reabilitação Integral do Ap. Estomatognático I"	1503	"19"	22022	2022	"GOG003"	"UMU4L"	39
"Unidade de Investigação Científica I (UIC1)"	1504	"20"	12023	2023	"GOG004"	"UMU1L"	37
"Metodologia do Ensino de Ciência"	430	"65"	2	2020	"410   "	"1G   "	101
"Metodologia do Ensino de Ciência"	431	"66"	1	2020	"410   "	"1G   "	101
"Estágio Supervisionado I"	432	"67"	2	2020	"411   "	"1G   "	102
"Construção do Discurso Escrito"	433	"68"	1	2021	"412   "	"1G   "	103
"Metodologia do Ensino da Língua Portuguesa"	434	"69"	2	2021	"413   "	"1G   "	104
"Fisiologia do Exercício"	400	"00"	2	1982	"GEDU31"	"1A   "	490
"Teoria e Prática do Treinamento I"	401	"01"	1	1983	"GEDU32"	"1A   "	490
"Ritmo e Expressão"	402	"02"	2	1983	"GEDU41"	"1A   "	491
"Teoria e Prática do Treinamento II"	403	"03"	2	1990	"GEDU42"	"1A   "	491
"Comportamento Motor "	404	"04"	2	1995	"GEDU43"	"1A   "	492
"Comportamento Motor "	405	"05"	2	1995	"GEDU43"	"1A   "	492
"Programação Orientada a Objetos"	155	"63"	2	2020	"GBC034"	"1B   "	204
"Programação Orientada a Objetos"	154	"64"	1	2021	"GBC034"	"1B   "	203
"Algoritmo e Estrutura de Dados 2"	153	"65"	2	2021	"GBC024"	"5R   "	103
"Algoritmo e Estrutura de Dados 1"	152	"66"	1	2022	"GBC023"	"5R   "	103
"Programação Procedimental"	151	"67"	2	2022	"GBC045"		
"Teoria do Direito"	650	"D1"	2	2022	"FADIR3"	"3D   "	102
"Direito Digital"	651	"D1"	2	2020	"FADIR4"	"3D   "	104
"Direito do Trabalho 1"	652	"D2"	1	2021	"FADIR5"	"3D   "	104
"Direito do Trabalho 2"	653	"D3"	2	2022	"FADIR6"		
"Direito do Trabalho 2"	654	"D4"	1	2022	"FADIR6"		
"Física Básica I"	315	"A1"	2	2020	"310   "	"1X   "	2
"Física Básica I"	316	"A2"	2	2020	"310   "	"1X   "	2
"Física Básica II"	317	"B1"	3	2020	"311   "	"1X   "	3
"Física Básica III"	318	"C1"	4	2021	"312   "	"1X   "	1
"Geometrica Analítica"	319	"D1"	1	2021	"313   "	"1X   "	1
"Algoritmos e Programação de Computadores"	320	"E1"	4	2021	"314   "	"1X   "	1
"Analises Clinicas"	2015	"A "	1	2022	"2000  "	"2A   "	1
"Imunologia"	2016	"B "	1	2022	"2001  "	"2A   "	2
"Genetica"	2017	"C "	1	2022	"2002  "	"2A   "	3
"Microbiologia"	2018	"D "	1	2022	"2003  "	"2A   "	4
"Biossegurança"	2019	"E "	1	2022	"2004  "	"2A   "	5
"Biossegurança"	2020	"F "	1	2022	"2004  "	"2A   "	6
"Construções Rurais"	1817	"01"	20211	2021	"1801  "	"2E   "	201
"Construções Rurais"	1818	"02"	20212	2021	"1801  "	"2E   "	201
"Manejo e Conservação do Solo e da Água"	1819	"03"	20221	2022	"1803  "	"2E   "	201
"Irrigação e Drenagem"	1820	"04"	20222	2022	"1804  "	"2E   "		SELECT202
"Adubos e Adubação"	1821	"05"	20231	2023	"1802  "	"2E   "	202
*/

-- (c) Listar o nome do aluno e o nome de seu tutor
SELECT estudante.nome as nome_aluno, professor.nome as nome_tutor
FROM estudante, professor 
WHERE estudante.tutor=professor.id;
/*
"nome_aluno"	"nome_tutor"
"Pedro Henrique Silva"	"Marcelo Keese Albertini"
"Gabriel Borges Júnior"	"Rivalino Matias Júnior"
"Amanda Gomes de Oliveira"	"André Backes"
"Jorge Antônio Santos"	"Bruno Augusto Nassif Travençolo"
"Bruna Tobias Pinto"	"Luiz Gustavo Almeida Martins"
"Jonas Caravalho"	"Ailton Gonçalves Rodrigues Junior"
"Ana Silveira"	"Jeamylle Nilin Gonçalves"
"Guilherme da Cunha"	"Ariádine Cristine de Almeida"
"Davi Lucca Duarte"	"Ailton Gonçalves Rodrigues Junior"
"Henrique Corrêa de Oliveira"	"Alexsandro Soares"
"Gabriel de Araujo"	"Pedro Frosi"
"Luisa Gomes Ferreira"	"Elaine Ribeiro"
"Gabriela Pereira"	"Jean Ponciano"
"Gabriel Alves"	"Marcia Aparecida Fernandes"
"Joao Vitor Correia"	"Taciana Oliveira Souza"
"Marina Silva Gomes"	"Fernando Rodrigo Rafaeli"
"Maria Julia Oliveira"	"Camila Mariana Ruiz"
"Vicente Araujo Mendes"	"Admilson Lopes dos Santos"
"Alexandre Oliveira Rodrigues"	"Adriana Rodrigues da Silva"
"Vinicius Ribeiro"	"Adriano Mota Loyola"
"César Bertolin"	"Alessandra Maia de Castro Prado"
"Bruno José"	"Álex Moreira Herval"
"Elaine Maria"	"Ana Paula Turrioni Hidalgo"
"Carlos Silva"	"Ana Paula de Lima Oliveira"
"Isabella Melo Sousa"	"Belchior de Sousa"
"Jose Almeida Azevedo"	"Elsieni Coelho da Silva"
"Aline Oliveira Araujo"	"Belchior de Sousa"
"Andre Silva Martins"	"Gastao da Cunha Frota"
"Lavinia Sousa Carvalho"	"Belchior de Sousa"
"Victor Guilherme Oliveira Santos"	"Adriana Pastorello Buim Arena"
"Sara Pelegrineti de José"	"Aldeci Cacique Calixto"
"Davi Rui Pasquim"	"Aléxia Pádua Franco"
"Diego Ruas"	"Ana Beatriz da Silva Duarte"
"Pedro Tiene Silva"	"Andrea Maturano Longarezi"
"Jason Manmoa"	"Jailson Mendes"
"Scott Pilgrim"	"Gabriel Jesus"
"Naruto Uzumaki"	"Gabriel Jesus"
"Frederico Krueger"	"João Guilherme"
"Jason Thirtenn"	"João Guilherme"
"Aline Ferreira Magalhaes"	"Alcino Eduardo Bonella"
"Cristiano Bueno de Almeida"	"Alcino Eduardo Bonella"
"Derli Luis Arantes Junior"	"Anselmo Tadeu Ferreira"
"Gladston Marcelo Pereira do Vale"	"Anselmo Tadeu Ferreira"
"Kamila Stephany Alves Santos"	"Ana Maria Said"
"Alexandre Borba Chiqueta"	"Gina Maira"
"Flávio Fernandes"	"Gina Maira"
"Gabrel Toledo"	"Rivalino Matias Júnior"
"Nicolas Paolinelli"	"Gina Maira"
"Matheus Brasileiro Aguiar"	"Bruno Augusto Nassif Travençolo"
"Pedro Nunes"	"Kelly Aparecida Geraldo Yoneyama Tudini"
"Maria Ferreira"	"Neide Maria da Silva "
"Elaine Ribeiro de Faria Paiva"	"Daniela de Melo Crosara"
"Fernando Souza"	"Daniela de Melo Crosara"
"Rafael Silva"	"Fernando Rodrigues Martins"
"João Marcos Ramos"	"Fernando Rodrigues Martins"
"Marcos Estefam"	"Fernando Rodrigues Martins"
"Neil Gaiman"	"Ademir Cavalheiro"
"Robert Louis Stevenson"	"Adevailton Bernardo dos Santos"
"Anne Rice"	"Alessandra Riposati Arantes"
"Bram Stocker"	"Alessandra Riposati Arantes"
"Marry Shelley"	"Djalmir Nestor Messias"
"Peter Benjamin Parker"	"Disney Oliver"
"Peter Kavinsky"	"Henrique Tomaz Gonzaga"
"Lara Jean"	"Alberto da Silva Morais"
"Percy Jackson"	"Daniela Cristina de Oliveira"
"Veronica Lodge"	"Carlos Hernrique Gomes"
"Annelise Salem"	"Jamil Salem"
"Gabriel Hugo Borges"	"Julia Vingadora"
"Gustavo Duarte Gomides"	"Tatiana Carneiro de Resende"
"Rodrigo Alves da Silva"	"Lilian Rodrigues Sant’ Anna Campos"
"Julia Echeverria"	"Marisa Aparecida Elias"
"Guilherme Duarte"	"Tatiana Carneiro de Resende"
"Rodrigo da Silva"	"Lilian Rodrigues Sant’ Anna Campos"
"Rafael Henrique Guimarães"	"Alex Fernando Borges"
"Felipe Langer"	"Alex Fernando Borges"
"Lucas Daniel Cunha"	"Alexandre Alves Alvenha"
"Laura Rezende Teixeira Santos"	"Alexandre Cacheffo"
"Mariana Serrano Guimaraes"	"Alexandre Calzavara Yoshida"
*/

--- (d) Listar os nomes das disciplinas que tiveram turmas ofertadas no semestre atual (ano-semestre)
SELECT disciplina.nome as nome_disciplina, turma.ano, turma.semestre 
FROM disciplina, turma 
WHERE turma.ano=2022 
	AND turma.semestre=2 
	AND turma.cod_disc=disciplina.codigo;														
/*
"nome_disciplina"	"ano"	"semestre"
"Programação Procedimental"	2022	2
"Psicologia da Educação"	2022	2
"Didática Geral"	2022	2
"Didática Geral"	2022	2
"Teoria do Direito"	2022	2
"Direito do Trabalho 2"	2022	2
"Enfermagem Médica"	2022	2
"Psicologia e Ética"	2022	2
"Climatologia 2"	2022	2
"Sistemas de Banco de Dados"	2022	2
"Redes de computadores"	2022	2
"Projeto e desenvolvimento 1"	2022	2
"Otimização"	2022	2
*/

--ou sem mostrar ano e semestre, somente o nome da matéria
SELECT disciplina.nome as nome_disciplina
FROM disciplina, turma 
WHERE turma.ano=2022 
	AND turma.semestre=2 
	AND turma.cod_disc=disciplina.codigo;
/*
"nome_disciplina"
"Programação Procedimental"
"Psicologia da Educação"
"Didática Geral"
"Didática Geral"
"Teoria do Direito"
"Direito do Trabalho 2"
"Enfermagem Médica"
"Psicologia e Ética"
"Climatologia 2"
"Sistemas de Banco de Dados"
"Redes de computadores"
"Projeto e desenvolvimento 1"
"Otimização"
*/

--- (e) Listar o *nome* da disciplina e o *código* da(s) disciplina(s) que são seu pré-requisito
SELECT nome as nome_disciplina, cod_pre as cod_pre_resquisito
FROM disciplina, pre_requisito  
WHERE disciplina.codigo = pre_requisito.cod_disc;
--nome da materia atual | codigo da antecessora
--fisicaII 310
--310=fiscaI
/*
"nome_disciplina"	"cod_pre_resquisito"
"Comportamento Motor "	"GEDU31"
"Algoritmo e Estrutura de Dados 1"	"GBC045"
"Algoritmo e Estrutura de Dados 2"	"GBC023"
"Bioquímica 2"	"GMV003"
"Anatomia dos Animais Domésticos"	"GMV005"
"Etica II"	"1412  "
"Didática Geral II"	"1414  "
"Historia da Arte II"	"GAV001"
"Arte Contemporanea II"	"GAV013"
"Direito Digital"	"FADIR3"
"Direito do Trabalho 2"	"FADIR5"
"Física Básica II"	"310   "
"Física Básica III"	"311   "
"Imunologia"	"2000  "
"Microbiologia"	"2002  "
"Agrometeorologia"	"1803  "
"Agrometeorologia"	"1804  "
"Saúde Coletiva II"	"ESTES2"
"Enfermagem Médica"	"ESTES1"
"Geologia 2"	"GGO001"
"Climatologia 2"	"GGO002"
"Fundamentos de Matemática Elementar II"	"MAT201"
"Cálculo Diferencial e Integral II"	"MAT212"
"Projeto e desenvolvimento 1"	"GBC043"
"Unidade de Saúde Humana I (USH1)"	"GOG001"
"Teoria e Prática do Treinamento II"	"GEDU32"
*/

--- (f) Listar o *nome* das disciplinas que são pré-requisito juntamente com os *códigos* das disciplinas que
     ---	 dependem delas
--nome da materia antecessora | codigo da atual
--fisicaI 311
--311=fisicaII
SELECT nome as nome_pre_requisito, cod_disc as cod_disciplina_regente
FROM disciplina, pre_requisito 
WHERE disciplina.codigo = pre_requisito.cod_pre;
/*
"nome_pre_requisito"	"cod_disciplina_regente"
"Programação Procedimental"	"GBC023"
"Algoritmo e Estrutura de Dados 1"	"GBC024"
"Bioquímica 1"	"GMV007"
"Fundamentos de Anatomia Veterinária"	"GMV006"
"Ética"	"1415  "
"Didática Geral"	"1416  "
"Historia da Arte I"	"GAV007"
"Arte Contemporanea I"	"GAV019"
"Teoria do Direito"	"FADIR4"
"Direito do Trabalho 1"	"FADIR6"
"Física Básica I"	"311   "
"Física Básica II"	"312   "
"Analises Clinicas"	"2001  "
"Genetica"	"2003  "
"Manejo e Conservação do Solo e da Água"	"1805  "
"Irrigação e Drenagem"	"1805  "
"Fundamentos em Enfermagem"	"ESTES4"
"Saúde Coletiva I"	"ESTES3"
"Geologia 1"	"GGO011"
"Climatologia 1"	"GGO012"
"Fundamentos de Matemática Elementar I"	"MAT211"
"Cálculo Diferencial e Integral I"	"MAT213"
"Sistemas de Banco de Dados"	"GSI034"
"Unidade de Constituição do Organismo"	"GOG005"
"Fisiologia do Exercício"	"GEDU43"
"Teoria e Prática do Treinamento I"	"GEDU42"
*/

-- 12) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS OU MAIS TABELAS 
-- >> Atenção: Colocar a condição de junção no WHERE
     --- (a) Listar o nome dos professores juntamente com o nome das disciplinas que eles ministram/ministraram 
SELECT professor.nome as nome_professor, disciplina.nome as nome_disciplina
FROM professor, disciplina, turma, ensina 
WHERE professor.id=ensina.id_prof
	AND ensina.id_turma=turma.id
	AND turma.cod_disc=disciplina.codigo;
/*
"nome_professor"	"nome_disciplina"
"Gina Maira"	"Programação Orientada a Objetos"
"Marcelo Keese Albertini"	"Programação Procedimental"
"Rivalino Matias Júnior"	"Programação Orientada a Objetos"
"André Backes"	"Algoritmo e Estrutura de Dados 1"
"Bruno Augusto Nassif Travençolo"	"Algoritmo e Estrutura de Dados 2"
"Alexandre Garrido da Silva"	"Teoria do Direito"
"Alexandre Garrido da Silva"	"Direito Digital"
"Beatriz Corrêa Camargo"	"Teoria do Direito"
"Beatriz Corrêa Camargo"	"Direito do Trabalho 1"
"Daniela de Melo Crosara"	"Direito do Trabalho 2"
"Daniela de Melo Crosara"	"Direito do Trabalho 1"
"Daniela de Melo Crosara"	"Direito do Trabalho 2"
"Fernando Rodrigues Martins"	"Direito do Trabalho 1"
"Fernando Rodrigues Martins"	"Direito do Trabalho 2"
"Fernando Rodrigues Martins"	"Direito do Trabalho 2"
"Gustavo de Carvalho Marin"	"Direito Digital"
"Gustavo de Carvalho Marin"	"Direito do Trabalho 1"
"Gustavo de Carvalho Marin"	"Direito do Trabalho 2"
"Ademir Cavalheiro"	"Física Básica I"
"Ademir Cavalheiro"	"Física Básica II"
"Adevailton Bernardo dos Santos"	"Física Básica I"
"Alessandra Riposati Arantes"	"Física Básica III"
"Djalmir Nestor Messias"	"Geometrica Analítica"
"Marcel Novaes"	"Algoritmos e Programação de Computadores"
"Alberto da Silva Morais"	"Analises Clinicas"
"Carlos Hernrique Gomes"	"Imunologia"
"Daniela Cristina de Oliveira"	"Genetica"
"Disney Oliver"	"Microbiologia"
"Henrique Tomaz Gonzaga"	"Biossegurança"
"Jamil Salem"	"Construções Rurais"
"Jamil Salem"	"Construções Rurais"
"Julia Vingadora"	"Manejo e Conservação do Solo e da Água"
"Roberto Carlos"	"Irrigação e Drenagem"
"Cláudio Assembly"	"Adubos e Adubação"
"Elaine Java"	"Agrometeorologia"
"Lilian Rodrigues Sant’ Anna Campos"	"Fundamentos em Enfermagem"
"Clelia Regina Cafer"	"Fundamentos em Enfermagem"
"Marisa Aparecida Elias"	"Saúde Coletiva I"
"Marisa Aparecida Elias"	"Saúde Coletiva II"
"Barbara Dias Rezende Gontijo"	"Enfermagem Médica"
"Tatiana Carneiro de Resende"	"Psicologia e Ética"
"Alessandro Gomes Enoque"	"Climatologia 1"
"Alex Fernando Borges"	"Climatologia 2"
"Alexandre Alves Alvenha"	"Geologia 1"
"Alexandre Cacheffo"	"Geologia 2"
"Alexandre Calzavara Yoshida"	"Climatologia 2"
"Kelly Aparecida Geraldo Yoneyama Tudini"	"Bioquímica 1"
"Lucas de Assis Ribeiro"	"Bioquímica 1"
"Natália Mundim Tôrres"	"Bioquímica 2"
"Tiago Wilson Patriarca Mineo "	"Fundamentos de Anatomia Veterinária"
"Neide Maria da Silva "	"Bioquímica 1"
"Ailton Gonçalves Rodrigues Junior"	"Avaliação de Impactos Ambiental para Biólogos"
"Ariádine Cristine de Almeida"	"Biologia e Cultura - (PROINTER III)"
"Ariádine Cristine de Almeida"	"Construção do Conhecimento Científico"
"Cassiano Aimberê Dorneles Welker"	"Profissão Biólogo"
"Giuliano Buzá Jacobucci"	"Avaliação de Impactos Ambiental para Biólogos"
"Alcino Eduardo Bonella"	"Filosofia Geral: Problemas Metafísicos"
"Alexandre Guimarães Tadeu de Soares"	"Ética"
"Ana Maria Said"	"Filosofia Geral: Problemas Metafísicos"
"Anselmo Tadeu Ferreira"	"História da Filosofia Medieval"
"Dennys Garcia Xavier"	"Ética"
"Belchior de Sousa"	"Historia da Arte I"
"Elsieni Coelho da Silva"	"Historia da Arte II"
"Gastao da Cunha Frota"	"Arte Contemporanea I"
"Elsieni Coelho da Silva"	"Arte Contemporanea II"
"Renato Palumbo Doria"	"Arte Computacional"
"Admilson Lopes dos Santos"	"Fundamentos de Matemática Elementar I"
"Adriana Rodrigues da Silva"	"Fundamentos de Matemática Elementar II"
"Camila Mariana Ruiz"	"Cálculo Diferencial e Integral I"
"Fernando Rodrigo Rafaeli"	"Cálculo Diferencial e Integral II"
"Taciana Oliveira Souza"	"Geometria Analitica"
"Taciana Oliveira Souza"	"Geometria Analitica"
"Jean Ponciano"	"Sistemas de Banco de Dados"
"Elaine Ribeiro"	"Redes de computadores"
"Alexsandro Soares"	"Projeto e desenvolvimento 1"
"Pedro Frosi"	"Otimização"
"Marcia Aparecida Fernandes"	"Redes de computadores"
"Adriano Mota Loyola"	"Unidade de Constituição do Organismo"
"Alessandra Maia de Castro Prado"	"Unidade de Constituição do Organismo"
"Adriana Pastorello Buim Arena"	"Metodologia do Ensino de Ciência"
"Aldeci Cacique Calixto"	"Metodologia do Ensino de Ciência"
"Aléxia Pádua Franco"	"Estágio Supervisionado I"
"Ana Beatriz da Silva Duarte"	"Construção do Discurso Escrito"
"Andrea Maturano Longarezi"	"Metodologia do Ensino da Língua Portuguesa"
"Jailson Mendes"	"Fisiologia do Exercício"
"Gabriel Jesus"	"Teoria e Prática do Treinamento I"
"Luciano Hulk"	"Ritmo e Expressão"
"João Guilherme"	"Teoria e Prática do Treinamento II"
"Péricles Mendes"	"Comportamento Motor "
*/

--- (b) Listar o nome dos professores juntamente com o nome das disciplinas que eles ministram neste semestre (ano-semestre)
SELECT professor.nome as nome_professor, disciplina.nome as nome_disciplina
FROM professor, disciplina, turma, ensina 
WHERE professor.id=ensina.id_prof
	AND ensina.id_turma=turma.id
	AND turma.cod_disc=disciplina.codigo
	AND semestre=2
	AND ano=2022;
/*
"nome_professor"	"nome_disciplina"
"Marcelo Keese Albertini"	"Programação Procedimental"
"Beatriz Corrêa Camargo"	"Teoria do Direito"
"Alexandre Garrido da Silva"	"Teoria do Direito"
"Fernando Rodrigues Martins"	"Direito do Trabalho 2"
"Daniela de Melo Crosara"	"Direito do Trabalho 2"
"Barbara Dias Rezende Gontijo"	"Enfermagem Médica"
"Tatiana Carneiro de Resende"	"Psicologia e Ética"
"Alex Fernando Borges"	"Climatologia 2"
"Jean Ponciano"	"Sistemas de Banco de Dados"
"Marcia Aparecida Fernandes"	"Redes de computadores"
"Elaine Ribeiro"	"Redes de computadores"
"Alexsandro Soares"	"Projeto e desenvolvimento 1"
"Pedro Frosi"	"Otimização"
*/

--- (c) Listar os nomes das disciplinas que são ofertadas (possuem turmas) em salas com capacidade superior a 10 lugares
SELECT nome as nome_dissciplina
FROM disciplina, turma, sala
WHERE disciplina.codigo=turma.cod_disc
		AND turma.predio_s=sala.predio
		AND turma.n_sala=sala.numero
		AND sala.capacidade>10;
/*
"nome_dissciplina"
"Comportamento Motor "
"Comportamento Motor "
"Algoritmo e Estrutura de Dados 1"
"Algoritmo e Estrutura de Dados 2"
"Programação Orientada a Objetos"
"Programação Orientada a Objetos"
"Bioquímica 1"
"Bioquímica 2"
"Fundamentos de Anatomia Veterinária"
"Fundamentos de Anatomia Veterinária"
"Anatomia dos Animais Domésticos"
"Citologia, Histologia e Embriologia"
"Filosofia Geral: Problemas Metafísicos"
"História da Filosofia Medieval"
"Ética"
"Psicologia da Educação"
"Didática Geral"
"Didática Geral"
"Historia da Arte I"
"Historia da Arte II"
"Arte Contemporanea I"
"Arte Contemporanea II"
"Arte Computacional"
"Avaliação de Impactos Ambiental para Biólogos"
"Avaliação de Impactos Ambiental para Biólogos"
"Biologia e Cultura - (PROINTER III)"
"Construção do Conhecimento Científico"
"Evolução"
"Profissão Biólogo"
"Teoria do Direito"
"Direito Digital"
"Direito do Trabalho 1"
"Física Básica I"
"Física Básica I"
"Física Básica II"
"Física Básica III"
"Geometrica Analítica"
"Algoritmos e Programação de Computadores"
"Analises Clinicas"
"Imunologia"
"Genetica"
"Microbiologia"
"Biossegurança"
"Biossegurança"
"Construções Rurais"
"Construções Rurais"
"Adubos e Adubação"
"Manejo e Conservação do Solo e da Água"
"Irrigação e Drenagem"
"Agrometeorologia"
"Fundamentos em Enfermagem"
"Fundamentos em Enfermagem"
"Saúde Coletiva I"
"Saúde Coletiva II"
"Enfermagem Médica"
"Psicologia e Ética"
"Geologia 1"
"Climatologia 1"
"Geologia 2"
"Climatologia 2"
"Climatologia 2"
"Fundamentos de Matemática Elementar I"
"Fundamentos de Matemática Elementar II"
"Cálculo Diferencial e Integral I"
"Cálculo Diferencial e Integral II"
"Geometria Analitica"
"Geometria Analitica"
"Sistemas de Banco de Dados"
"Sistemas de Banco de Dados"
"Redes de computadores"
"Projeto e desenvolvimento 1"
"Otimização"
"Unidade de Constituição do Organismo"
"Unidade de Constituição do Organismo"
"Unidade de Funcionamento do Organismo I"
"Un. de Reabilitação Integral do Ap. Estomatognático I"
"Unidade de Investigação Científica I (UIC1)"
"Metodologia do Ensino de Ciência"
"Metodologia do Ensino de Ciência"
"Estágio Supervisionado I"
"Construção do Discurso Escrito"
"Metodologia do Ensino da Língua Portuguesa"
"Fisiologia do Exercício"
"Teoria e Prática do Treinamento I"
"Ritmo e Expressão"
"Teoria e Prática do Treinamento II"
*/

--  (d) Listar o nome do estudante juntamente com o nome de sua faculdade e com o nome do seu professor tutor
SELECT estudante.nome as nome_estudante, faculdade.nome as nome_faculdade, professor.nome as nome_professor
FROM estudante, faculdade, professor
WHERE estudante.fac_est=faculdade.sigla
		AND estudante.tutor=professor.id;
/*
"nome_estudante"	"nome_faculdade"	"nome_professor"
"Pedro Henrique Silva"	"Faculdade da Computação"	"Marcelo Keese Albertini"
"Gabriel Borges Júnior"	"Faculdade da Computação"	"Rivalino Matias Júnior"
"Amanda Gomes de Oliveira"	"Faculdade da Computação"	"André Backes"
"Jorge Antônio Santos"	"Faculdade da Computação"	"Bruno Augusto Nassif Travençolo"
"Bruna Tobias Pinto"	"Faculdade da Computação"	"Luiz Gustavo Almeida Martins"
"Jonas Caravalho"	"Instituto de Biologia"	"Ailton Gonçalves Rodrigues Junior"
"Ana Silveira"	"Instituto de Biologia"	"Jeamylle Nilin Gonçalves"
"Guilherme da Cunha"	"Instituto de Biologia"	"Ariádine Cristine de Almeida"
"Davi Lucca Duarte"	"Instituto de Biologia"	"Ailton Gonçalves Rodrigues Junior"
"Henrique Corrêa de Oliveira"	"Faculdade da Computação"	"Alexsandro Soares"
"Gabriel de Araujo"	"Faculdade da Computação"	"Pedro Frosi"
"Luisa Gomes Ferreira"	"Faculdade da Computação"	"Elaine Ribeiro"
"Gabriela Pereira"	"Faculdade da Computação"	"Jean Ponciano"
"Gabriel Alves"	"Faculdade da Computação"	"Marcia Aparecida Fernandes"
"Joao Vitor Correia"	"Faculdade de Matematica"	"Taciana Oliveira Souza"
"Marina Silva Gomes"	"Faculdade de Matematica"	"Fernando Rodrigo Rafaeli"
"Maria Julia Oliveira"	"Faculdade de Matematica"	"Camila Mariana Ruiz"
"Vicente Araujo Mendes"	"Faculdade de Matematica"	"Admilson Lopes dos Santos"
"Alexandre Oliveira Rodrigues"	"Faculdade de Matematica"	"Adriana Rodrigues da Silva"
"Vinicius Ribeiro"	"Faculdade de Odontologia"	"Adriano Mota Loyola"
"César Bertolin"	"Faculdade de Odontologia"	"Alessandra Maia de Castro Prado"
"Bruno José"	"Faculdade de Odontologia"	"Álex Moreira Herval"
"Elaine Maria"	"Faculdade de Odontologia"	"Ana Paula Turrioni Hidalgo"
"Carlos Silva"	"Faculdade de Odontologia"	"Ana Paula de Lima Oliveira"
"Isabella Melo Sousa"	"Instituto de Artes"	"Belchior de Sousa"
"Jose Almeida Azevedo"	"Instituto de Artes"	"Elsieni Coelho da Silva"
"Aline Oliveira Araujo"	"Instituto de Artes"	"Belchior de Sousa"
"Andre Silva Martins"	"Instituto de Artes"	"Gastao da Cunha Frota"
"Lavinia Sousa Carvalho"	"Instituto de Artes"	"Belchior de Sousa"
"Victor Guilherme Oliveira Santos"	"Escola Técnica de Saúde"	"Adriana Pastorello Buim Arena"
"Sara Pelegrineti de José"	"Escola Técnica de Saúde"	"Aldeci Cacique Calixto"
"Davi Rui Pasquim"	"Escola Técnica de Saúde"	"Aléxia Pádua Franco"
"Diego Ruas"	"Escola Técnica de Saúde"	"Ana Beatriz da Silva Duarte"
"Pedro Tiene Silva"	"Escola Técnica de Saúde"	"Andrea Maturano Longarezi"
"Jason Manmoa"	"Faculdade de Educação Física"	"Jailson Mendes"
"Scott Pilgrim"	"Faculdade de Educação Física"	"Gabriel Jesus"
"Naruto Uzumaki"	"Faculdade de Educação Física"	"Gabriel Jesus"
"Frederico Krueger"	"Faculdade de Educação Física"	"João Guilherme"
"Jason Thirtenn"	"Faculdade de Educação Física"	"João Guilherme"
"Aline Ferreira Magalhaes"	"Instituto de Filosofia"	"Alcino Eduardo Bonella"
"Cristiano Bueno de Almeida"	"Instituto de Filosofia"	"Alcino Eduardo Bonella"
"Derli Luis Arantes Junior"	"Instituto de Filosofia"	"Anselmo Tadeu Ferreira"
"Gladston Marcelo Pereira do Vale"	"Instituto de Filosofia"	"Anselmo Tadeu Ferreira"
"Kamila Stephany Alves Santos"	"Instituto de Filosofia"	"Ana Maria Said"
"Alexandre Borba Chiqueta"	"Faculdade da Computação"	"Gina Maira"
"Flávio Fernandes"	"Faculdade da Computação"	"Gina Maira"
"Gabrel Toledo"	"Faculdade da Computação"	"Rivalino Matias Júnior"
"Nicolas Paolinelli"	"Faculdade da Computação"	"Gina Maira"
"Matheus Brasileiro Aguiar"	"Faculdade da Computação"	"Bruno Augusto Nassif Travençolo"
"Pedro Nunes"	"Faculdade de Medicina Veterinária"	"Kelly Aparecida Geraldo Yoneyama Tudini"
"Maria Ferreira"	"Faculdade de Medicina Veterinária"	"Neide Maria da Silva "
"Elaine Ribeiro de Faria Paiva"	"Faculdade de Direito"	"Daniela de Melo Crosara"
"Fernando Souza"	"Faculdade de Direito"	"Daniela de Melo Crosara"
"Rafael Silva"	"Faculdade de Direito"	"Fernando Rodrigues Martins"
"João Marcos Ramos"	"Faculdade de Direito"	"Fernando Rodrigues Martins"
"Marcos Estefam"	"Faculdade de Direito"	"Fernando Rodrigues Martins"
"Neil Gaiman"	"Instituto de Física"	"Ademir Cavalheiro"
"Robert Louis Stevenson"	"Instituto de Física"	"Adevailton Bernardo dos Santos"
"Anne Rice"	"Instituto de Física"	"Alessandra Riposati Arantes"
"Bram Stocker"	"Instituto de Física"	"Alessandra Riposati Arantes"
"Marry Shelley"	"Instituto de Física"	"Djalmir Nestor Messias"
"Peter Benjamin Parker"	"Instituto de Ciências Biomédicas"	"Disney Oliver"
"Peter Kavinsky"	"Instituto de Ciências Biomédicas"	"Henrique Tomaz Gonzaga"
"Lara Jean"	"Instituto de Ciências Biomédicas"	"Alberto da Silva Morais"
"Percy Jackson"	"Instituto de Ciências Biomédicas"	"Daniela Cristina de Oliveira"
"Veronica Lodge"	"Instituto de Ciências Biomédicas"	"Carlos Hernrique Gomes"
"Annelise Salem"	"Instituto de Ciências Agrárias"	"Jamil Salem"
"Gabriel Hugo Borges"	"Instituto de Ciências Agrárias"	"Julia Vingadora"
"Gustavo Duarte Gomides"	"Escola Técnica de Saúde"	"Tatiana Carneiro de Resende"
"Rodrigo Alves da Silva"	"Escola Técnica de Saúde"	"Lilian Rodrigues Sant’ Anna Campos"
"Julia Echeverria"	"Escola Técnica de Saúde"	"Marisa Aparecida Elias"
"Guilherme Duarte"	"Escola Técnica de Saúde"	"Tatiana Carneiro de Resende"
"Rodrigo da Silva"	"Escola Técnica de Saúde"	"Lilian Rodrigues Sant’ Anna Campos"
"Rafael Henrique Guimarães"	"Faculdade de Ciencias Integradas de Pontal"	"Alex Fernando Borges"
"Felipe Langer"	"Faculdade de Ciencias Integradas de Pontal"	"Alex Fernando Borges"
"Lucas Daniel Cunha"	"Faculdade de Ciencias Integradas de Pontal"	"Alexandre Alves Alvenha"
"Laura Rezende Teixeira Santos"	"Faculdade de Ciencias Integradas de Pontal"	"Alexandre Cacheffo"
"Mariana Serrano Guimaraes"	"Faculdade de Ciencias Integradas de Pontal"	"Alexandre Calzavara Yoshida"
*/

-- 13) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS TABELAS 
-- >> *Atenção: colocar a condição de junção no FROM e demais condição no WHERE*
     --- (a) Liste o nome de todas as disciplinas juntamente com o nome das suas respectivas faculdades
SELECT disciplina.nome as nome_faculdade, faculdade.nome as nome_disciplina
FROM disciplina 
INNER JOIN faculdade 
		ON disciplina.fac_disc=faculdade.sigla;
/*
"nome_faculdade"	"nome_disciplina"
"Comportamento Motor "	"Faculdade de Educação Física"
"Programação Procedimental"	"Faculdade da Computação"
"Algoritmo e Estrutura de Dados 1"	"Faculdade da Computação"
"Algoritmo e Estrutura de Dados 2"	"Faculdade da Computação"
"Programação Orientada a Objetos"	"Faculdade da Computação"
"Lógica"	"Faculdade da Computação"
"Lógica para Programação"	"Faculdade da Computação"
"Cálculo 1"	"Faculdade da Computação"
"Arquitetura e Organização de Computadores"	"Faculdade da Computação"
"Bioquímica 1"	"Faculdade de Medicina Veterinária"
"Bioquímica 2"	"Faculdade de Medicina Veterinária"
"Fundamentos de Anatomia Veterinária"	"Faculdade de Medicina Veterinária"
"Anatomia dos Animais Domésticos"	"Faculdade de Medicina Veterinária"
"Citologia, Histologia e Embriologia"	"Faculdade de Medicina Veterinária"
"Filosofia Geral: Problemas Metafísicos"	"Instituto de Filosofia"
"História da Filosofia Medieval"	"Instituto de Filosofia"
"Ética"	"Instituto de Filosofia"
"Psicologia da Educação"	"Instituto de Filosofia"
"Didática Geral"	"Instituto de Filosofia"
"Etica II"	"Instituto de Filosofia"
"Didática Geral II"	"Instituto de Filosofia"
"Historia da Arte I"	"Instituto de Artes"
"Historia da Arte II"	"Instituto de Artes"
"Arte Contemporanea I"	"Instituto de Artes"
"Arte Contemporanea II"	"Instituto de Artes"
"Arte Computacional"	"Instituto de Artes"
"Avaliação de Impactos Ambiental para Biólogos"	"Instituto de Biologia"
"Biologia e Cultura - (PROINTER III)"	"Instituto de Biologia"
"Construção do Conhecimento Científico"	"Instituto de Biologia"
"Evolução"	"Instituto de Biologia"
"Profissão Biólogo"	"Instituto de Biologia"
"Teoria do Direito"	"Faculdade de Direito"
"Direito Digital"	"Faculdade de Direito"
"Direito do Trabalho 1"	"Faculdade de Direito"
"Direito do Trabalho 2"	"Faculdade de Direito"
"Direito Financeiro"	"Faculdade de Direito"
"Física Básica I"	"Instituto de Física"
"Física Básica II"	"Instituto de Física"
"Física Básica III"	"Instituto de Física"
"Geometrica Analítica"	"Instituto de Física"
"Algoritmos e Programação de Computadores"	"Instituto de Física"
"Analises Clinicas"	"Instituto de Ciências Biomédicas"
"Imunologia"	"Instituto de Ciências Biomédicas"
"Genetica"	"Instituto de Ciências Biomédicas"
"Microbiologia"	"Instituto de Ciências Biomédicas"
"Biossegurança"	"Instituto de Ciências Biomédicas"
"Construções Rurais"	"Instituto de Ciências Agrárias"
"Adubos e Adubação"	"Instituto de Ciências Agrárias"
"Manejo e Conservação do Solo e da Água"	"Instituto de Ciências Agrárias"
"Irrigação e Drenagem"	"Instituto de Ciências Agrárias"
"Agrometeorologia"	"Instituto de Ciências Agrárias"
"Fundamentos em Enfermagem"	"Escola Técnica de Saúde"
"Saúde Coletiva I"	"Escola Técnica de Saúde"
"Saúde Coletiva II"	"Escola Técnica de Saúde"
"Enfermagem Médica"	"Escola Técnica de Saúde"
"Psicologia e Ética"	"Escola Técnica de Saúde"
"Geologia 1"	"Faculdade de Ciencias Integradas de Pontal"
"Climatologia 1"	"Faculdade de Ciencias Integradas de Pontal"
"Teoria e método em Geografia"	"Faculdade de Ciencias Integradas de Pontal"
"Cartografia"	"Faculdade de Ciencias Integradas de Pontal"
"PIPE 1"	"Faculdade de Ciencias Integradas de Pontal"
"Geologia 2"	"Faculdade de Ciencias Integradas de Pontal"
"Climatologia 2"	"Faculdade de Ciencias Integradas de Pontal"
"Fundamentos de Matemática Elementar I"	"Faculdade de Matematica"
"Fundamentos de Matemática Elementar II"	"Faculdade de Matematica"
"Cálculo Diferencial e Integral I"	"Faculdade de Matematica"
"Cálculo Diferencial e Integral II"	"Faculdade de Matematica"
"Geometria Analitica"	"Faculdade de Matematica"
"Sistemas de Banco de Dados"	"Faculdade da Computação"
"Redes de computadores"	"Faculdade da Computação"
"Projeto e desenvolvimento 1"	"Faculdade da Computação"
"Engenharia de Software"	"Faculdade da Computação"
"Otimização"	"Faculdade da Computação"
"Unidade de Constituição do Organismo"	"Faculdade de Odontologia"
"Unidade de Funcionamento do Organismo I"	"Faculdade de Odontologia"
"Un. de Reabilitação Integral do Ap. Estomatognático I"	"Faculdade de Odontologia"
"Unidade de Investigação Científica I (UIC1)"	"Faculdade de Odontologia"
"Unidade de Saúde Humana I (USH1)"	"Faculdade de Odontologia"
"Metodologia do Ensino de Ciência"	"Escola Técnica de Saúde"
"Estágio Supervisionado I"	"Escola Técnica de Saúde"
"Construção do Discurso Escrito"	"Escola Técnica de Saúde"
"Metodologia do Ensino da Língua Portuguesa"	"Escola Técnica de Saúde"
"Filosofia da Educação"	"Escola Técnica de Saúde"
"Fisiologia do Exercício"	"Faculdade de Educação Física"
"Teoria e Prática do Treinamento I"	"Faculdade de Educação Física"
"Ritmo e Expressão"	"Faculdade de Educação Física"
"Teoria e Prática do Treinamento II"	"Faculdade de Educação Física"
*/

--- (b) Listar o nome de todas as disciplinas juntamente com todos as informações sobre suas turmas
SELECT disciplina.nome as nome_disciplina,turma.* 
FROM disciplina 
INNER JOIN turma 
		ON disciplina.codigo=turma.cod_disc;
/*
"nome_disciplina"	"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
"Agrometeorologia"	1822	"06"	20232	2023	"1805  "	"2E   "	203
"Fundamentos em Enfermagem"	920	"1A"	1	2022	"ESTES1"	"4K   "	205
"Fundamentos em Enfermagem"	921	"1B"	1	2022	"ESTES1"	"4K   "	205
"Saúde Coletiva I"	922	"1A"	1	2022	"ESTES2"	"4K   "	206
"Saúde Coletiva II"	923	"1A"	1	2022	"ESTES3"	"4K   "	207
"Enfermagem Médica"	924	"1A"	2	2022	"ESTES4"	"4K   "	206
"Psicologia e Ética"	925	"1A"	2	2022	"ESTES5"	"4K   "	207
"Climatologia 1"	511	"33"	1	2022	"GGO002"	"3K   "	101
"Climatologia 2"	512	"33"	2	2022	"GGO012"	"3K   "	101
"Geologia 1"	513	"31"	1	2021	"GGO001"	"3K   "	102
"Geologia 2"	514	"31"	2	2021	"GGO011"	"3K   "	102
"Climatologia 2"	515	"29"	2	2020	"GGO012"	"3K   "	103
"Bioquímica 1"	1300	"A "	1	2022	"GMV003"	"1BCG "	101
"Bioquímica 2"	1301	"B "	1	2022	"GMV007"	"1BCG "	102
"Fundamentos de Anatomia Veterinária"	1302	"C "	1	2022	"GMV005"	"1BCG "	103
"Anatomia dos Animais Domésticos"	1303	"D "	1	2022	"GMV006"	"1BCG "	103
"Citologia, Histologia e Embriologia"	1304	"E "	1	2022	"GMV001"	"1BCG "	102
"Fundamentos de Anatomia Veterinária"	1305	"F "	1	2022	"GMV005"	"1BCG "	103
"Avaliação de Impactos Ambiental para Biólogos"	1720	"C "	1	2022	"31505 "	"8C   "	119
"Avaliação de Impactos Ambiental para Biólogos"	1721	"D "	1	2022	"31505 "	"8C   "	119
"Biologia e Cultura - (PROINTER III)"	1722	"C "	1	2022	"39030 "	"2D   "	13
"Construção do Conhecimento Científico"	1723	"C "	1	2022	"31104 "	"8C   "	121
"Evolução"	1724	"C "	1	2022	"31602 "	"8C   "	322
"Profissão Biólogo"	1725	"C "	1	2022	"31407 "	"8C   "	123
"Filosofia Geral: Problemas Metafísicos"	1417	"A "	1	2022	"1410  "	"1U   "	204
"História da Filosofia Medieval"	1418	"A "	1	2022	"1411  "	"5O-A "	206
"Ética"	1419	"A "	1	2022	"1412  "	"5O-A "	206
"Psicologia da Educação"	1420	"A "	2	2022	"1413  "	"5O-A "	207
"Didática Geral"	1421	"A "	2	2022	"1414  "	"1U   "	204
"Didática Geral"	1422	"B "	2	2022	"1414  "	"1U   "	204
"Historia da Arte I"	10	"55"	1	2015	"GAV001"	"5S   "	207
"Historia da Arte II"	20	"57"	2	2016	"GAV007"	"5S   "	205
"Arte Contemporanea I"	30	"59"	1	2017	"GAV013"	"5S   "	208
"Arte Contemporanea II"	40	"61"	2	2018	"GAV019"	"5S   "	207
"Arte Computacional"	50	"63"	1	2019	"GAV010"	"5S   "	205
"Fundamentos de Matemática Elementar I"	218	"A "	1	2018	"MAT201"	"1F   "	215
"Fundamentos de Matemática Elementar II"	219	"B "	2	2019	"MAT211"	"1F   "	216
"Cálculo Diferencial e Integral I"	220	"C "	3	2020	"MAT212"	"1F   "	217
"Cálculo Diferencial e Integral II"	221	"D "	4	2021	"MAT213"	"1F   "	215
"Geometria Analitica"	222	"E "	5	2022	"MAT214"	"1F   "	216
"Geometria Analitica"	223	"F "	6	2022	"MAT214"	"1F   "	216
"Sistemas de Banco de Dados"	1	"01"	1	2022	"GBC043"	"1BBSI"	127
"Sistemas de Banco de Dados"	2	"02"	2	2022	"GBC043"	"1BBSI"	127
"Redes de computadores"	3	"03"	2	2022	"GSI023"	"1BBSI"	128
"Projeto e desenvolvimento 1"	4	"04"	2	2022	"GSI034"	"1BBSI"	129
"Otimização"	5	"05"	2	2022	"GSI027"	"1BBSI"	128
"Unidade de Constituição do Organismo"	1500	"17"	12022	2022	"GOG001"	"UMU4L"	39
"Unidade de Constituição do Organismo"	1501	"17"	12021	2021	"GOG001"	"UMU4L"	39
"Unidade de Funcionamento do Organismo I"	1502	"18"	22021	2021	"GOG002"	"UMU3L"	38
"Un. de Reabilitação Integral do Ap. Estomatognático I"	1503	"19"	22022	2022	"GOG003"	"UMU4L"	39
"Unidade de Investigação Científica I (UIC1)"	1504	"20"	12023	2023	"GOG004"	"UMU1L"	37
"Metodologia do Ensino de Ciência"	430	"65"	2	2020	"410   "	"1G   "	101
"Metodologia do Ensino de Ciência"	431	"66"	1	2020	"410   "	"1G   "	101
"Estágio Supervisionado I"	432	"67"	2	2020	"411   "	"1G   "	102
"Construção do Discurso Escrito"	433	"68"	1	2021	"412   "	"1G   "	103
"Metodologia do Ensino da Língua Portuguesa"	434	"69"	2	2021	"413   "	"1G   "	104
"Fisiologia do Exercício"	400	"00"	2	1982	"GEDU31"	"1A   "	490
"Teoria e Prática do Treinamento I"	401	"01"	1	1983	"GEDU32"	"1A   "	490
"Ritmo e Expressão"	402	"02"	2	1983	"GEDU41"	"1A   "	491
"Teoria e Prática do Treinamento II"	403	"03"	2	1990	"GEDU42"	"1A   "	491
"Comportamento Motor "	404	"04"	2	1995	"GEDU43"	"1A   "	492
"Comportamento Motor "	405	"05"	2	1995	"GEDU43"	"1A   "	492
"Programação Orientada a Objetos"	155	"63"	2	2020	"GBC034"	"1B   "	204
"Programação Orientada a Objetos"	154	"64"	1	2021	"GBC034"	"1B   "	203
"Algoritmo e Estrutura de Dados 2"	153	"65"	2	2021	"GBC024"	"5R   "	103
"Algoritmo e Estrutura de Dados 1"	152	"66"	1	2022	"GBC023"	"5R   "	103
"Programação Procedimental"	151	"67"	2	2022	"GBC045"		
"Teoria do Direito"	650	"D1"	2	2022	"FADIR3"	"3D   "	102
"Direito Digital"	651	"D1"	2	2020	"FADIR4"	"3D   "	104
"Direito do Trabalho 1"	652	"D2"	1	2021	"FADIR5"	"3D   "	104
"Direito do Trabalho 2"	653	"D3"	2	2022	"FADIR6"		
"Direito do Trabalho 2"	654	"D4"	1	2022	"FADIR6"		
"Física Básica I"	315	"A1"	2	2020	"310   "	"1X   "	2
"Física Básica I"	316	"A2"	2	2020	"310   "	"1X   "	2
"Física Básica II"	317	"B1"	3	2020	"311   "	"1X   "	3
"Física Básica III"	318	"C1"	4	2021	"312   "	"1X   "	1
"Geometrica Analítica"	319	"D1"	1	2021	"313   "	"1X   "	1
"Algoritmos e Programação de Computadores"	320	"E1"	4	2021	"314   "	"1X   "	1
"Analises Clinicas"	2015	"A "	1	2022	"2000  "	"2A   "	1
"Imunologia"	2016	"B "	1	2022	"2001  "	"2A   "	2
"Genetica"	2017	"C "	1	2022	"2002  "	"2A   "	3
"Microbiologia"	2018	"D "	1	2022	"2003  "	"2A   "	4
"Biossegurança"	2019	"E "	1	2022	"2004  "	"2A   "	5
"Biossegurança"	2020	"F "	1	2022	"2004  "	"2A   "	6
"Construções Rurais"	1817	"01"	20211	2021	"1801  "	"2E   "	201
"Construções Rurais"	1818	"02"	20212	2021	"1801  "	"2E   "	201
"Manejo e Conservação do Solo e da Água"	1819	"03"	20221	2022	"1803  "	"2E   "	201
"Irrigação e Drenagem"	1820	"04"	20222	2022	"1804  "	"2E   "	202
"Adubos e Adubação"	1821	"05"	20231	2023	"1802  "	"2E   "	202
*/

--- (c) Listar o nome do aluno e o nome de seu tutor
SELECT estudante.nome as nome_estudante, professor.nome as nome_professor
FROM estudante 
INNER JOIN professor 
	ON estudante.tutor=professor.id;
/*
"nome_estudante"	"nome_professor"
"Pedro Henrique Silva"	"Marcelo Keese Albertini"
"Gabriel Borges Júnior"	"Rivalino Matias Júnior"
"Amanda Gomes de Oliveira"	"André Backes"
"Jorge Antônio Santos"	"Bruno Augusto Nassif Travençolo"
"Bruna Tobias Pinto"	"Luiz Gustavo Almeida Martins"
"Jonas Caravalho"	"Ailton Gonçalves Rodrigues Junior"
"Ana Silveira"	"Jeamylle Nilin Gonçalves"
"Guilherme da Cunha"	"Ariádine Cristine de Almeida"
"Davi Lucca Duarte"	"Ailton Gonçalves Rodrigues Junior"
"Henrique Corrêa de Oliveira"	"Alexsandro Soares"
"Gabriel de Araujo"	"Pedro Frosi"
"Luisa Gomes Ferreira"	"Elaine Ribeiro"
"Gabriela Pereira"	"Jean Ponciano"
"Gabriel Alves"	"Marcia Aparecida Fernandes"
"Joao Vitor Correia"	"Taciana Oliveira Souza"
"Marina Silva Gomes"	"Fernando Rodrigo Rafaeli"
"Maria Julia Oliveira"	"Camila Mariana Ruiz"
"Vicente Araujo Mendes"	"Admilson Lopes dos Santos"
"Alexandre Oliveira Rodrigues"	"Adriana Rodrigues da Silva"
"Vinicius Ribeiro"	"Adriano Mota Loyola"
"César Bertolin"	"Alessandra Maia de Castro Prado"
"Bruno José"	"Álex Moreira Herval"
"Elaine Maria"	"Ana Paula Turrioni Hidalgo"
"Carlos Silva"	"Ana Paula de Lima Oliveira"
"Isabella Melo Sousa"	"Belchior de Sousa"
"Jose Almeida Azevedo"	"Elsieni Coelho da Silva"
"Aline Oliveira Araujo"	"Belchior de Sousa"
"Andre Silva Martins"	"Gastao da Cunha Frota"
"Lavinia Sousa Carvalho"	"Belchior de Sousa"
"Victor Guilherme Oliveira Santos"	"Adriana Pastorello Buim Arena"
"Sara Pelegrineti de José"	"Aldeci Cacique Calixto"
"Davi Rui Pasquim"	"Aléxia Pádua Franco"
"Diego Ruas"	"Ana Beatriz da Silva Duarte"
"Pedro Tiene Silva"	"Andrea Maturano Longarezi"
"Jason Manmoa"	"Jailson Mendes"
"Scott Pilgrim"	"Gabriel Jesus"
"Naruto Uzumaki"	"Gabriel Jesus"
"Frederico Krueger"	"João Guilherme"
"Jason Thirtenn"	"João Guilherme"
"Aline Ferreira Magalhaes"	"Alcino Eduardo Bonella"
"Cristiano Bueno de Almeida"	"Alcino Eduardo Bonella"
"Derli Luis Arantes Junior"	"Anselmo Tadeu Ferreira"
"Gladston Marcelo Pereira do Vale"	"Anselmo Tadeu Ferreira"
"Kamila Stephany Alves Santos"	"Ana Maria Said"
"Alexandre Borba Chiqueta"	"Gina Maira"
"Flávio Fernandes"	"Gina Maira"
"Gabrel Toledo"	"Rivalino Matias Júnior"
"Nicolas Paolinelli"	"Gina Maira"
"Matheus Brasileiro Aguiar"	"Bruno Augusto Nassif Travençolo"
"Pedro Nunes"	"Kelly Aparecida Geraldo Yoneyama Tudini"
"Maria Ferreira"	"Neide Maria da Silva "
"Elaine Ribeiro de Faria Paiva"	"Daniela de Melo Crosara"
"Fernando Souza"	"Daniela de Melo Crosara"
"Rafael Silva"	"Fernando Rodrigues Martins"
"João Marcos Ramos"	"Fernando Rodrigues Martins"
"Marcos Estefam"	"Fernando Rodrigues Martins"
"Neil Gaiman"	"Ademir Cavalheiro"
"Robert Louis Stevenson"	"Adevailton Bernardo dos Santos"
"Anne Rice"	"Alessandra Riposati Arantes"
"Bram Stocker"	"Alessandra Riposati Arantes"
"Marry Shelley"	"Djalmir Nestor Messias"
"Peter Benjamin Parker"	"Disney Oliver"
"Peter Kavinsky"	"Henrique Tomaz Gonzaga"
"Lara Jean"	"Alberto da Silva Morais"
"Percy Jackson"	"Daniela Cristina de Oliveira"
"Veronica Lodge"	"Carlos Hernrique Gomes"
"Annelise Salem"	"Jamil Salem"
"Gabriel Hugo Borges"	"Julia Vingadora"
"Gustavo Duarte Gomides"	"Tatiana Carneiro de Resende"
"Rodrigo Alves da Silva"	"Lilian Rodrigues Sant’ Anna Campos"
"Julia Echeverria"	"Marisa Aparecida Elias"
"Guilherme Duarte"	"Tatiana Carneiro de Resende"
"Rodrigo da Silva"	"Lilian Rodrigues Sant’ Anna Campos"
"Rafael Henrique Guimarães"	"Alex Fernando Borges"
"Felipe Langer"	"Alex Fernando Borges"
"Lucas Daniel Cunha"	"Alexandre Alves Alvenha"
"Laura Rezende Teixeira Santos"	"Alexandre Cacheffo"
"Mariana Serrano Guimaraes"	"Alexandre Calzavara Yoshida"
*/

 --- (d) Listas os nomes das disciplinas que tiveram turmas ofertadas no semestre atual (ano-semestre)
SELECT disciplina.nome, turma.ano, turma.semestre 
FROM disciplina 
INNER JOIN turma 
		ON turma.ano=2022 
		AND turma.semestre=2 
		AND turma.cod_disc=disciplina.codigo;
/*
"nome"	"ano"	"semestre"
"Programação Procedimental"	2022	2
"Psicologia da Educação"	2022	2
"Didática Geral"	2022	2
"Didática Geral"	2022	2
"Teoria do Direito"	2022	2
"Direito do Trabalho 2"	2022	2
"Enfermagem Médica"	2022	2
"Psicologia e Ética"	2022	2
"Climatologia 2"	2022	2
"Sistemas de Banco de Dados"	2022	2
"Redes de computadores"	2022	2
"Projeto e desenvolvimento 1"	2022	2
"Otimização"	2022	2
*/

--- (e) Listar o *nome* da disciplina e o *código* da(s) disciplina(s) que são seu pré-requisito
SELECT disciplina.nome as nome_disciplina_regente, pre_requisito.cod_pre as cod_pre_requisito
FROM disciplina 
INNER JOIN pre_requisito 
		ON disciplina.codigo = pre_requisito.cod_disc;
/*
"nome_disciplina_regente"	"cod_pre_requisito"
"Comportamento Motor "	"GEDU31"
"Algoritmo e Estrutura de Dados 1"	"GBC045"
"Algoritmo e Estrutura de Dados 2"	"GBC023"
"Bioquímica 2"	"GMV003"
"Anatomia dos Animais Domésticos"	"GMV005"
"Etica II"	"1412  "
"Didática Geral II"	"1414  "
"Historia da Arte II"	"GAV001"
"Arte Contemporanea II"	"GAV013"
"Direito Digital"	"FADIR3"
"Direito do Trabalho 2"	"FADIR5"
"Física Básica II"	"310   "
"Física Básica III"	"311   "
"Imunologia"	"2000  "
"Microbiologia"	"2002  "
"Agrometeorologia"	"1803  "
"Agrometeorologia"	"1804  "
"Saúde Coletiva II"	"ESTES2"
"Enfermagem Médica"	"ESTES1"
"Geologia 2"	"GGO001"
"Climatologia 2"	"GGO002"
"Fundamentos de Matemática Elementar II"	"MAT201"
"Cálculo Diferencial e Integral II"	"MAT212"
"Projeto e desenvolvimento 1"	"GBC043"
"Unidade de Saúde Humana I (USH1)"	"GOG001"
"Teoria e Prática do Treinamento II"	"GEDU32"
*/

--- (f) Listar o *nome* das disciplinas que são pré-requisito juntamente com os *códigos* das disciplinas que
     ---	 dependem delas
SELECT disciplina.nome, pre_requisito.cod_disc 
FROM disciplina 
INNER JOIN pre_requisito 
		ON disciplina.codigo = pre_requisito.cod_pre;
/*
"nome"	"cod_disc"
"Programação Procedimental"	"GBC023"
"Algoritmo e Estrutura de Dados 1"	"GBC024"
"Bioquímica 1"	"GMV007"
"Fundamentos de Anatomia Veterinária"	"GMV006"
"Ética"	"1415  "
"Didática Geral"	"1416  "
"Historia da Arte I"	"GAV007"
"Arte Contemporanea I"	"GAV019"
"Teoria do Direito"	"FADIR4"
"Direito do Trabalho 1"	"FADIR6"
"Física Básica I"	"311   "
"Física Básica II"	"312   "
"Analises Clinicas"	"2001  "
"Genetica"	"2003  "
"Manejo e Conservação do Solo e da Água"	"1805  "
"Irrigação e Drenagem"	"1805  "
"Fundamentos em Enfermagem"	"ESTES4"
"Saúde Coletiva I"	"ESTES3"
"Geologia 1"	"GGO011"
"Climatologia 1"	"GGO012"
"Fundamentos de Matemática Elementar I"	"MAT211"
"Cálculo Diferencial e Integral I"	"MAT213"
"Sistemas de Banco de Dados"	"GSI034"
"Unidade de Constituição do Organismo"	"GOG005"
"Fisiologia do Exercício"	"GEDU43"
"Teoria e Prática do Treinamento I"	"GEDU42"
*/

-- 14) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS OU MAIS TABELAS 
-- >> *Atenção: colocar a condição de junção no FROM e demais condição no WHERE*
     --- (a) Listar o nome dos professores juntamente com o nome das disciplinas que eles ministram/ministraram 
SELECT professor.nome as nome_professor, disciplina.nome as nome_disciplina
FROM professor 
		INNER JOIN 
	ensina ON professor.id=ensina.id_prof
		INNER JOIN
	turma ON ensina.id_turma=turma.id
		INNER JOIN
	disciplina ON turma.cod_disc=disciplina.codigo;
/*
"nome_professor"	"nome_disciplina"
"Gina Maira"	"Programação Orientada a Objetos"
"Marcelo Keese Albertini"	"Programação Procedimental"
"Rivalino Matias Júnior"	"Programação Orientada a Objetos"
"André Backes"	"Algoritmo e Estrutura de Dados 1"
"Bruno Augusto Nassif Travençolo"	"Algoritmo e Estrutura de Dados 2"
"Alexandre Garrido da Silva"	"Teoria do Direito"
"Alexandre Garrido da Silva"	"Direito Digital"
"Beatriz Corrêa Camargo"	"Teoria do Direito"
"Beatriz Corrêa Camargo"	"Direito do Trabalho 1"
"Daniela de Melo Crosara"	"Direito do Trabalho 2"
"Daniela de Melo Crosara"	"Direito do Trabalho 1"
"Daniela de Melo Crosara"	"Direito do Trabalho 2"
"Fernando Rodrigues Martins"	"Direito do Trabalho 1"
"Fernando Rodrigues Martins"	"Direito do Trabalho 2"
"Fernando Rodrigues Martins"	"Direito do Trabalho 2"
"Gustavo de Carvalho Marin"	"Direito Digital"
"Gustavo de Carvalho Marin"	"Direito do Trabalho 1"
"Gustavo de Carvalho Marin"	"Direito do Trabalho 2"
"Ademir Cavalheiro"	"Física Básica I"
"Ademir Cavalheiro"	"Física Básica II"
"Adevailton Bernardo dos Santos"	"Física Básica I"
"Alessandra Riposati Arantes"	"Física Básica III"
"Djalmir Nestor Messias"	"Geometrica Analítica"
"Marcel Novaes"	"Algoritmos e Programação de Computadores"
"Alberto da Silva Morais"	"Analises Clinicas"
"Carlos Hernrique Gomes"	"Imunologia"
"Daniela Cristina de Oliveira"	"Genetica"
"Disney Oliver"	"Microbiologia"
"Henrique Tomaz Gonzaga"	"Biossegurança"
"Jamil Salem"	"Construções Rurais"
"Jamil Salem"	"Construções Rurais"
"Julia Vingadora"	"Manejo e Conservação do Solo e da Água"
"Roberto Carlos"	"Irrigação e Drenagem"
"Cláudio Assembly"	"Adubos e Adubação"
"Elaine Java"	"Agrometeorologia"
"Lilian Rodrigues Sant’ Anna Campos"	"Fundamentos em Enfermagem"
"Clelia Regina Cafer"	"Fundamentos em Enfermagem"
"Marisa Aparecida Elias"	"Saúde Coletiva I"
"Marisa Aparecida Elias"	"Saúde Coletiva II"
"Barbara Dias Rezende Gontijo"	"Enfermagem Médica"
"Tatiana Carneiro de Resende"	"Psicologia e Ética"
"Alessandro Gomes Enoque"	"Climatologia 1"
"Alex Fernando Borges"	"Climatologia 2"
"Alexandre Alves Alvenha"	"Geologia 1"
"Alexandre Cacheffo"	"Geologia 2"
"Alexandre Calzavara Yoshida"	"Climatologia 2"
"Kelly Aparecida Geraldo Yoneyama Tudini"	"Bioquímica 1"
"Lucas de Assis Ribeiro"	"Bioquímica 1"
"Natália Mundim Tôrres"	"Bioquímica 2"
"Tiago Wilson Patriarca Mineo "	"Fundamentos de Anatomia Veterinária"
"Neide Maria da Silva "	"Bioquímica 1"
"Ailton Gonçalves Rodrigues Junior"	"Avaliação de Impactos Ambiental para Biólogos"
"Ariádine Cristine de Almeida"	"Biologia e Cultura - (PROINTER III)"
"Ariádine Cristine de Almeida"	"Construção do Conhecimento Científico"
"Cassiano Aimberê Dorneles Welker"	"Profissão Biólogo"
"Giuliano Buzá Jacobucci"	"Avaliação de Impactos Ambiental para Biólogos"
"Alcino Eduardo Bonella"	"Filosofia Geral: Problemas Metafísicos"
"Alexandre Guimarães Tadeu de Soares"	"Ética"
"Ana Maria Said"	"Filosofia Geral: Problemas Metafísicos"
"Anselmo Tadeu Ferreira"	"História da Filosofia Medieval"
"Dennys Garcia Xavier"	"Ética"
"Belchior de Sousa"	"Historia da Arte I"
"Elsieni Coelho da Silva"	"Historia da Arte II"
"Gastao da Cunha Frota"	"Arte Contemporanea I"
"Elsieni Coelho da Silva"	"Arte Contemporanea II"
"Renato Palumbo Doria"	"Arte Computacional"
"Admilson Lopes dos Santos"	"Fundamentos de Matemática Elementar I"
"Adriana Rodrigues da Silva"	"Fundamentos de Matemática Elementar II"
"Camila Mariana Ruiz"	"Cálculo Diferencial e Integral I"
"Fernando Rodrigo Rafaeli"	"Cálculo Diferencial e Integral II"
"Taciana Oliveira Souza"	"Geometria Analitica"
"Taciana Oliveira Souza"	"Geometria Analitica"
"Jean Ponciano"	"Sistemas de Banco de Dados"
"Elaine Ribeiro"	"Redes de computadores"
"Alexsandro Soares"	"Projeto e desenvolvimento 1"
"Pedro Frosi"	"Otimização"
"Marcia Aparecida Fernandes"	"Redes de computadores"
"Adriano Mota Loyola"	"Unidade de Constituição do Organismo"
"Alessandra Maia de Castro Prado"	"Unidade de Constituição do Organismo"
"Adriana Pastorello Buim Arena"	"Metodologia do Ensino de Ciência"
"Aldeci Cacique Calixto"	"Metodologia do Ensino de Ciência"
"Aléxia Pádua Franco"	"Estágio Supervisionado I"
"Ana Beatriz da Silva Duarte"	"Construção do Discurso Escrito"
"Andrea Maturano Longarezi"	"Metodologia do Ensino da Língua Portuguesa"
"Jailson Mendes"	"Fisiologia do Exercício"
"Gabriel Jesus"	"Teoria e Prática do Treinamento I"
"Luciano Hulk"	"Ritmo e Expressão"
"João Guilherme"	"Teoria e Prática do Treinamento II"
"Péricles Mendes"	"Comportamento Motor "
*/

--- (b) Listar o nome dos professores juntamente com o nome das disciplinas que eles ministram neste semestre (ano-semestre)
SELECT professor.nome as nome_professor, disciplina.nome as nome_disciplina
FROM professor
		INNER JOIN 
	ensina ON professor.id=ensina.id_prof
		INNER JOIN 
	turma ON ensina.id_turma=turma.id
		INNER JOIN 
	disciplina ON turma.cod_disc=disciplina.codigo 
		WHERE semestre=2 AND ano=2022;
/*
"nome_professor"	"nome_disciplina"
"Marcelo Keese Albertini"	"Programação Procedimental"
"Beatriz Corrêa Camargo"	"Teoria do Direito"
"Alexandre Garrido da Silva"	"Teoria do Direito"
"Fernando Rodrigues Martins"	"Direito do Trabalho 2"
"Daniela de Melo Crosara"	"Direito do Trabalho 2"
"Barbara Dias Rezende Gontijo"	"Enfermagem Médica"
"Tatiana Carneiro de Resende"	"Psicologia e Ética"
"Alex Fernando Borges"	"Climatologia 2"
"Jean Ponciano"	"Sistemas de Banco de Dados"
"Marcia Aparecida Fernandes"	"Redes de computadores"
"Elaine Ribeiro"	"Redes de computadores"
"Alexsandro Soares"	"Projeto e desenvolvimento 1"
"Pedro Frosi"	"Otimização"
*/

--- (c) Listar os nomes das disciplinas que são ofertadas (possuem turmas) em salas com capacidade superior a 10 lugares
SELECT nome as nome_disciplina
FROM disciplina
		INNER JOIN
	turma ON disciplina.codigo=turma.cod_disc
		INNER JOIN 
	sala ON turma.predio_s=sala.predio AND turma.n_sala=sala.numero
		WHERE sala.capacidade>10;
/*
"nome_disciplina"
"Comportamento Motor "
"Comportamento Motor "
"Algoritmo e Estrutura de Dados 1"
"Algoritmo e Estrutura de Dados 2"
"Programação Orientada a Objetos"
"Programação Orientada a Objetos"
"Bioquímica 1"
"Bioquímica 2"
"Fundamentos de Anatomia Veterinária"
"Fundamentos de Anatomia Veterinária"
"Anatomia dos Animais Domésticos"
"Citologia, Histologia e Embriologia"
"Filosofia Geral: Problemas Metafísicos"
"História da Filosofia Medieval"
"Ética"
"Psicologia da Educação"
"Didática Geral"
"Didática Geral"
"Historia da Arte I"
"Historia da Arte II"
"Arte Contemporanea I"
"Arte Contemporanea II"
"Arte Computacional"
"Avaliação de Impactos Ambiental para Biólogos"
"Avaliação de Impactos Ambiental para Biólogos"
"Biologia e Cultura - (PROINTER III)"
"Construção do Conhecimento Científico"
"Evolução"
"Profissão Biólogo"
"Teoria do Direito"
"Direito Digital"
"Direito do Trabalho 1"
"Física Básica I"
"Física Básica I"
"Física Básica II"
"Física Básica III"
"Geometrica Analítica"
"Algoritmos e Programação de Computadores"
"Analises Clinicas"
"Imunologia"
"Genetica"
"Microbiologia"
"Biossegurança"
"Biossegurança"
"Construções Rurais"
"Construções Rurais"
"Adubos e Adubação"
"Manejo e Conservação do Solo e da Água"
"Irrigação e Drenagem"
"Agrometeorologia"
"Fundamentos em Enfermagem"
"Fundamentos em Enfermagem"
"Saúde Coletiva I"
"Saúde Coletiva II"
"Enfermagem Médica"
"Psicologia e Ética"
"Geologia 1"
"Climatologia 1"
"Geologia 2"
"Climatologia 2"
"Climatologia 2"
"Fundamentos de Matemática Elementar I"
"Fundamentos de Matemática Elementar II"
"Cálculo Diferencial e Integral I"
"Cálculo Diferencial e Integral II"
"Geometria Analitica"
"Geometria Analitica"
"Sistemas de Banco de Dados"
"Sistemas de Banco de Dados"
"Redes de computadores"
"Projeto e desenvolvimento 1"
"Otimização"
"Unidade de Constituição do Organismo"
"Unidade de Constituição do Organismo"
"Unidade de Funcionamento do Organismo I"
"Un. de Reabilitação Integral do Ap. Estomatognático I"
"Unidade de Investigação Científica I (UIC1)"
"Metodologia do Ensino de Ciência"
"Metodologia do Ensino de Ciência"
"Estágio Supervisionado I"
"Construção do Discurso Escrito"
"Metodologia do Ensino da Língua Portuguesa"
"Fisiologia do Exercício"
"Teoria e Prática do Treinamento I"
"Ritmo e Expressão"
"Teoria e Prática do Treinamento II"
*/

--- (d) Listar o nome do estudante juntamente com o nome de sua faculdade e com o nome do seu professor tutor
SELECT estudante.nome as nome_estudante, faculdade.nome as nome_faculdade, professor.nome as nome_professor
FROM estudante
		INNER JOIN
	faculdade ON estudante.fac_est=faculdade.sigla
		INNER JOIN
	professor ON estudante.tutor=professor.id;
/*
"nome_estudante"	"nome_faculdade"	"nome_professor"
"Pedro Henrique Silva"	"Faculdade da Computação"	"Marcelo Keese Albertini"
"Gabriel Borges Júnior"	"Faculdade da Computação"	"Rivalino Matias Júnior"
"Amanda Gomes de Oliveira"	"Faculdade da Computação"	"André Backes"
"Jorge Antônio Santos"	"Faculdade da Computação"	"Bruno Augusto Nassif Travençolo"
"Bruna Tobias Pinto"	"Faculdade da Computação"	"Luiz Gustavo Almeida Martins"
"Jonas Caravalho"	"Instituto de Biologia"	"Ailton Gonçalves Rodrigues Junior"
"Ana Silveira"	"Instituto de Biologia"	"Jeamylle Nilin Gonçalves"
"Guilherme da Cunha"	"Instituto de Biologia"	"Ariádine Cristine de Almeida"
"Davi Lucca Duarte"	"Instituto de Biologia"	"Ailton Gonçalves Rodrigues Junior"
"Henrique Corrêa de Oliveira"	"Faculdade da Computação"	"Alexsandro Soares"
"Gabriel de Araujo"	"Faculdade da Computação"	"Pedro Frosi"
"Luisa Gomes Ferreira"	"Faculdade da Computação"	"Elaine Ribeiro"
"Gabriela Pereira"	"Faculdade da Computação"	"Jean Ponciano"
"Gabriel Alves"	"Faculdade da Computação"	"Marcia Aparecida Fernandes"
"Joao Vitor Correia"	"Faculdade de Matematica"	"Taciana Oliveira Souza"
"Marina Silva Gomes"	"Faculdade de Matematica"	"Fernando Rodrigo Rafaeli"
"Maria Julia Oliveira"	"Faculdade de Matematica"	"Camila Mariana Ruiz"
"Vicente Araujo Mendes"	"Faculdade de Matematica"	"Admilson Lopes dos Santos"
"Alexandre Oliveira Rodrigues"	"Faculdade de Matematica"	"Adriana Rodrigues da Silva"
"Vinicius Ribeiro"	"Faculdade de Odontologia"	"Adriano Mota Loyola"
"César Bertolin"	"Faculdade de Odontologia"	"Alessandra Maia de Castro Prado"
"Bruno José"	"Faculdade de Odontologia"	"Álex Moreira Herval"
"Elaine Maria"	"Faculdade de Odontologia"	"Ana Paula Turrioni Hidalgo"
"Carlos Silva"	"Faculdade de Odontologia"	"Ana Paula de Lima Oliveira"
"Isabella Melo Sousa"	"Instituto de Artes"	"Belchior de Sousa"
"Jose Almeida Azevedo"	"Instituto de Artes"	"Elsieni Coelho da Silva"
"Aline Oliveira Araujo"	"Instituto de Artes"	"Belchior de Sousa"
"Andre Silva Martins"	"Instituto de Artes"	"Gastao da Cunha Frota"
"Lavinia Sousa Carvalho"	"Instituto de Artes"	"Belchior de Sousa"
"Victor Guilherme Oliveira Santos"	"Escola Técnica de Saúde"	"Adriana Pastorello Buim Arena"
"Sara Pelegrineti de José"	"Escola Técnica de Saúde"	"Aldeci Cacique Calixto"
"Davi Rui Pasquim"	"Escola Técnica de Saúde"	"Aléxia Pádua Franco"
"Diego Ruas"	"Escola Técnica de Saúde"	"Ana Beatriz da Silva Duarte"
"Pedro Tiene Silva"	"Escola Técnica de Saúde"	"Andrea Maturano Longarezi"
"Jason Manmoa"	"Faculdade de Educação Física"	"Jailson Mendes"
"Scott Pilgrim"	"Faculdade de Educação Física"	"Gabriel Jesus"
"Naruto Uzumaki"	"Faculdade de Educação Física"	"Gabriel Jesus"
"Frederico Krueger"	"Faculdade de Educação Física"	"João Guilherme"
"Jason Thirtenn"	"Faculdade de Educação Física"	"João Guilherme"
"Aline Ferreira Magalhaes"	"Instituto de Filosofia"	"Alcino Eduardo Bonella"
"Cristiano Bueno de Almeida"	"Instituto de Filosofia"	"Alcino Eduardo Bonella"
"Derli Luis Arantes Junior"	"Instituto de Filosofia"	"Anselmo Tadeu Ferreira"
"Gladston Marcelo Pereira do Vale"	"Instituto de Filosofia"	"Anselmo Tadeu Ferreira"
"Kamila Stephany Alves Santos"	"Instituto de Filosofia"	"Ana Maria Said"
"Alexandre Borba Chiqueta"	"Faculdade da Computação"	"Gina Maira"
"Flávio Fernandes"	"Faculdade da Computação"	"Gina Maira"
"Gabrel Toledo"	"Faculdade da Computação"	"Rivalino Matias Júnior"
"Nicolas Paolinelli"	"Faculdade da Computação"	"Gina Maira"
"Matheus Brasileiro Aguiar"	"Faculdade da Computação"	"Bruno Augusto Nassif Travençolo"
"Pedro Nunes"	"Faculdade de Medicina Veterinária"	"Kelly Aparecida Geraldo Yoneyama Tudini"
"Maria Ferreira"	"Faculdade de Medicina Veterinária"	"Neide Maria da Silva "
"Elaine Ribeiro de Faria Paiva"	"Faculdade de Direito"	"Daniela de Melo Crosara"
"Fernando Souza"	"Faculdade de Direito"	"Daniela de Melo Crosara"
"Rafael Silva"	"Faculdade de Direito"	"Fernando Rodrigues Martins"
"João Marcos Ramos"	"Faculdade de Direito"	"Fernando Rodrigues Martins"
"Marcos Estefam"	"Faculdade de Direito"	"Fernando Rodrigues Martins"
"Neil Gaiman"	"Instituto de Física"	"Ademir Cavalheiro"
"Robert Louis Stevenson"	"Instituto de Física"	"Adevailton Bernardo dos Santos"
"Anne Rice"	"Instituto de Física"	"Alessandra Riposati Arantes"
"Bram Stocker"	"Instituto de Física"	"Alessandra Riposati Arantes"
"Marry Shelley"	"Instituto de Física"	"Djalmir Nestor Messias"
"Peter Benjamin Parker"	"Instituto de Ciências Biomédicas"	"Disney Oliver"
"Peter Kavinsky"	"Instituto de Ciências Biomédicas"	"Henrique Tomaz Gonzaga"
"Lara Jean"	"Instituto de Ciências Biomédicas"	"Alberto da Silva Morais"
"Percy Jackson"	"Instituto de Ciências Biomédicas"	"Daniela Cristina de Oliveira"
"Veronica Lodge"	"Instituto de Ciências Biomédicas"	"Carlos Hernrique Gomes"
"Annelise Salem"	"Instituto de Ciências Agrárias"	"Jamil Salem"
"Gabriel Hugo Borges"	"Instituto de Ciências Agrárias"	"Julia Vingadora"
"Gustavo Duarte Gomides"	"Escola Técnica de Saúde"	"Tatiana Carneiro de Resende"
"Rodrigo Alves da Silva"	"Escola Técnica de Saúde"	"Lilian Rodrigues Sant’ Anna Campos"
"Julia Echeverria"	"Escola Técnica de Saúde"	"Marisa Aparecida Elias"
"Guilherme Duarte"	"Escola Técnica de Saúde"	"Tatiana Carneiro de Resende"
"Rodrigo da Silva"	"Escola Técnica de Saúde"	"Lilian Rodrigues Sant’ Anna Campos"
"Rafael Henrique Guimarães"	"Faculdade de Ciencias Integradas de Pontal"	"Alex Fernando Borges"
"Felipe Langer"	"Faculdade de Ciencias Integradas de Pontal"	"Alex Fernando Borges"
"Lucas Daniel Cunha"	"Faculdade de Ciencias Integradas de Pontal"	"Alexandre Alves Alvenha"
"Laura Rezende Teixeira Santos"	"Faculdade de Ciencias Integradas de Pontal"	"Alexandre Cacheffo"
"Mariana Serrano Guimaraes"	"Faculdade de Ciencias Integradas de Pontal"	"Alexandre Calzavara Yoshida"
*/

--- (e) Listar todas as turmas juntamente com as salas
--como as turmas já tem as salas na tabela, juntei com o que faltava da tabela 'sala' que é a capacidade
SELECT turma.*, sala.capacidade
FROM turma 
		INNER JOIN 
	sala ON turma.predio_s=sala.predio AND turma.n_sala=sala.numero;
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"	"capacidade"
1822	"06"	20232	2023	"1805  "	"2E   "	203	40
920	"1A"	1	2022	"ESTES1"	"4K   "	205	40
921	"1B"	1	2022	"ESTES1"	"4K   "	205	40
922	"1A"	1	2022	"ESTES2"	"4K   "	206	60
923	"1A"	1	2022	"ESTES3"	"4K   "	207	30
924	"1A"	2	2022	"ESTES4"	"4K   "	206	60
925	"1A"	2	2022	"ESTES5"	"4K   "	207	30
511	"33"	1	2022	"GGO002"	"3K   "	101	50
512	"33"	2	2022	"GGO012"	"3K   "	101	50
513	"31"	1	2021	"GGO001"	"3K   "	102	50
514	"31"	2	2021	"GGO011"	"3K   "	102	50
515	"29"	2	2020	"GGO012"	"3K   "	103	50
1300	"A "	1	2022	"GMV003"	"1BCG "	101	50
1301	"B "	1	2022	"GMV007"	"1BCG "	102	40
1302	"C "	1	2022	"GMV005"	"1BCG "	103	90
1303	"D "	1	2022	"GMV006"	"1BCG "	103	90
1304	"E "	1	2022	"GMV001"	"1BCG "	102	40
1305	"F "	1	2022	"GMV005"	"1BCG "	103	90
1720	"C "	1	2022	"31505 "	"8C   "	119	60
1721	"D "	1	2022	"31505 "	"8C   "	119	60
1722	"C "	1	2022	"39030 "	"2D   "	13	50
1723	"C "	1	2022	"31104 "	"8C   "	121	60
1724	"C "	1	2022	"31602 "	"8C   "	322	40
1725	"C "	1	2022	"31407 "	"8C   "	123	60
1417	"A "	1	2022	"1410  "	"1U   "	204	60
1418	"A "	1	2022	"1411  "	"5O-A "	206	60
1419	"A "	1	2022	"1412  "	"5O-A "	206	60
1420	"A "	2	2022	"1413  "	"5O-A "	207	60
1421	"A "	2	2022	"1414  "	"1U   "	204	60
1422	"B "	2	2022	"1414  "	"1U   "	204	60
10	"55"	1	2015	"GAV001"	"5S   "	207	40
20	"57"	2	2016	"GAV007"	"5S   "	205	40
30	"59"	1	2017	"GAV013"	"5S   "	208	40
40	"61"	2	2018	"GAV019"	"5S   "	207	40
50	"63"	1	2019	"GAV010"	"5S   "	205	40
218	"A "	1	2018	"MAT201"	"1F   "	215	70
219	"B "	2	2019	"MAT211"	"1F   "	216	75
220	"C "	3	2020	"MAT212"	"1F   "	217	45
221	"D "	4	2021	"MAT213"	"1F   "	215	70
222	"E "	5	2022	"MAT214"	"1F   "	216	75
223	"F "	6	2022	"MAT214"	"1F   "	216	75
1	"01"	1	2022	"GBC043"	"1BBSI"	127	90
2	"02"	2	2022	"GBC043"	"1BBSI"	127	90
3	"03"	2	2022	"GSI023"	"1BBSI"	128	90
4	"04"	2	2022	"GSI034"	"1BBSI"	129	90
5	"05"	2	2022	"GSI027"	"1BBSI"	128	90
1500	"17"	12022	2022	"GOG001"	"UMU4L"	39	100
1501	"17"	12021	2021	"GOG001"	"UMU4L"	39	100
1502	"18"	22021	2021	"GOG002"	"UMU3L"	38	80
1503	"19"	22022	2022	"GOG003"	"UMU4L"	39	100
1504	"20"	12023	2023	"GOG004"	"UMU1L"	37	50
430	"65"	2	2020	"410   "	"1G   "	101	50
431	"66"	1	2020	"410   "	"1G   "	101	50
432	"67"	2	2020	"411   "	"1G   "	102	50
433	"68"	1	2021	"412   "	"1G   "	103	50
434	"69"	2	2021	"413   "	"1G   "	104	50
400	"00"	2	1982	"GEDU31"	"1A   "	490	55
401	"01"	1	1983	"GEDU32"	"1A   "	490	55
402	"02"	2	1983	"GEDU41"	"1A   "	491	40
403	"03"	2	1990	"GEDU42"	"1A   "	491	40
404	"04"	2	1995	"GEDU43"	"1A   "	492	50
405	"05"	2	1995	"GEDU43"	"1A   "	492	50
155	"63"	2	2020	"GBC034"	"1B   "	204	80
154	"64"	1	2021	"GBC034"	"1B   "	203	80
153	"65"	2	2021	"GBC024"	"5R   "	103	90
152	"66"	1	2022	"GBC023"	"5R   "	103	90
650	"D1"	2	2022	"FADIR3"	"3D   "	102	60
651	"D1"	2	2020	"FADIR4"	"3D   "	104	40
652	"D2"	1	2021	"FADIR5"	"3D   "	104	40
315	"A1"	2	2020	"310   "	"1X   "	2	60
316	"A2"	2	2020	"310   "	"1X   "	2	60
317	"B1"	3	2020	"311   "	"1X   "	3	60
318	"C1"	4	2021	"312   "	"1X   "	1	60
319	"D1"	1	2021	"313   "	"1X   "	1	60
320	"E1"	4	2021	"314   "	"1X   "	1	60
2015	"A "	1	2022	"2000  "	"2A   "	1	50
2016	"B "	1	2022	"2001  "	"2A   "	2	50
2017	"C "	1	2022	"2002  "	"2A   "	3	50
2018	"D "	1	2022	"2003  "	"2A   "	4	50
2019	"E "	1	2022	"2004  "	"2A   "	5	50
2020	"F "	1	2022	"2004  "	"2A   "	6	50
1817	"01"	20211	2021	"1801  "	"2E   "	201	50
1818	"02"	20212	2021	"1801  "	"2E   "	201	50
1819	"03"	20221	2022	"1803  "	"2E   "	201	50
1820	"04"	20222	2022	"1804  "	"2E   "	202	30
1821	"05"	20231	2023	"1802  "	"2E   "	202	30
*/


--- (f) Inclua a data de nascimento em Professor e preencha aleatoriamente.
---	Liste os nomes e idade dos professores e dos Estudantes que possuem a mesma idade. 
--A coluna que vai listar o nome do professor deve-se chamar professor e a coluna que listará o nome do Estudante 
--deve-se chamar Estudante
ALTER TABLE professor
ADD niver date;
update universidade.professor set niver =     timestamp '1950-03-10' + random() *           
(timestamp '2000-01-01' - timestamp '1990-01-01');

insert into professor (id, nome, fac_prof, admissao,niver)
values ('320','Severo Snape','INFIS','1993-02-20','1968-01-09');

SELECT professor.nome as Professor, EXTRACT ( year from AGE(niver)) as idade_professor, 
	estudante.nome as Estudante, EXTRACT ( year from AGE(datanasc)) as idade_estudante
FROM professor
		INNER JOIN 
	estudante ON EXTRACT ( year from AGE(niver))= EXTRACT ( year from AGE(datanasc));
/*
"professor"	"idade_professor"	"estudante"	"idade_estudante"
"Severo Snape"	54	"Jason Thirtenn"	54
"Severo Snape"	54	"Frederico Krueger"	54
"Severo Snape"	54	"Naruto Uzumaki"	54
*/

--- (g) Lista os nomes dos professores e dos Estudantes que não possuem a mesma idade. 
--Também mostrar a idade do professor e do Estudante. As colunas que vão mostrar o nome e idade do professor
-- devem-se chamar professor e prof_idade respectivamente e as colunas que listarão o nome e 
-- a idade do Estudante devem-se chamar estudante e est_idade, respectivamente.
SELECT professor.nome as Professor, EXTRACT ( year from AGE(niver)) as prof_idade, 
	estudante.nome as Estudante, EXTRACT ( year from AGE(datanasc)) as est_idade
FROM professor
		INNER JOIN 
	estudante ON EXTRACT ( year from AGE(niver)) <> EXTRACT ( year from AGE(datanasc));
/*
"professor"	"prof_idade"	"estudante"	"est_idade"
"Gina Maira"	65	"Pedro Henrique Silva"	21
"Marcelo Keese Albertini"	62	"Pedro Henrique Silva"	21
"Rivalino Matias Júnior"	69	"Pedro Henrique Silva"	21
"André Backes"	63	"Pedro Henrique Silva"	21
"Bruno Augusto Nassif Travençolo"	66	"Pedro Henrique Silva"	21
"Luiz Gustavo Almeida Martins"	67	"Pedro Henrique Silva"	21
"Ailton Gonçalves Rodrigues Junior"	69	"Pedro Henrique Silva"	21
"Ariádine Cristine de Almeida"	71	"Pedro Henrique Silva"	21
"Giuliano Buzá Jacobucci"	67	"Pedro Henrique Silva"	21
"Jeamylle Nilin Gonçalves"	70	"Pedro Henrique Silva"	21
"Cassiano Aimberê Dorneles Welker"	69	"Pedro Henrique Silva"	21
"Admilson Lopes dos Santos"	72	"Pedro Henrique Silva"	21
"Adriana Rodrigues da Silva"	68	"Pedro Henrique Silva"	21
"Camila Mariana Ruiz"	71	"Pedro Henrique Silva"	21
"Fernando Rodrigo Rafaeli"	68	"Pedro Henrique Silva"	21
"Taciana Oliveira Souza"	69	"Pedro Henrique Silva"	21
"Jean Ponciano"	69	"Pedro Henrique Silva"	21
"Elaine Ribeiro"	67	"Pedro Henrique Silva"	21
"Alexsandro Soares"	71	"Pedro Henrique Silva"	21
"Pedro Frosi"	70	"Pedro Henrique Silva"	21
"Marcia Aparecida Fernandes"	65	"Pedro Henrique Silva"	21
"Adriano Mota Loyola"	69	"Pedro Henrique Silva"	21
"Alessandra Maia de Castro Prado"	71	"Pedro Henrique Silva"	21
"Álex Moreira Herval"	67	"Pedro Henrique Silva"	21
"Ana Paula Turrioni Hidalgo"	66	"Pedro Henrique Silva"	21
"Ana Paula de Lima Oliveira"	69	"Pedro Henrique Silva"	21
"Belchior de Sousa"	68	"Pedro Henrique Silva"	21
"Elsieni Coelho da Silva"	63	"Pedro Henrique Silva"	21
"Gastao da Cunha Frota"	67	"Pedro Henrique Silva"	21
"Nikoleta Tzvetanova Kerinska"	65	"Pedro Henrique Silva"	21
"Renato Palumbo Doria"	63	"Pedro Henrique Silva"	21
"Adriana Pastorello Buim Arena"	67	"Pedro Henrique Silva"	21
"Aldeci Cacique Calixto"	72	"Pedro Henrique Silva"	21
"Aléxia Pádua Franco"	69	"Pedro Henrique Silva"	21
"Ana Beatriz da Silva Duarte"	62	"Pedro Henrique Silva"	21
"Andrea Maturano Longarezi"	72	"Pedro Henrique Silva"	21
"Jailson Mendes"	70	"Pedro Henrique Silva"	21
"Gabriel Jesus"	68	"Pedro Henrique Silva"	21
"Luciano Hulk"	70	"Pedro Henrique Silva"	21
"João Guilherme"	70	"Pedro Henrique Silva"	21
"Péricles Mendes"	63	"Pedro Henrique Silva"	21
"Alcino Eduardo Bonella"	64	"Pedro Henrique Silva"	21
"Alexandre Guimarães Tadeu de Soares"	68	"Pedro Henrique Silva"	21
"Ana Maria Said"	70	"Pedro Henrique Silva"	21
"Anselmo Tadeu Ferreira"	63	"Pedro Henrique Silva"	21
"Dennys Garcia Xavier"	70	"Pedro Henrique Silva"	21
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Pedro Henrique Silva"	21
"Lucas de Assis Ribeiro"	72	"Pedro Henrique Silva"	21
"Natália Mundim Tôrres"	72	"Pedro Henrique Silva"	21
"Tiago Wilson Patriarca Mineo "	68	"Pedro Henrique Silva"	21
"Neide Maria da Silva "	64	"Pedro Henrique Silva"	21
"Alexandre Garrido da Silva"	71	"Pedro Henrique Silva"	21
"Beatriz Corrêa Camargo"	72	"Pedro Henrique Silva"	21
"Daniela de Melo Crosara"	68	"Pedro Henrique Silva"	21
"Fernando Rodrigues Martins"	69	"Pedro Henrique Silva"	21
"Gustavo de Carvalho Marin"	69	"Pedro Henrique Silva"	21
"Ademir Cavalheiro"	64	"Pedro Henrique Silva"	21
"Adevailton Bernardo dos Santos"	68	"Pedro Henrique Silva"	21
"Alessandra Riposati Arantes"	65	"Pedro Henrique Silva"	21
"Djalmir Nestor Messias"	66	"Pedro Henrique Silva"	21
"Marcel Novaes"	66	"Pedro Henrique Silva"	21
"Alberto da Silva Morais"	70	"Pedro Henrique Silva"	21
"Carlos Hernrique Gomes"	65	"Pedro Henrique Silva"	21
"Daniela Cristina de Oliveira"	72	"Pedro Henrique Silva"	21
"Disney Oliver"	71	"Pedro Henrique Silva"	21
"Henrique Tomaz Gonzaga"	68	"Pedro Henrique Silva"	21
"Jamil Salem"	66	"Pedro Henrique Silva"	21
"Julia Vingadora"	71	"Pedro Henrique Silva"	21
"Roberto Carlos"	65	"Pedro Henrique Silva"	21
"Cláudio Assembly"	64	"Pedro Henrique Silva"	21
"Elaine Java"	63	"Pedro Henrique Silva"	21
"Lilian Rodrigues Sant’ Anna Campos"	70	"Pedro Henrique Silva"	21
"Clelia Regina Cafer"	66	"Pedro Henrique Silva"	21
"Marisa Aparecida Elias"	70	"Pedro Henrique Silva"	21
"Barbara Dias Rezende Gontijo"	63	"Pedro Henrique Silva"	21
"Tatiana Carneiro de Resende"	63	"Pedro Henrique Silva"	21
"Alessandro Gomes Enoque"	70	"Pedro Henrique Silva"	21
"Alex Fernando Borges"	68	"Pedro Henrique Silva"	21
"Alexandre Alves Alvenha"	70	"Pedro Henrique Silva"	21
"Alexandre Cacheffo"	71	"Pedro Henrique Silva"	21
"Alexandre Calzavara Yoshida"	72	"Pedro Henrique Silva"	21
"Severo Snape"	54	"Pedro Henrique Silva"	21
"Gina Maira"	65	"Gabriel Borges Júnior"	20
"Marcelo Keese Albertini"	62	"Gabriel Borges Júnior"	20
"Rivalino Matias Júnior"	69	"Gabriel Borges Júnior"	20
"André Backes"	63	"Gabriel Borges Júnior"	20
"Bruno Augusto Nassif Travençolo"	66	"Gabriel Borges Júnior"	20
"Luiz Gustavo Almeida Martins"	67	"Gabriel Borges Júnior"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Gabriel Borges Júnior"	20
"Ariádine Cristine de Almeida"	71	"Gabriel Borges Júnior"	20
"Giuliano Buzá Jacobucci"	67	"Gabriel Borges Júnior"	20
"Jeamylle Nilin Gonçalves"	70	"Gabriel Borges Júnior"	20
"Cassiano Aimberê Dorneles Welker"	69	"Gabriel Borges Júnior"	20
"Admilson Lopes dos Santos"	72	"Gabriel Borges Júnior"	20
"Adriana Rodrigues da Silva"	68	"Gabriel Borges Júnior"	20
"Camila Mariana Ruiz"	71	"Gabriel Borges Júnior"	20
"Fernando Rodrigo Rafaeli"	68	"Gabriel Borges Júnior"	20
"Taciana Oliveira Souza"	69	"Gabriel Borges Júnior"	20
"Jean Ponciano"	69	"Gabriel Borges Júnior"	20
"Elaine Ribeiro"	67	"Gabriel Borges Júnior"	20
"Alexsandro Soares"	71	"Gabriel Borges Júnior"	20
"Pedro Frosi"	70	"Gabriel Borges Júnior"	20
"Marcia Aparecida Fernandes"	65	"Gabriel Borges Júnior"	20
"Adriano Mota Loyola"	69	"Gabriel Borges Júnior"	20
"Alessandra Maia de Castro Prado"	71	"Gabriel Borges Júnior"	20
"Álex Moreira Herval"	67	"Gabriel Borges Júnior"	20
"Ana Paula Turrioni Hidalgo"	66	"Gabriel Borges Júnior"	20
"Ana Paula de Lima Oliveira"	69	"Gabriel Borges Júnior"	20
"Belchior de Sousa"	68	"Gabriel Borges Júnior"	20
"Elsieni Coelho da Silva"	63	"Gabriel Borges Júnior"	20
"Gastao da Cunha Frota"	67	"Gabriel Borges Júnior"	20
"Nikoleta Tzvetanova Kerinska"	65	"Gabriel Borges Júnior"	20
"Renato Palumbo Doria"	63	"Gabriel Borges Júnior"	20
"Adriana Pastorello Buim Arena"	67	"Gabriel Borges Júnior"	20
"Aldeci Cacique Calixto"	72	"Gabriel Borges Júnior"	20
"Aléxia Pádua Franco"	69	"Gabriel Borges Júnior"	20
"Ana Beatriz da Silva Duarte"	62	"Gabriel Borges Júnior"	20
"Andrea Maturano Longarezi"	72	"Gabriel Borges Júnior"	20
"Jailson Mendes"	70	"Gabriel Borges Júnior"	20
"Gabriel Jesus"	68	"Gabriel Borges Júnior"	20
"Luciano Hulk"	70	"Gabriel Borges Júnior"	20
"João Guilherme"	70	"Gabriel Borges Júnior"	20
"Péricles Mendes"	63	"Gabriel Borges Júnior"	20
"Alcino Eduardo Bonella"	64	"Gabriel Borges Júnior"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Gabriel Borges Júnior"	20
"Ana Maria Said"	70	"Gabriel Borges Júnior"	20
"Anselmo Tadeu Ferreira"	63	"Gabriel Borges Júnior"	20
"Dennys Garcia Xavier"	70	"Gabriel Borges Júnior"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Gabriel Borges Júnior"	20
"Lucas de Assis Ribeiro"	72	"Gabriel Borges Júnior"	20
"Natália Mundim Tôrres"	72	"Gabriel Borges Júnior"	20
"Tiago Wilson Patriarca Mineo "	68	"Gabriel Borges Júnior"	20
"Neide Maria da Silva "	64	"Gabriel Borges Júnior"	20
"Alexandre Garrido da Silva"	71	"Gabriel Borges Júnior"	20
"Beatriz Corrêa Camargo"	72	"Gabriel Borges Júnior"	20
"Daniela de Melo Crosara"	68	"Gabriel Borges Júnior"	20
"Fernando Rodrigues Martins"	69	"Gabriel Borges Júnior"	20
"Gustavo de Carvalho Marin"	69	"Gabriel Borges Júnior"	20
"Ademir Cavalheiro"	64	"Gabriel Borges Júnior"	20
"Adevailton Bernardo dos Santos"	68	"Gabriel Borges Júnior"	20
"Alessandra Riposati Arantes"	65	"Gabriel Borges Júnior"	20
"Djalmir Nestor Messias"	66	"Gabriel Borges Júnior"	20
"Marcel Novaes"	66	"Gabriel Borges Júnior"	20
"Alberto da Silva Morais"	70	"Gabriel Borges Júnior"	20
"Carlos Hernrique Gomes"	65	"Gabriel Borges Júnior"	20
"Daniela Cristina de Oliveira"	72	"Gabriel Borges Júnior"	20
"Disney Oliver"	71	"Gabriel Borges Júnior"	20
"Henrique Tomaz Gonzaga"	68	"Gabriel Borges Júnior"	20
"Jamil Salem"	66	"Gabriel Borges Júnior"	20
"Julia Vingadora"	71	"Gabriel Borges Júnior"	20
"Roberto Carlos"	65	"Gabriel Borges Júnior"	20
"Cláudio Assembly"	64	"Gabriel Borges Júnior"	20
"Elaine Java"	63	"Gabriel Borges Júnior"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Gabriel Borges Júnior"	20
"Clelia Regina Cafer"	66	"Gabriel Borges Júnior"	20
"Marisa Aparecida Elias"	70	"Gabriel Borges Júnior"	20
"Barbara Dias Rezende Gontijo"	63	"Gabriel Borges Júnior"	20
"Tatiana Carneiro de Resende"	63	"Gabriel Borges Júnior"	20
"Alessandro Gomes Enoque"	70	"Gabriel Borges Júnior"	20
"Alex Fernando Borges"	68	"Gabriel Borges Júnior"	20
"Alexandre Alves Alvenha"	70	"Gabriel Borges Júnior"	20
"Alexandre Cacheffo"	71	"Gabriel Borges Júnior"	20
"Alexandre Calzavara Yoshida"	72	"Gabriel Borges Júnior"	20
"Severo Snape"	54	"Gabriel Borges Júnior"	20
"Gina Maira"	65	"Amanda Gomes de Oliveira"	22
"Marcelo Keese Albertini"	62	"Amanda Gomes de Oliveira"	22
"Rivalino Matias Júnior"	69	"Amanda Gomes de Oliveira"	22
"André Backes"	63	"Amanda Gomes de Oliveira"	22
"Bruno Augusto Nassif Travençolo"	66	"Amanda Gomes de Oliveira"	22
"Luiz Gustavo Almeida Martins"	67	"Amanda Gomes de Oliveira"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Amanda Gomes de Oliveira"	22
"Ariádine Cristine de Almeida"	71	"Amanda Gomes de Oliveira"	22
"Giuliano Buzá Jacobucci"	67	"Amanda Gomes de Oliveira"	22
"Jeamylle Nilin Gonçalves"	70	"Amanda Gomes de Oliveira"	22
"Cassiano Aimberê Dorneles Welker"	69	"Amanda Gomes de Oliveira"	22
"Admilson Lopes dos Santos"	72	"Amanda Gomes de Oliveira"	22
"Adriana Rodrigues da Silva"	68	"Amanda Gomes de Oliveira"	22
"Camila Mariana Ruiz"	71	"Amanda Gomes de Oliveira"	22
"Fernando Rodrigo Rafaeli"	68	"Amanda Gomes de Oliveira"	22
"Taciana Oliveira Souza"	69	"Amanda Gomes de Oliveira"	22
"Jean Ponciano"	69	"Amanda Gomes de Oliveira"	22
"Elaine Ribeiro"	67	"Amanda Gomes de Oliveira"	22
"Alexsandro Soares"	71	"Amanda Gomes de Oliveira"	22
"Pedro Frosi"	70	"Amanda Gomes de Oliveira"	22
"Marcia Aparecida Fernandes"	65	"Amanda Gomes de Oliveira"	22
"Adriano Mota Loyola"	69	"Amanda Gomes de Oliveira"	22
"Alessandra Maia de Castro Prado"	71	"Amanda Gomes de Oliveira"	22
"Álex Moreira Herval"	67	"Amanda Gomes de Oliveira"	22
"Ana Paula Turrioni Hidalgo"	66	"Amanda Gomes de Oliveira"	22
"Ana Paula de Lima Oliveira"	69	"Amanda Gomes de Oliveira"	22
"Belchior de Sousa"	68	"Amanda Gomes de Oliveira"	22
"Elsieni Coelho da Silva"	63	"Amanda Gomes de Oliveira"	22
"Gastao da Cunha Frota"	67	"Amanda Gomes de Oliveira"	22
"Nikoleta Tzvetanova Kerinska"	65	"Amanda Gomes de Oliveira"	22
"Renato Palumbo Doria"	63	"Amanda Gomes de Oliveira"	22
"Adriana Pastorello Buim Arena"	67	"Amanda Gomes de Oliveira"	22
"Aldeci Cacique Calixto"	72	"Amanda Gomes de Oliveira"	22
"Aléxia Pádua Franco"	69	"Amanda Gomes de Oliveira"	22
"Ana Beatriz da Silva Duarte"	62	"Amanda Gomes de Oliveira"	22
"Andrea Maturano Longarezi"	72	"Amanda Gomes de Oliveira"	22
"Jailson Mendes"	70	"Amanda Gomes de Oliveira"	22
"Gabriel Jesus"	68	"Amanda Gomes de Oliveira"	22
"Luciano Hulk"	70	"Amanda Gomes de Oliveira"	22
"João Guilherme"	70	"Amanda Gomes de Oliveira"	22
"Péricles Mendes"	63	"Amanda Gomes de Oliveira"	22
"Alcino Eduardo Bonella"	64	"Amanda Gomes de Oliveira"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Amanda Gomes de Oliveira"	22
"Ana Maria Said"	70	"Amanda Gomes de Oliveira"	22
"Anselmo Tadeu Ferreira"	63	"Amanda Gomes de Oliveira"	22
"Dennys Garcia Xavier"	70	"Amanda Gomes de Oliveira"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Amanda Gomes de Oliveira"	22
"Lucas de Assis Ribeiro"	72	"Amanda Gomes de Oliveira"	22
"Natália Mundim Tôrres"	72	"Amanda Gomes de Oliveira"	22
"Tiago Wilson Patriarca Mineo "	68	"Amanda Gomes de Oliveira"	22
"Neide Maria da Silva "	64	"Amanda Gomes de Oliveira"	22
"Alexandre Garrido da Silva"	71	"Amanda Gomes de Oliveira"	22
"Beatriz Corrêa Camargo"	72	"Amanda Gomes de Oliveira"	22
"Daniela de Melo Crosara"	68	"Amanda Gomes de Oliveira"	22
"Fernando Rodrigues Martins"	69	"Amanda Gomes de Oliveira"	22
"Gustavo de Carvalho Marin"	69	"Amanda Gomes de Oliveira"	22
"Ademir Cavalheiro"	64	"Amanda Gomes de Oliveira"	22
"Adevailton Bernardo dos Santos"	68	"Amanda Gomes de Oliveira"	22
"Alessandra Riposati Arantes"	65	"Amanda Gomes de Oliveira"	22
"Djalmir Nestor Messias"	66	"Amanda Gomes de Oliveira"	22
"Marcel Novaes"	66	"Amanda Gomes de Oliveira"	22
"Alberto da Silva Morais"	70	"Amanda Gomes de Oliveira"	22
"Carlos Hernrique Gomes"	65	"Amanda Gomes de Oliveira"	22
"Daniela Cristina de Oliveira"	72	"Amanda Gomes de Oliveira"	22
"Disney Oliver"	71	"Amanda Gomes de Oliveira"	22
"Henrique Tomaz Gonzaga"	68	"Amanda Gomes de Oliveira"	22
"Jamil Salem"	66	"Amanda Gomes de Oliveira"	22
"Julia Vingadora"	71	"Amanda Gomes de Oliveira"	22
"Roberto Carlos"	65	"Amanda Gomes de Oliveira"	22
"Cláudio Assembly"	64	"Amanda Gomes de Oliveira"	22
"Elaine Java"	63	"Amanda Gomes de Oliveira"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Amanda Gomes de Oliveira"	22
"Clelia Regina Cafer"	66	"Amanda Gomes de Oliveira"	22
"Marisa Aparecida Elias"	70	"Amanda Gomes de Oliveira"	22
"Barbara Dias Rezende Gontijo"	63	"Amanda Gomes de Oliveira"	22
"Tatiana Carneiro de Resende"	63	"Amanda Gomes de Oliveira"	22
"Alessandro Gomes Enoque"	70	"Amanda Gomes de Oliveira"	22
"Alex Fernando Borges"	68	"Amanda Gomes de Oliveira"	22
"Alexandre Alves Alvenha"	70	"Amanda Gomes de Oliveira"	22
"Alexandre Cacheffo"	71	"Amanda Gomes de Oliveira"	22
"Alexandre Calzavara Yoshida"	72	"Amanda Gomes de Oliveira"	22
"Severo Snape"	54	"Amanda Gomes de Oliveira"	22
"Gina Maira"	65	"Jorge Antônio Santos"	23
"Marcelo Keese Albertini"	62	"Jorge Antônio Santos"	23
"Rivalino Matias Júnior"	69	"Jorge Antônio Santos"	23
"André Backes"	63	"Jorge Antônio Santos"	23
"Bruno Augusto Nassif Travençolo"	66	"Jorge Antônio Santos"	23
"Luiz Gustavo Almeida Martins"	67	"Jorge Antônio Santos"	23
"Ailton Gonçalves Rodrigues Junior"	69	"Jorge Antônio Santos"	23
"Ariádine Cristine de Almeida"	71	"Jorge Antônio Santos"	23
"Giuliano Buzá Jacobucci"	67	"Jorge Antônio Santos"	23
"Jeamylle Nilin Gonçalves"	70	"Jorge Antônio Santos"	23
"Cassiano Aimberê Dorneles Welker"	69	"Jorge Antônio Santos"	23
"Admilson Lopes dos Santos"	72	"Jorge Antônio Santos"	23
"Adriana Rodrigues da Silva"	68	"Jorge Antônio Santos"	23
"Camila Mariana Ruiz"	71	"Jorge Antônio Santos"	23
"Fernando Rodrigo Rafaeli"	68	"Jorge Antônio Santos"	23
"Taciana Oliveira Souza"	69	"Jorge Antônio Santos"	23
"Jean Ponciano"	69	"Jorge Antônio Santos"	23
"Elaine Ribeiro"	67	"Jorge Antônio Santos"	23
"Alexsandro Soares"	71	"Jorge Antônio Santos"	23
"Pedro Frosi"	70	"Jorge Antônio Santos"	23
"Marcia Aparecida Fernandes"	65	"Jorge Antônio Santos"	23
"Adriano Mota Loyola"	69	"Jorge Antônio Santos"	23
"Alessandra Maia de Castro Prado"	71	"Jorge Antônio Santos"	23
"Álex Moreira Herval"	67	"Jorge Antônio Santos"	23
"Ana Paula Turrioni Hidalgo"	66	"Jorge Antônio Santos"	23
"Ana Paula de Lima Oliveira"	69	"Jorge Antônio Santos"	23
"Belchior de Sousa"	68	"Jorge Antônio Santos"	23
"Elsieni Coelho da Silva"	63	"Jorge Antônio Santos"	23
"Gastao da Cunha Frota"	67	"Jorge Antônio Santos"	23
"Nikoleta Tzvetanova Kerinska"	65	"Jorge Antônio Santos"	23
"Renato Palumbo Doria"	63	"Jorge Antônio Santos"	23
"Adriana Pastorello Buim Arena"	67	"Jorge Antônio Santos"	23
"Aldeci Cacique Calixto"	72	"Jorge Antônio Santos"	23
"Aléxia Pádua Franco"	69	"Jorge Antônio Santos"	23
"Ana Beatriz da Silva Duarte"	62	"Jorge Antônio Santos"	23
"Andrea Maturano Longarezi"	72	"Jorge Antônio Santos"	23
"Jailson Mendes"	70	"Jorge Antônio Santos"	23
"Gabriel Jesus"	68	"Jorge Antônio Santos"	23
"Luciano Hulk"	70	"Jorge Antônio Santos"	23
"João Guilherme"	70	"Jorge Antônio Santos"	23
"Péricles Mendes"	63	"Jorge Antônio Santos"	23
"Alcino Eduardo Bonella"	64	"Jorge Antônio Santos"	23
"Alexandre Guimarães Tadeu de Soares"	68	"Jorge Antônio Santos"	23
"Ana Maria Said"	70	"Jorge Antônio Santos"	23
"Anselmo Tadeu Ferreira"	63	"Jorge Antônio Santos"	23
"Dennys Garcia Xavier"	70	"Jorge Antônio Santos"	23
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Jorge Antônio Santos"	23
"Lucas de Assis Ribeiro"	72	"Jorge Antônio Santos"	23
"Natália Mundim Tôrres"	72	"Jorge Antônio Santos"	23
"Tiago Wilson Patriarca Mineo "	68	"Jorge Antônio Santos"	23
"Neide Maria da Silva "	64	"Jorge Antônio Santos"	23
"Alexandre Garrido da Silva"	71	"Jorge Antônio Santos"	23
"Beatriz Corrêa Camargo"	72	"Jorge Antônio Santos"	23
"Daniela de Melo Crosara"	68	"Jorge Antônio Santos"	23
"Fernando Rodrigues Martins"	69	"Jorge Antônio Santos"	23
"Gustavo de Carvalho Marin"	69	"Jorge Antônio Santos"	23
"Ademir Cavalheiro"	64	"Jorge Antônio Santos"	23
"Adevailton Bernardo dos Santos"	68	"Jorge Antônio Santos"	23
"Alessandra Riposati Arantes"	65	"Jorge Antônio Santos"	23
"Djalmir Nestor Messias"	66	"Jorge Antônio Santos"	23
"Marcel Novaes"	66	"Jorge Antônio Santos"	23
"Alberto da Silva Morais"	70	"Jorge Antônio Santos"	23
"Carlos Hernrique Gomes"	65	"Jorge Antônio Santos"	23
"Daniela Cristina de Oliveira"	72	"Jorge Antônio Santos"	23
"Disney Oliver"	71	"Jorge Antônio Santos"	23
"Henrique Tomaz Gonzaga"	68	"Jorge Antônio Santos"	23
"Jamil Salem"	66	"Jorge Antônio Santos"	23
"Julia Vingadora"	71	"Jorge Antônio Santos"	23
"Roberto Carlos"	65	"Jorge Antônio Santos"	23
"Cláudio Assembly"	64	"Jorge Antônio Santos"	23
"Elaine Java"	63	"Jorge Antônio Santos"	23
"Lilian Rodrigues Sant’ Anna Campos"	70	"Jorge Antônio Santos"	23
"Clelia Regina Cafer"	66	"Jorge Antônio Santos"	23
"Marisa Aparecida Elias"	70	"Jorge Antônio Santos"	23
"Barbara Dias Rezende Gontijo"	63	"Jorge Antônio Santos"	23
"Tatiana Carneiro de Resende"	63	"Jorge Antônio Santos"	23
"Alessandro Gomes Enoque"	70	"Jorge Antônio Santos"	23
"Alex Fernando Borges"	68	"Jorge Antônio Santos"	23
"Alexandre Alves Alvenha"	70	"Jorge Antônio Santos"	23
"Alexandre Cacheffo"	71	"Jorge Antônio Santos"	23
"Alexandre Calzavara Yoshida"	72	"Jorge Antônio Santos"	23
"Severo Snape"	54	"Jorge Antônio Santos"	23
"Gina Maira"	65	"Bruna Tobias Pinto"	21
"Marcelo Keese Albertini"	62	"Bruna Tobias Pinto"	21
"Rivalino Matias Júnior"	69	"Bruna Tobias Pinto"	21
"André Backes"	63	"Bruna Tobias Pinto"	21
"Bruno Augusto Nassif Travençolo"	66	"Bruna Tobias Pinto"	21
"Luiz Gustavo Almeida Martins"	67	"Bruna Tobias Pinto"	21
"Ailton Gonçalves Rodrigues Junior"	69	"Bruna Tobias Pinto"	21
"Ariádine Cristine de Almeida"	71	"Bruna Tobias Pinto"	21
"Giuliano Buzá Jacobucci"	67	"Bruna Tobias Pinto"	21
"Jeamylle Nilin Gonçalves"	70	"Bruna Tobias Pinto"	21
"Cassiano Aimberê Dorneles Welker"	69	"Bruna Tobias Pinto"	21
"Admilson Lopes dos Santos"	72	"Bruna Tobias Pinto"	21
"Adriana Rodrigues da Silva"	68	"Bruna Tobias Pinto"	21
"Camila Mariana Ruiz"	71	"Bruna Tobias Pinto"	21
"Fernando Rodrigo Rafaeli"	68	"Bruna Tobias Pinto"	21
"Taciana Oliveira Souza"	69	"Bruna Tobias Pinto"	21
"Jean Ponciano"	69	"Bruna Tobias Pinto"	21
"Elaine Ribeiro"	67	"Bruna Tobias Pinto"	21
"Alexsandro Soares"	71	"Bruna Tobias Pinto"	21
"Pedro Frosi"	70	"Bruna Tobias Pinto"	21
"Marcia Aparecida Fernandes"	65	"Bruna Tobias Pinto"	21
"Adriano Mota Loyola"	69	"Bruna Tobias Pinto"	21
"Alessandra Maia de Castro Prado"	71	"Bruna Tobias Pinto"	21
"Álex Moreira Herval"	67	"Bruna Tobias Pinto"	21
"Ana Paula Turrioni Hidalgo"	66	"Bruna Tobias Pinto"	21
"Ana Paula de Lima Oliveira"	69	"Bruna Tobias Pinto"	21
"Belchior de Sousa"	68	"Bruna Tobias Pinto"	21
"Elsieni Coelho da Silva"	63	"Bruna Tobias Pinto"	21
"Gastao da Cunha Frota"	67	"Bruna Tobias Pinto"	21
"Nikoleta Tzvetanova Kerinska"	65	"Bruna Tobias Pinto"	21
"Renato Palumbo Doria"	63	"Bruna Tobias Pinto"	21
"Adriana Pastorello Buim Arena"	67	"Bruna Tobias Pinto"	21
"Aldeci Cacique Calixto"	72	"Bruna Tobias Pinto"	21
"Aléxia Pádua Franco"	69	"Bruna Tobias Pinto"	21
"Ana Beatriz da Silva Duarte"	62	"Bruna Tobias Pinto"	21
"Andrea Maturano Longarezi"	72	"Bruna Tobias Pinto"	21
"Jailson Mendes"	70	"Bruna Tobias Pinto"	21
"Gabriel Jesus"	68	"Bruna Tobias Pinto"	21
"Luciano Hulk"	70	"Bruna Tobias Pinto"	21
"João Guilherme"	70	"Bruna Tobias Pinto"	21
"Péricles Mendes"	63	"Bruna Tobias Pinto"	21
"Alcino Eduardo Bonella"	64	"Bruna Tobias Pinto"	21
"Alexandre Guimarães Tadeu de Soares"	68	"Bruna Tobias Pinto"	21
"Ana Maria Said"	70	"Bruna Tobias Pinto"	21
"Anselmo Tadeu Ferreira"	63	"Bruna Tobias Pinto"	21
"Dennys Garcia Xavier"	70	"Bruna Tobias Pinto"	21
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Bruna Tobias Pinto"	21
"Lucas de Assis Ribeiro"	72	"Bruna Tobias Pinto"	21
"Natália Mundim Tôrres"	72	"Bruna Tobias Pinto"	21
"Tiago Wilson Patriarca Mineo "	68	"Bruna Tobias Pinto"	21
"Neide Maria da Silva "	64	"Bruna Tobias Pinto"	21
"Alexandre Garrido da Silva"	71	"Bruna Tobias Pinto"	21
"Beatriz Corrêa Camargo"	72	"Bruna Tobias Pinto"	21
"Daniela de Melo Crosara"	68	"Bruna Tobias Pinto"	21
"Fernando Rodrigues Martins"	69	"Bruna Tobias Pinto"	21
"Gustavo de Carvalho Marin"	69	"Bruna Tobias Pinto"	21
"Ademir Cavalheiro"	64	"Bruna Tobias Pinto"	21
"Adevailton Bernardo dos Santos"	68	"Bruna Tobias Pinto"	21
"Alessandra Riposati Arantes"	65	"Bruna Tobias Pinto"	21
"Djalmir Nestor Messias"	66	"Bruna Tobias Pinto"	21
"Marcel Novaes"	66	"Bruna Tobias Pinto"	21
"Alberto da Silva Morais"	70	"Bruna Tobias Pinto"	21
"Carlos Hernrique Gomes"	65	"Bruna Tobias Pinto"	21
"Daniela Cristina de Oliveira"	72	"Bruna Tobias Pinto"	21
"Disney Oliver"	71	"Bruna Tobias Pinto"	21
"Henrique Tomaz Gonzaga"	68	"Bruna Tobias Pinto"	21
"Jamil Salem"	66	"Bruna Tobias Pinto"	21
"Julia Vingadora"	71	"Bruna Tobias Pinto"	21
"Roberto Carlos"	65	"Bruna Tobias Pinto"	21
"Cláudio Assembly"	64	"Bruna Tobias Pinto"	21
"Elaine Java"	63	"Bruna Tobias Pinto"	21
"Lilian Rodrigues Sant’ Anna Campos"	70	"Bruna Tobias Pinto"	21
"Clelia Regina Cafer"	66	"Bruna Tobias Pinto"	21
"Marisa Aparecida Elias"	70	"Bruna Tobias Pinto"	21
"Barbara Dias Rezende Gontijo"	63	"Bruna Tobias Pinto"	21
"Tatiana Carneiro de Resende"	63	"Bruna Tobias Pinto"	21
"Alessandro Gomes Enoque"	70	"Bruna Tobias Pinto"	21
"Alex Fernando Borges"	68	"Bruna Tobias Pinto"	21
"Alexandre Alves Alvenha"	70	"Bruna Tobias Pinto"	21
"Alexandre Cacheffo"	71	"Bruna Tobias Pinto"	21
"Alexandre Calzavara Yoshida"	72	"Bruna Tobias Pinto"	21
"Severo Snape"	54	"Bruna Tobias Pinto"	21
"Gina Maira"	65	"Jonas Caravalho"	32
"Marcelo Keese Albertini"	62	"Jonas Caravalho"	32
"Rivalino Matias Júnior"	69	"Jonas Caravalho"	32
"André Backes"	63	"Jonas Caravalho"	32
"Bruno Augusto Nassif Travençolo"	66	"Jonas Caravalho"	32
"Luiz Gustavo Almeida Martins"	67	"Jonas Caravalho"	32
"Ailton Gonçalves Rodrigues Junior"	69	"Jonas Caravalho"	32
"Ariádine Cristine de Almeida"	71	"Jonas Caravalho"	32
"Giuliano Buzá Jacobucci"	67	"Jonas Caravalho"	32
"Jeamylle Nilin Gonçalves"	70	"Jonas Caravalho"	32
"Cassiano Aimberê Dorneles Welker"	69	"Jonas Caravalho"	32
"Admilson Lopes dos Santos"	72	"Jonas Caravalho"	32
"Adriana Rodrigues da Silva"	68	"Jonas Caravalho"	32
"Camila Mariana Ruiz"	71	"Jonas Caravalho"	32
"Fernando Rodrigo Rafaeli"	68	"Jonas Caravalho"	32
"Taciana Oliveira Souza"	69	"Jonas Caravalho"	32
"Jean Ponciano"	69	"Jonas Caravalho"	32
"Elaine Ribeiro"	67	"Jonas Caravalho"	32
"Alexsandro Soares"	71	"Jonas Caravalho"	32
"Pedro Frosi"	70	"Jonas Caravalho"	32
"Marcia Aparecida Fernandes"	65	"Jonas Caravalho"	32
"Adriano Mota Loyola"	69	"Jonas Caravalho"	32
"Alessandra Maia de Castro Prado"	71	"Jonas Caravalho"	32
"Álex Moreira Herval"	67	"Jonas Caravalho"	32
"Ana Paula Turrioni Hidalgo"	66	"Jonas Caravalho"	32
"Ana Paula de Lima Oliveira"	69	"Jonas Caravalho"	32
"Belchior de Sousa"	68	"Jonas Caravalho"	32
"Elsieni Coelho da Silva"	63	"Jonas Caravalho"	32
"Gastao da Cunha Frota"	67	"Jonas Caravalho"	32
"Nikoleta Tzvetanova Kerinska"	65	"Jonas Caravalho"	32
"Renato Palumbo Doria"	63	"Jonas Caravalho"	32
"Adriana Pastorello Buim Arena"	67	"Jonas Caravalho"	32
"Aldeci Cacique Calixto"	72	"Jonas Caravalho"	32
"Aléxia Pádua Franco"	69	"Jonas Caravalho"	32
"Ana Beatriz da Silva Duarte"	62	"Jonas Caravalho"	32
"Andrea Maturano Longarezi"	72	"Jonas Caravalho"	32
"Jailson Mendes"	70	"Jonas Caravalho"	32
"Gabriel Jesus"	68	"Jonas Caravalho"	32
"Luciano Hulk"	70	"Jonas Caravalho"	32
"João Guilherme"	70	"Jonas Caravalho"	32
"Péricles Mendes"	63	"Jonas Caravalho"	32
"Alcino Eduardo Bonella"	64	"Jonas Caravalho"	32
"Alexandre Guimarães Tadeu de Soares"	68	"Jonas Caravalho"	32
"Ana Maria Said"	70	"Jonas Caravalho"	32
"Anselmo Tadeu Ferreira"	63	"Jonas Caravalho"	32
"Dennys Garcia Xavier"	70	"Jonas Caravalho"	32
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Jonas Caravalho"	32
"Lucas de Assis Ribeiro"	72	"Jonas Caravalho"	32
"Natália Mundim Tôrres"	72	"Jonas Caravalho"	32
"Tiago Wilson Patriarca Mineo "	68	"Jonas Caravalho"	32
"Neide Maria da Silva "	64	"Jonas Caravalho"	32
"Alexandre Garrido da Silva"	71	"Jonas Caravalho"	32
"Beatriz Corrêa Camargo"	72	"Jonas Caravalho"	32
"Daniela de Melo Crosara"	68	"Jonas Caravalho"	32
"Fernando Rodrigues Martins"	69	"Jonas Caravalho"	32
"Gustavo de Carvalho Marin"	69	"Jonas Caravalho"	32
"Ademir Cavalheiro"	64	"Jonas Caravalho"	32
"Adevailton Bernardo dos Santos"	68	"Jonas Caravalho"	32
"Alessandra Riposati Arantes"	65	"Jonas Caravalho"	32
"Djalmir Nestor Messias"	66	"Jonas Caravalho"	32
"Marcel Novaes"	66	"Jonas Caravalho"	32
"Alberto da Silva Morais"	70	"Jonas Caravalho"	32
"Carlos Hernrique Gomes"	65	"Jonas Caravalho"	32
"Daniela Cristina de Oliveira"	72	"Jonas Caravalho"	32
"Disney Oliver"	71	"Jonas Caravalho"	32
"Henrique Tomaz Gonzaga"	68	"Jonas Caravalho"	32
"Jamil Salem"	66	"Jonas Caravalho"	32
"Julia Vingadora"	71	"Jonas Caravalho"	32
"Roberto Carlos"	65	"Jonas Caravalho"	32
"Cláudio Assembly"	64	"Jonas Caravalho"	32
"Elaine Java"	63	"Jonas Caravalho"	32
"Lilian Rodrigues Sant’ Anna Campos"	70	"Jonas Caravalho"	32
"Clelia Regina Cafer"	66	"Jonas Caravalho"	32
"Marisa Aparecida Elias"	70	"Jonas Caravalho"	32
"Barbara Dias Rezende Gontijo"	63	"Jonas Caravalho"	32
"Tatiana Carneiro de Resende"	63	"Jonas Caravalho"	32
"Alessandro Gomes Enoque"	70	"Jonas Caravalho"	32
"Alex Fernando Borges"	68	"Jonas Caravalho"	32
"Alexandre Alves Alvenha"	70	"Jonas Caravalho"	32
"Alexandre Cacheffo"	71	"Jonas Caravalho"	32
"Alexandre Calzavara Yoshida"	72	"Jonas Caravalho"	32
"Severo Snape"	54	"Jonas Caravalho"	32
"Gina Maira"	65	"Luna da Conceição"	35
"Marcelo Keese Albertini"	62	"Luna da Conceição"	35
"Rivalino Matias Júnior"	69	"Luna da Conceição"	35
"André Backes"	63	"Luna da Conceição"	35
"Bruno Augusto Nassif Travençolo"	66	"Luna da Conceição"	35
"Luiz Gustavo Almeida Martins"	67	"Luna da Conceição"	35
"Ailton Gonçalves Rodrigues Junior"	69	"Luna da Conceição"	35
"Ariádine Cristine de Almeida"	71	"Luna da Conceição"	35
"Giuliano Buzá Jacobucci"	67	"Luna da Conceição"	35
"Jeamylle Nilin Gonçalves"	70	"Luna da Conceição"	35
"Cassiano Aimberê Dorneles Welker"	69	"Luna da Conceição"	35
"Admilson Lopes dos Santos"	72	"Luna da Conceição"	35
"Adriana Rodrigues da Silva"	68	"Luna da Conceição"	35
"Camila Mariana Ruiz"	71	"Luna da Conceição"	35
"Fernando Rodrigo Rafaeli"	68	"Luna da Conceição"	35
"Taciana Oliveira Souza"	69	"Luna da Conceição"	35
"Jean Ponciano"	69	"Luna da Conceição"	35
"Elaine Ribeiro"	67	"Luna da Conceição"	35
"Alexsandro Soares"	71	"Luna da Conceição"	35
"Pedro Frosi"	70	"Luna da Conceição"	35
"Marcia Aparecida Fernandes"	65	"Luna da Conceição"	35
"Adriano Mota Loyola"	69	"Luna da Conceição"	35
"Alessandra Maia de Castro Prado"	71	"Luna da Conceição"	35
"Álex Moreira Herval"	67	"Luna da Conceição"	35
"Ana Paula Turrioni Hidalgo"	66	"Luna da Conceição"	35
"Ana Paula de Lima Oliveira"	69	"Luna da Conceição"	35
"Belchior de Sousa"	68	"Luna da Conceição"	35
"Elsieni Coelho da Silva"	63	"Luna da Conceição"	35
"Gastao da Cunha Frota"	67	"Luna da Conceição"	35
"Nikoleta Tzvetanova Kerinska"	65	"Luna da Conceição"	35
"Renato Palumbo Doria"	63	"Luna da Conceição"	35
"Adriana Pastorello Buim Arena"	67	"Luna da Conceição"	35
"Aldeci Cacique Calixto"	72	"Luna da Conceição"	35
"Aléxia Pádua Franco"	69	"Luna da Conceição"	35
"Ana Beatriz da Silva Duarte"	62	"Luna da Conceição"	35
"Andrea Maturano Longarezi"	72	"Luna da Conceição"	35
"Jailson Mendes"	70	"Luna da Conceição"	35
"Gabriel Jesus"	68	"Luna da Conceição"	35
"Luciano Hulk"	70	"Luna da Conceição"	35
"João Guilherme"	70	"Luna da Conceição"	35
"Péricles Mendes"	63	"Luna da Conceição"	35
"Alcino Eduardo Bonella"	64	"Luna da Conceição"	35
"Alexandre Guimarães Tadeu de Soares"	68	"Luna da Conceição"	35
"Ana Maria Said"	70	"Luna da Conceição"	35
"Anselmo Tadeu Ferreira"	63	"Luna da Conceição"	35
"Dennys Garcia Xavier"	70	"Luna da Conceição"	35
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Luna da Conceição"	35
"Lucas de Assis Ribeiro"	72	"Luna da Conceição"	35
"Natália Mundim Tôrres"	72	"Luna da Conceição"	35
"Tiago Wilson Patriarca Mineo "	68	"Luna da Conceição"	35
"Neide Maria da Silva "	64	"Luna da Conceição"	35
"Alexandre Garrido da Silva"	71	"Luna da Conceição"	35
"Beatriz Corrêa Camargo"	72	"Luna da Conceição"	35
"Daniela de Melo Crosara"	68	"Luna da Conceição"	35
"Fernando Rodrigues Martins"	69	"Luna da Conceição"	35
"Gustavo de Carvalho Marin"	69	"Luna da Conceição"	35
"Ademir Cavalheiro"	64	"Luna da Conceição"	35
"Adevailton Bernardo dos Santos"	68	"Luna da Conceição"	35
"Alessandra Riposati Arantes"	65	"Luna da Conceição"	35
"Djalmir Nestor Messias"	66	"Luna da Conceição"	35
"Marcel Novaes"	66	"Luna da Conceição"	35
"Alberto da Silva Morais"	70	"Luna da Conceição"	35
"Carlos Hernrique Gomes"	65	"Luna da Conceição"	35
"Daniela Cristina de Oliveira"	72	"Luna da Conceição"	35
"Disney Oliver"	71	"Luna da Conceição"	35
"Henrique Tomaz Gonzaga"	68	"Luna da Conceição"	35
"Jamil Salem"	66	"Luna da Conceição"	35
"Julia Vingadora"	71	"Luna da Conceição"	35
"Roberto Carlos"	65	"Luna da Conceição"	35
"Cláudio Assembly"	64	"Luna da Conceição"	35
"Elaine Java"	63	"Luna da Conceição"	35
"Lilian Rodrigues Sant’ Anna Campos"	70	"Luna da Conceição"	35
"Clelia Regina Cafer"	66	"Luna da Conceição"	35
"Marisa Aparecida Elias"	70	"Luna da Conceição"	35
"Barbara Dias Rezende Gontijo"	63	"Luna da Conceição"	35
"Tatiana Carneiro de Resende"	63	"Luna da Conceição"	35
"Alessandro Gomes Enoque"	70	"Luna da Conceição"	35
"Alex Fernando Borges"	68	"Luna da Conceição"	35
"Alexandre Alves Alvenha"	70	"Luna da Conceição"	35
"Alexandre Cacheffo"	71	"Luna da Conceição"	35
"Alexandre Calzavara Yoshida"	72	"Luna da Conceição"	35
"Severo Snape"	54	"Luna da Conceição"	35
"Gina Maira"	65	"Ana Silveira"	19
"Marcelo Keese Albertini"	62	"Ana Silveira"	19
"Rivalino Matias Júnior"	69	"Ana Silveira"	19
"André Backes"	63	"Ana Silveira"	19
"Bruno Augusto Nassif Travençolo"	66	"Ana Silveira"	19
"Luiz Gustavo Almeida Martins"	67	"Ana Silveira"	19
"Ailton Gonçalves Rodrigues Junior"	69	"Ana Silveira"	19
"Ariádine Cristine de Almeida"	71	"Ana Silveira"	19
"Giuliano Buzá Jacobucci"	67	"Ana Silveira"	19
"Jeamylle Nilin Gonçalves"	70	"Ana Silveira"	19
"Cassiano Aimberê Dorneles Welker"	69	"Ana Silveira"	19
"Admilson Lopes dos Santos"	72	"Ana Silveira"	19
"Adriana Rodrigues da Silva"	68	"Ana Silveira"	19
"Camila Mariana Ruiz"	71	"Ana Silveira"	19
"Fernando Rodrigo Rafaeli"	68	"Ana Silveira"	19
"Taciana Oliveira Souza"	69	"Ana Silveira"	19
"Jean Ponciano"	69	"Ana Silveira"	19
"Elaine Ribeiro"	67	"Ana Silveira"	19
"Alexsandro Soares"	71	"Ana Silveira"	19
"Pedro Frosi"	70	"Ana Silveira"	19
"Marcia Aparecida Fernandes"	65	"Ana Silveira"	19
"Adriano Mota Loyola"	69	"Ana Silveira"	19
"Alessandra Maia de Castro Prado"	71	"Ana Silveira"	19
"Álex Moreira Herval"	67	"Ana Silveira"	19
"Ana Paula Turrioni Hidalgo"	66	"Ana Silveira"	19
"Ana Paula de Lima Oliveira"	69	"Ana Silveira"	19
"Belchior de Sousa"	68	"Ana Silveira"	19
"Elsieni Coelho da Silva"	63	"Ana Silveira"	19
"Gastao da Cunha Frota"	67	"Ana Silveira"	19
"Nikoleta Tzvetanova Kerinska"	65	"Ana Silveira"	19
"Renato Palumbo Doria"	63	"Ana Silveira"	19
"Adriana Pastorello Buim Arena"	67	"Ana Silveira"	19
"Aldeci Cacique Calixto"	72	"Ana Silveira"	19
"Aléxia Pádua Franco"	69	"Ana Silveira"	19
"Ana Beatriz da Silva Duarte"	62	"Ana Silveira"	19
"Andrea Maturano Longarezi"	72	"Ana Silveira"	19
"Jailson Mendes"	70	"Ana Silveira"	19
"Gabriel Jesus"	68	"Ana Silveira"	19
"Luciano Hulk"	70	"Ana Silveira"	19
"João Guilherme"	70	"Ana Silveira"	19
"Péricles Mendes"	63	"Ana Silveira"	19
"Alcino Eduardo Bonella"	64	"Ana Silveira"	19
"Alexandre Guimarães Tadeu de Soares"	68	"Ana Silveira"	19
"Ana Maria Said"	70	"Ana Silveira"	19
"Anselmo Tadeu Ferreira"	63	"Ana Silveira"	19
"Dennys Garcia Xavier"	70	"Ana Silveira"	19
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Ana Silveira"	19
"Lucas de Assis Ribeiro"	72	"Ana Silveira"	19
"Natália Mundim Tôrres"	72	"Ana Silveira"	19
"Tiago Wilson Patriarca Mineo "	68	"Ana Silveira"	19
"Neide Maria da Silva "	64	"Ana Silveira"	19
"Alexandre Garrido da Silva"	71	"Ana Silveira"	19
"Beatriz Corrêa Camargo"	72	"Ana Silveira"	19
"Daniela de Melo Crosara"	68	"Ana Silveira"	19
"Fernando Rodrigues Martins"	69	"Ana Silveira"	19
"Gustavo de Carvalho Marin"	69	"Ana Silveira"	19
"Ademir Cavalheiro"	64	"Ana Silveira"	19
"Adevailton Bernardo dos Santos"	68	"Ana Silveira"	19
"Alessandra Riposati Arantes"	65	"Ana Silveira"	19
"Djalmir Nestor Messias"	66	"Ana Silveira"	19
"Marcel Novaes"	66	"Ana Silveira"	19
"Alberto da Silva Morais"	70	"Ana Silveira"	19
"Carlos Hernrique Gomes"	65	"Ana Silveira"	19
"Daniela Cristina de Oliveira"	72	"Ana Silveira"	19
"Disney Oliver"	71	"Ana Silveira"	19
"Henrique Tomaz Gonzaga"	68	"Ana Silveira"	19
"Jamil Salem"	66	"Ana Silveira"	19
"Julia Vingadora"	71	"Ana Silveira"	19
"Roberto Carlos"	65	"Ana Silveira"	19
"Cláudio Assembly"	64	"Ana Silveira"	19
"Elaine Java"	63	"Ana Silveira"	19
"Lilian Rodrigues Sant’ Anna Campos"	70	"Ana Silveira"	19
"Clelia Regina Cafer"	66	"Ana Silveira"	19
"Marisa Aparecida Elias"	70	"Ana Silveira"	19
"Barbara Dias Rezende Gontijo"	63	"Ana Silveira"	19
"Tatiana Carneiro de Resende"	63	"Ana Silveira"	19
"Alessandro Gomes Enoque"	70	"Ana Silveira"	19
"Alex Fernando Borges"	68	"Ana Silveira"	19
"Alexandre Alves Alvenha"	70	"Ana Silveira"	19
"Alexandre Cacheffo"	71	"Ana Silveira"	19
"Alexandre Calzavara Yoshida"	72	"Ana Silveira"	19
"Severo Snape"	54	"Ana Silveira"	19
"Gina Maira"	65	"Guilherme da Cunha"	21
"Marcelo Keese Albertini"	62	"Guilherme da Cunha"	21
"Rivalino Matias Júnior"	69	"Guilherme da Cunha"	21
"André Backes"	63	"Guilherme da Cunha"	21
"Bruno Augusto Nassif Travençolo"	66	"Guilherme da Cunha"	21
"Luiz Gustavo Almeida Martins"	67	"Guilherme da Cunha"	21
"Ailton Gonçalves Rodrigues Junior"	69	"Guilherme da Cunha"	21
"Ariádine Cristine de Almeida"	71	"Guilherme da Cunha"	21
"Giuliano Buzá Jacobucci"	67	"Guilherme da Cunha"	21
"Jeamylle Nilin Gonçalves"	70	"Guilherme da Cunha"	21
"Cassiano Aimberê Dorneles Welker"	69	"Guilherme da Cunha"	21
"Admilson Lopes dos Santos"	72	"Guilherme da Cunha"	21
"Adriana Rodrigues da Silva"	68	"Guilherme da Cunha"	21
"Camila Mariana Ruiz"	71	"Guilherme da Cunha"	21
"Fernando Rodrigo Rafaeli"	68	"Guilherme da Cunha"	21
"Taciana Oliveira Souza"	69	"Guilherme da Cunha"	21
"Jean Ponciano"	69	"Guilherme da Cunha"	21
"Elaine Ribeiro"	67	"Guilherme da Cunha"	21
"Alexsandro Soares"	71	"Guilherme da Cunha"	21
"Pedro Frosi"	70	"Guilherme da Cunha"	21
"Marcia Aparecida Fernandes"	65	"Guilherme da Cunha"	21
"Adriano Mota Loyola"	69	"Guilherme da Cunha"	21
"Alessandra Maia de Castro Prado"	71	"Guilherme da Cunha"	21
"Álex Moreira Herval"	67	"Guilherme da Cunha"	21
"Ana Paula Turrioni Hidalgo"	66	"Guilherme da Cunha"	21
"Ana Paula de Lima Oliveira"	69	"Guilherme da Cunha"	21
"Belchior de Sousa"	68	"Guilherme da Cunha"	21
"Elsieni Coelho da Silva"	63	"Guilherme da Cunha"	21
"Gastao da Cunha Frota"	67	"Guilherme da Cunha"	21
"Nikoleta Tzvetanova Kerinska"	65	"Guilherme da Cunha"	21
"Renato Palumbo Doria"	63	"Guilherme da Cunha"	21
"Adriana Pastorello Buim Arena"	67	"Guilherme da Cunha"	21
"Aldeci Cacique Calixto"	72	"Guilherme da Cunha"	21
"Aléxia Pádua Franco"	69	"Guilherme da Cunha"	21
"Ana Beatriz da Silva Duarte"	62	"Guilherme da Cunha"	21
"Andrea Maturano Longarezi"	72	"Guilherme da Cunha"	21
"Jailson Mendes"	70	"Guilherme da Cunha"	21
"Gabriel Jesus"	68	"Guilherme da Cunha"	21
"Luciano Hulk"	70	"Guilherme da Cunha"	21
"João Guilherme"	70	"Guilherme da Cunha"	21
"Péricles Mendes"	63	"Guilherme da Cunha"	21
"Alcino Eduardo Bonella"	64	"Guilherme da Cunha"	21
"Alexandre Guimarães Tadeu de Soares"	68	"Guilherme da Cunha"	21
"Ana Maria Said"	70	"Guilherme da Cunha"	21
"Anselmo Tadeu Ferreira"	63	"Guilherme da Cunha"	21
"Dennys Garcia Xavier"	70	"Guilherme da Cunha"	21
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Guilherme da Cunha"	21
"Lucas de Assis Ribeiro"	72	"Guilherme da Cunha"	21
"Natália Mundim Tôrres"	72	"Guilherme da Cunha"	21
"Tiago Wilson Patriarca Mineo "	68	"Guilherme da Cunha"	21
"Neide Maria da Silva "	64	"Guilherme da Cunha"	21
"Alexandre Garrido da Silva"	71	"Guilherme da Cunha"	21
"Beatriz Corrêa Camargo"	72	"Guilherme da Cunha"	21
"Daniela de Melo Crosara"	68	"Guilherme da Cunha"	21
"Fernando Rodrigues Martins"	69	"Guilherme da Cunha"	21
"Gustavo de Carvalho Marin"	69	"Guilherme da Cunha"	21
"Ademir Cavalheiro"	64	"Guilherme da Cunha"	21
"Adevailton Bernardo dos Santos"	68	"Guilherme da Cunha"	21
"Alessandra Riposati Arantes"	65	"Guilherme da Cunha"	21
"Djalmir Nestor Messias"	66	"Guilherme da Cunha"	21
"Marcel Novaes"	66	"Guilherme da Cunha"	21
"Alberto da Silva Morais"	70	"Guilherme da Cunha"	21
"Carlos Hernrique Gomes"	65	"Guilherme da Cunha"	21
"Daniela Cristina de Oliveira"	72	"Guilherme da Cunha"	21
"Disney Oliver"	71	"Guilherme da Cunha"	21
"Henrique Tomaz Gonzaga"	68	"Guilherme da Cunha"	21
"Jamil Salem"	66	"Guilherme da Cunha"	21
"Julia Vingadora"	71	"Guilherme da Cunha"	21
"Roberto Carlos"	65	"Guilherme da Cunha"	21
"Cláudio Assembly"	64	"Guilherme da Cunha"	21
"Elaine Java"	63	"Guilherme da Cunha"	21
"Lilian Rodrigues Sant’ Anna Campos"	70	"Guilherme da Cunha"	21
"Clelia Regina Cafer"	66	"Guilherme da Cunha"	21
"Marisa Aparecida Elias"	70	"Guilherme da Cunha"	21
"Barbara Dias Rezende Gontijo"	63	"Guilherme da Cunha"	21
"Tatiana Carneiro de Resende"	63	"Guilherme da Cunha"	21
"Alessandro Gomes Enoque"	70	"Guilherme da Cunha"	21
"Alex Fernando Borges"	68	"Guilherme da Cunha"	21
"Alexandre Alves Alvenha"	70	"Guilherme da Cunha"	21
"Alexandre Cacheffo"	71	"Guilherme da Cunha"	21
"Alexandre Calzavara Yoshida"	72	"Guilherme da Cunha"	21
"Severo Snape"	54	"Guilherme da Cunha"	21
"Gina Maira"	65	"Davi Lucca Duarte"	48
"Marcelo Keese Albertini"	62	"Davi Lucca Duarte"	48
"Rivalino Matias Júnior"	69	"Davi Lucca Duarte"	48
"André Backes"	63	"Davi Lucca Duarte"	48
"Bruno Augusto Nassif Travençolo"	66	"Davi Lucca Duarte"	48
"Luiz Gustavo Almeida Martins"	67	"Davi Lucca Duarte"	48
"Ailton Gonçalves Rodrigues Junior"	69	"Davi Lucca Duarte"	48
"Ariádine Cristine de Almeida"	71	"Davi Lucca Duarte"	48
"Giuliano Buzá Jacobucci"	67	"Davi Lucca Duarte"	48
"Jeamylle Nilin Gonçalves"	70	"Davi Lucca Duarte"	48
"Cassiano Aimberê Dorneles Welker"	69	"Davi Lucca Duarte"	48
"Admilson Lopes dos Santos"	72	"Davi Lucca Duarte"	48
"Adriana Rodrigues da Silva"	68	"Davi Lucca Duarte"	48
"Camila Mariana Ruiz"	71	"Davi Lucca Duarte"	48
"Fernando Rodrigo Rafaeli"	68	"Davi Lucca Duarte"	48
"Taciana Oliveira Souza"	69	"Davi Lucca Duarte"	48
"Jean Ponciano"	69	"Davi Lucca Duarte"	48
"Elaine Ribeiro"	67	"Davi Lucca Duarte"	48
"Alexsandro Soares"	71	"Davi Lucca Duarte"	48
"Pedro Frosi"	70	"Davi Lucca Duarte"	48
"Marcia Aparecida Fernandes"	65	"Davi Lucca Duarte"	48
"Adriano Mota Loyola"	69	"Davi Lucca Duarte"	48
"Alessandra Maia de Castro Prado"	71	"Davi Lucca Duarte"	48
"Álex Moreira Herval"	67	"Davi Lucca Duarte"	48
"Ana Paula Turrioni Hidalgo"	66	"Davi Lucca Duarte"	48
"Ana Paula de Lima Oliveira"	69	"Davi Lucca Duarte"	48
"Belchior de Sousa"	68	"Davi Lucca Duarte"	48
"Elsieni Coelho da Silva"	63	"Davi Lucca Duarte"	48
"Gastao da Cunha Frota"	67	"Davi Lucca Duarte"	48
"Nikoleta Tzvetanova Kerinska"	65	"Davi Lucca Duarte"	48
"Renato Palumbo Doria"	63	"Davi Lucca Duarte"	48
"Adriana Pastorello Buim Arena"	67	"Davi Lucca Duarte"	48
"Aldeci Cacique Calixto"	72	"Davi Lucca Duarte"	48
"Aléxia Pádua Franco"	69	"Davi Lucca Duarte"	48
"Ana Beatriz da Silva Duarte"	62	"Davi Lucca Duarte"	48
"Andrea Maturano Longarezi"	72	"Davi Lucca Duarte"	48
"Jailson Mendes"	70	"Davi Lucca Duarte"	48
"Gabriel Jesus"	68	"Davi Lucca Duarte"	48
"Luciano Hulk"	70	"Davi Lucca Duarte"	48
"João Guilherme"	70	"Davi Lucca Duarte"	48
"Péricles Mendes"	63	"Davi Lucca Duarte"	48
"Alcino Eduardo Bonella"	64	"Davi Lucca Duarte"	48
"Alexandre Guimarães Tadeu de Soares"	68	"Davi Lucca Duarte"	48
"Ana Maria Said"	70	"Davi Lucca Duarte"	48
"Anselmo Tadeu Ferreira"	63	"Davi Lucca Duarte"	48
"Dennys Garcia Xavier"	70	"Davi Lucca Duarte"	48
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Davi Lucca Duarte"	48
"Lucas de Assis Ribeiro"	72	"Davi Lucca Duarte"	48
"Natália Mundim Tôrres"	72	"Davi Lucca Duarte"	48
"Tiago Wilson Patriarca Mineo "	68	"Davi Lucca Duarte"	48
"Neide Maria da Silva "	64	"Davi Lucca Duarte"	48
"Alexandre Garrido da Silva"	71	"Davi Lucca Duarte"	48
"Beatriz Corrêa Camargo"	72	"Davi Lucca Duarte"	48
"Daniela de Melo Crosara"	68	"Davi Lucca Duarte"	48
"Fernando Rodrigues Martins"	69	"Davi Lucca Duarte"	48
"Gustavo de Carvalho Marin"	69	"Davi Lucca Duarte"	48
"Ademir Cavalheiro"	64	"Davi Lucca Duarte"	48
"Adevailton Bernardo dos Santos"	68	"Davi Lucca Duarte"	48
"Alessandra Riposati Arantes"	65	"Davi Lucca Duarte"	48
"Djalmir Nestor Messias"	66	"Davi Lucca Duarte"	48
"Marcel Novaes"	66	"Davi Lucca Duarte"	48
"Alberto da Silva Morais"	70	"Davi Lucca Duarte"	48
"Carlos Hernrique Gomes"	65	"Davi Lucca Duarte"	48
"Daniela Cristina de Oliveira"	72	"Davi Lucca Duarte"	48
"Disney Oliver"	71	"Davi Lucca Duarte"	48
"Henrique Tomaz Gonzaga"	68	"Davi Lucca Duarte"	48
"Jamil Salem"	66	"Davi Lucca Duarte"	48
"Julia Vingadora"	71	"Davi Lucca Duarte"	48
"Roberto Carlos"	65	"Davi Lucca Duarte"	48
"Cláudio Assembly"	64	"Davi Lucca Duarte"	48
"Elaine Java"	63	"Davi Lucca Duarte"	48
"Lilian Rodrigues Sant’ Anna Campos"	70	"Davi Lucca Duarte"	48
"Clelia Regina Cafer"	66	"Davi Lucca Duarte"	48
"Marisa Aparecida Elias"	70	"Davi Lucca Duarte"	48
"Barbara Dias Rezende Gontijo"	63	"Davi Lucca Duarte"	48
"Tatiana Carneiro de Resende"	63	"Davi Lucca Duarte"	48
"Alessandro Gomes Enoque"	70	"Davi Lucca Duarte"	48
"Alex Fernando Borges"	68	"Davi Lucca Duarte"	48
"Alexandre Alves Alvenha"	70	"Davi Lucca Duarte"	48
"Alexandre Cacheffo"	71	"Davi Lucca Duarte"	48
"Alexandre Calzavara Yoshida"	72	"Davi Lucca Duarte"	48
"Severo Snape"	54	"Davi Lucca Duarte"	48
"Gina Maira"	65	"Henrique Corrêa de Oliveira"	22
"Marcelo Keese Albertini"	62	"Henrique Corrêa de Oliveira"	22
"Rivalino Matias Júnior"	69	"Henrique Corrêa de Oliveira"	22
"André Backes"	63	"Henrique Corrêa de Oliveira"	22
"Bruno Augusto Nassif Travençolo"	66	"Henrique Corrêa de Oliveira"	22
"Luiz Gustavo Almeida Martins"	67	"Henrique Corrêa de Oliveira"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Henrique Corrêa de Oliveira"	22
"Ariádine Cristine de Almeida"	71	"Henrique Corrêa de Oliveira"	22
"Giuliano Buzá Jacobucci"	67	"Henrique Corrêa de Oliveira"	22
"Jeamylle Nilin Gonçalves"	70	"Henrique Corrêa de Oliveira"	22
"Cassiano Aimberê Dorneles Welker"	69	"Henrique Corrêa de Oliveira"	22
"Admilson Lopes dos Santos"	72	"Henrique Corrêa de Oliveira"	22
"Adriana Rodrigues da Silva"	68	"Henrique Corrêa de Oliveira"	22
"Camila Mariana Ruiz"	71	"Henrique Corrêa de Oliveira"	22
"Fernando Rodrigo Rafaeli"	68	"Henrique Corrêa de Oliveira"	22
"Taciana Oliveira Souza"	69	"Henrique Corrêa de Oliveira"	22
"Jean Ponciano"	69	"Henrique Corrêa de Oliveira"	22
"Elaine Ribeiro"	67	"Henrique Corrêa de Oliveira"	22
"Alexsandro Soares"	71	"Henrique Corrêa de Oliveira"	22
"Pedro Frosi"	70	"Henrique Corrêa de Oliveira"	22
"Marcia Aparecida Fernandes"	65	"Henrique Corrêa de Oliveira"	22
"Adriano Mota Loyola"	69	"Henrique Corrêa de Oliveira"	22
"Alessandra Maia de Castro Prado"	71	"Henrique Corrêa de Oliveira"	22
"Álex Moreira Herval"	67	"Henrique Corrêa de Oliveira"	22
"Ana Paula Turrioni Hidalgo"	66	"Henrique Corrêa de Oliveira"	22
"Ana Paula de Lima Oliveira"	69	"Henrique Corrêa de Oliveira"	22
"Belchior de Sousa"	68	"Henrique Corrêa de Oliveira"	22
"Elsieni Coelho da Silva"	63	"Henrique Corrêa de Oliveira"	22
"Gastao da Cunha Frota"	67	"Henrique Corrêa de Oliveira"	22
"Nikoleta Tzvetanova Kerinska"	65	"Henrique Corrêa de Oliveira"	22
"Renato Palumbo Doria"	63	"Henrique Corrêa de Oliveira"	22
"Adriana Pastorello Buim Arena"	67	"Henrique Corrêa de Oliveira"	22
"Aldeci Cacique Calixto"	72	"Henrique Corrêa de Oliveira"	22
"Aléxia Pádua Franco"	69	"Henrique Corrêa de Oliveira"	22
"Ana Beatriz da Silva Duarte"	62	"Henrique Corrêa de Oliveira"	22
"Andrea Maturano Longarezi"	72	"Henrique Corrêa de Oliveira"	22
"Jailson Mendes"	70	"Henrique Corrêa de Oliveira"	22
"Gabriel Jesus"	68	"Henrique Corrêa de Oliveira"	22
"Luciano Hulk"	70	"Henrique Corrêa de Oliveira"	22
"João Guilherme"	70	"Henrique Corrêa de Oliveira"	22
"Péricles Mendes"	63	"Henrique Corrêa de Oliveira"	22
"Alcino Eduardo Bonella"	64	"Henrique Corrêa de Oliveira"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Henrique Corrêa de Oliveira"	22
"Ana Maria Said"	70	"Henrique Corrêa de Oliveira"	22
"Anselmo Tadeu Ferreira"	63	"Henrique Corrêa de Oliveira"	22
"Dennys Garcia Xavier"	70	"Henrique Corrêa de Oliveira"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Henrique Corrêa de Oliveira"	22
"Lucas de Assis Ribeiro"	72	"Henrique Corrêa de Oliveira"	22
"Natália Mundim Tôrres"	72	"Henrique Corrêa de Oliveira"	22
"Tiago Wilson Patriarca Mineo "	68	"Henrique Corrêa de Oliveira"	22
"Neide Maria da Silva "	64	"Henrique Corrêa de Oliveira"	22
"Alexandre Garrido da Silva"	71	"Henrique Corrêa de Oliveira"	22
"Beatriz Corrêa Camargo"	72	"Henrique Corrêa de Oliveira"	22
"Daniela de Melo Crosara"	68	"Henrique Corrêa de Oliveira"	22
"Fernando Rodrigues Martins"	69	"Henrique Corrêa de Oliveira"	22
"Gustavo de Carvalho Marin"	69	"Henrique Corrêa de Oliveira"	22
"Ademir Cavalheiro"	64	"Henrique Corrêa de Oliveira"	22
"Adevailton Bernardo dos Santos"	68	"Henrique Corrêa de Oliveira"	22
"Alessandra Riposati Arantes"	65	"Henrique Corrêa de Oliveira"	22
"Djalmir Nestor Messias"	66	"Henrique Corrêa de Oliveira"	22
"Marcel Novaes"	66	"Henrique Corrêa de Oliveira"	22
"Alberto da Silva Morais"	70	"Henrique Corrêa de Oliveira"	22
"Carlos Hernrique Gomes"	65	"Henrique Corrêa de Oliveira"	22
"Daniela Cristina de Oliveira"	72	"Henrique Corrêa de Oliveira"	22
"Disney Oliver"	71	"Henrique Corrêa de Oliveira"	22
"Henrique Tomaz Gonzaga"	68	"Henrique Corrêa de Oliveira"	22
"Jamil Salem"	66	"Henrique Corrêa de Oliveira"	22
"Julia Vingadora"	71	"Henrique Corrêa de Oliveira"	22
"Roberto Carlos"	65	"Henrique Corrêa de Oliveira"	22
"Cláudio Assembly"	64	"Henrique Corrêa de Oliveira"	22
"Elaine Java"	63	"Henrique Corrêa de Oliveira"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Henrique Corrêa de Oliveira"	22
"Clelia Regina Cafer"	66	"Henrique Corrêa de Oliveira"	22
"Marisa Aparecida Elias"	70	"Henrique Corrêa de Oliveira"	22
"Barbara Dias Rezende Gontijo"	63	"Henrique Corrêa de Oliveira"	22
"Tatiana Carneiro de Resende"	63	"Henrique Corrêa de Oliveira"	22
"Alessandro Gomes Enoque"	70	"Henrique Corrêa de Oliveira"	22
"Alex Fernando Borges"	68	"Henrique Corrêa de Oliveira"	22
"Alexandre Alves Alvenha"	70	"Henrique Corrêa de Oliveira"	22
"Alexandre Cacheffo"	71	"Henrique Corrêa de Oliveira"	22
"Alexandre Calzavara Yoshida"	72	"Henrique Corrêa de Oliveira"	22
"Severo Snape"	54	"Henrique Corrêa de Oliveira"	22
"Gina Maira"	65	"Gabriel de Araujo"	22
"Marcelo Keese Albertini"	62	"Gabriel de Araujo"	22
"Rivalino Matias Júnior"	69	"Gabriel de Araujo"	22
"André Backes"	63	"Gabriel de Araujo"	22
"Bruno Augusto Nassif Travençolo"	66	"Gabriel de Araujo"	22
"Luiz Gustavo Almeida Martins"	67	"Gabriel de Araujo"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Gabriel de Araujo"	22
"Ariádine Cristine de Almeida"	71	"Gabriel de Araujo"	22
"Giuliano Buzá Jacobucci"	67	"Gabriel de Araujo"	22
"Jeamylle Nilin Gonçalves"	70	"Gabriel de Araujo"	22
"Cassiano Aimberê Dorneles Welker"	69	"Gabriel de Araujo"	22
"Admilson Lopes dos Santos"	72	"Gabriel de Araujo"	22
"Adriana Rodrigues da Silva"	68	"Gabriel de Araujo"	22
"Camila Mariana Ruiz"	71	"Gabriel de Araujo"	22
"Fernando Rodrigo Rafaeli"	68	"Gabriel de Araujo"	22
"Taciana Oliveira Souza"	69	"Gabriel de Araujo"	22
"Jean Ponciano"	69	"Gabriel de Araujo"	22
"Elaine Ribeiro"	67	"Gabriel de Araujo"	22
"Alexsandro Soares"	71	"Gabriel de Araujo"	22
"Pedro Frosi"	70	"Gabriel de Araujo"	22
"Marcia Aparecida Fernandes"	65	"Gabriel de Araujo"	22
"Adriano Mota Loyola"	69	"Gabriel de Araujo"	22
"Alessandra Maia de Castro Prado"	71	"Gabriel de Araujo"	22
"Álex Moreira Herval"	67	"Gabriel de Araujo"	22
"Ana Paula Turrioni Hidalgo"	66	"Gabriel de Araujo"	22
"Ana Paula de Lima Oliveira"	69	"Gabriel de Araujo"	22
"Belchior de Sousa"	68	"Gabriel de Araujo"	22
"Elsieni Coelho da Silva"	63	"Gabriel de Araujo"	22
"Gastao da Cunha Frota"	67	"Gabriel de Araujo"	22
"Nikoleta Tzvetanova Kerinska"	65	"Gabriel de Araujo"	22
"Renato Palumbo Doria"	63	"Gabriel de Araujo"	22
"Adriana Pastorello Buim Arena"	67	"Gabriel de Araujo"	22
"Aldeci Cacique Calixto"	72	"Gabriel de Araujo"	22
"Aléxia Pádua Franco"	69	"Gabriel de Araujo"	22
"Ana Beatriz da Silva Duarte"	62	"Gabriel de Araujo"	22
"Andrea Maturano Longarezi"	72	"Gabriel de Araujo"	22
"Jailson Mendes"	70	"Gabriel de Araujo"	22
"Gabriel Jesus"	68	"Gabriel de Araujo"	22
"Luciano Hulk"	70	"Gabriel de Araujo"	22
"João Guilherme"	70	"Gabriel de Araujo"	22
"Péricles Mendes"	63	"Gabriel de Araujo"	22
"Alcino Eduardo Bonella"	64	"Gabriel de Araujo"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Gabriel de Araujo"	22
"Ana Maria Said"	70	"Gabriel de Araujo"	22
"Anselmo Tadeu Ferreira"	63	"Gabriel de Araujo"	22
"Dennys Garcia Xavier"	70	"Gabriel de Araujo"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Gabriel de Araujo"	22
"Lucas de Assis Ribeiro"	72	"Gabriel de Araujo"	22
"Natália Mundim Tôrres"	72	"Gabriel de Araujo"	22
"Tiago Wilson Patriarca Mineo "	68	"Gabriel de Araujo"	22
"Neide Maria da Silva "	64	"Gabriel de Araujo"	22
"Alexandre Garrido da Silva"	71	"Gabriel de Araujo"	22
"Beatriz Corrêa Camargo"	72	"Gabriel de Araujo"	22
"Daniela de Melo Crosara"	68	"Gabriel de Araujo"	22
"Fernando Rodrigues Martins"	69	"Gabriel de Araujo"	22
"Gustavo de Carvalho Marin"	69	"Gabriel de Araujo"	22
"Ademir Cavalheiro"	64	"Gabriel de Araujo"	22
"Adevailton Bernardo dos Santos"	68	"Gabriel de Araujo"	22
"Alessandra Riposati Arantes"	65	"Gabriel de Araujo"	22
"Djalmir Nestor Messias"	66	"Gabriel de Araujo"	22
"Marcel Novaes"	66	"Gabriel de Araujo"	22
"Alberto da Silva Morais"	70	"Gabriel de Araujo"	22
"Carlos Hernrique Gomes"	65	"Gabriel de Araujo"	22
"Daniela Cristina de Oliveira"	72	"Gabriel de Araujo"	22
"Disney Oliver"	71	"Gabriel de Araujo"	22
"Henrique Tomaz Gonzaga"	68	"Gabriel de Araujo"	22
"Jamil Salem"	66	"Gabriel de Araujo"	22
"Julia Vingadora"	71	"Gabriel de Araujo"	22
"Roberto Carlos"	65	"Gabriel de Araujo"	22
"Cláudio Assembly"	64	"Gabriel de Araujo"	22
"Elaine Java"	63	"Gabriel de Araujo"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Gabriel de Araujo"	22
"Clelia Regina Cafer"	66	"Gabriel de Araujo"	22
"Marisa Aparecida Elias"	70	"Gabriel de Araujo"	22
"Barbara Dias Rezende Gontijo"	63	"Gabriel de Araujo"	22
"Tatiana Carneiro de Resende"	63	"Gabriel de Araujo"	22
"Alessandro Gomes Enoque"	70	"Gabriel de Araujo"	22
"Alex Fernando Borges"	68	"Gabriel de Araujo"	22
"Alexandre Alves Alvenha"	70	"Gabriel de Araujo"	22
"Alexandre Cacheffo"	71	"Gabriel de Araujo"	22
"Alexandre Calzavara Yoshida"	72	"Gabriel de Araujo"	22
"Severo Snape"	54	"Gabriel de Araujo"	22
"Gina Maira"	65	"Luisa Gomes Ferreira"	22
"Marcelo Keese Albertini"	62	"Luisa Gomes Ferreira"	22
"Rivalino Matias Júnior"	69	"Luisa Gomes Ferreira"	22
"André Backes"	63	"Luisa Gomes Ferreira"	22
"Bruno Augusto Nassif Travençolo"	66	"Luisa Gomes Ferreira"	22
"Luiz Gustavo Almeida Martins"	67	"Luisa Gomes Ferreira"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Luisa Gomes Ferreira"	22
"Ariádine Cristine de Almeida"	71	"Luisa Gomes Ferreira"	22
"Giuliano Buzá Jacobucci"	67	"Luisa Gomes Ferreira"	22
"Jeamylle Nilin Gonçalves"	70	"Luisa Gomes Ferreira"	22
"Cassiano Aimberê Dorneles Welker"	69	"Luisa Gomes Ferreira"	22
"Admilson Lopes dos Santos"	72	"Luisa Gomes Ferreira"	22
"Adriana Rodrigues da Silva"	68	"Luisa Gomes Ferreira"	22
"Camila Mariana Ruiz"	71	"Luisa Gomes Ferreira"	22
"Fernando Rodrigo Rafaeli"	68	"Luisa Gomes Ferreira"	22
"Taciana Oliveira Souza"	69	"Luisa Gomes Ferreira"	22
"Jean Ponciano"	69	"Luisa Gomes Ferreira"	22
"Elaine Ribeiro"	67	"Luisa Gomes Ferreira"	22
"Alexsandro Soares"	71	"Luisa Gomes Ferreira"	22
"Pedro Frosi"	70	"Luisa Gomes Ferreira"	22
"Marcia Aparecida Fernandes"	65	"Luisa Gomes Ferreira"	22
"Adriano Mota Loyola"	69	"Luisa Gomes Ferreira"	22
"Alessandra Maia de Castro Prado"	71	"Luisa Gomes Ferreira"	22
"Álex Moreira Herval"	67	"Luisa Gomes Ferreira"	22
"Ana Paula Turrioni Hidalgo"	66	"Luisa Gomes Ferreira"	22
"Ana Paula de Lima Oliveira"	69	"Luisa Gomes Ferreira"	22
"Belchior de Sousa"	68	"Luisa Gomes Ferreira"	22
"Elsieni Coelho da Silva"	63	"Luisa Gomes Ferreira"	22
"Gastao da Cunha Frota"	67	"Luisa Gomes Ferreira"	22
"Nikoleta Tzvetanova Kerinska"	65	"Luisa Gomes Ferreira"	22
"Renato Palumbo Doria"	63	"Luisa Gomes Ferreira"	22
"Adriana Pastorello Buim Arena"	67	"Luisa Gomes Ferreira"	22
"Aldeci Cacique Calixto"	72	"Luisa Gomes Ferreira"	22
"Aléxia Pádua Franco"	69	"Luisa Gomes Ferreira"	22
"Ana Beatriz da Silva Duarte"	62	"Luisa Gomes Ferreira"	22
"Andrea Maturano Longarezi"	72	"Luisa Gomes Ferreira"	22
"Jailson Mendes"	70	"Luisa Gomes Ferreira"	22
"Gabriel Jesus"	68	"Luisa Gomes Ferreira"	22
"Luciano Hulk"	70	"Luisa Gomes Ferreira"	22
"João Guilherme"	70	"Luisa Gomes Ferreira"	22
"Péricles Mendes"	63	"Luisa Gomes Ferreira"	22
"Alcino Eduardo Bonella"	64	"Luisa Gomes Ferreira"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Luisa Gomes Ferreira"	22
"Ana Maria Said"	70	"Luisa Gomes Ferreira"	22
"Anselmo Tadeu Ferreira"	63	"Luisa Gomes Ferreira"	22
"Dennys Garcia Xavier"	70	"Luisa Gomes Ferreira"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Luisa Gomes Ferreira"	22
"Lucas de Assis Ribeiro"	72	"Luisa Gomes Ferreira"	22
"Natália Mundim Tôrres"	72	"Luisa Gomes Ferreira"	22
"Tiago Wilson Patriarca Mineo "	68	"Luisa Gomes Ferreira"	22
"Neide Maria da Silva "	64	"Luisa Gomes Ferreira"	22
"Alexandre Garrido da Silva"	71	"Luisa Gomes Ferreira"	22
"Beatriz Corrêa Camargo"	72	"Luisa Gomes Ferreira"	22
"Daniela de Melo Crosara"	68	"Luisa Gomes Ferreira"	22
"Fernando Rodrigues Martins"	69	"Luisa Gomes Ferreira"	22
"Gustavo de Carvalho Marin"	69	"Luisa Gomes Ferreira"	22
"Ademir Cavalheiro"	64	"Luisa Gomes Ferreira"	22
"Adevailton Bernardo dos Santos"	68	"Luisa Gomes Ferreira"	22
"Alessandra Riposati Arantes"	65	"Luisa Gomes Ferreira"	22
"Djalmir Nestor Messias"	66	"Luisa Gomes Ferreira"	22
"Marcel Novaes"	66	"Luisa Gomes Ferreira"	22
"Alberto da Silva Morais"	70	"Luisa Gomes Ferreira"	22
"Carlos Hernrique Gomes"	65	"Luisa Gomes Ferreira"	22
"Daniela Cristina de Oliveira"	72	"Luisa Gomes Ferreira"	22
"Disney Oliver"	71	"Luisa Gomes Ferreira"	22
"Henrique Tomaz Gonzaga"	68	"Luisa Gomes Ferreira"	22
"Jamil Salem"	66	"Luisa Gomes Ferreira"	22
"Julia Vingadora"	71	"Luisa Gomes Ferreira"	22
"Roberto Carlos"	65	"Luisa Gomes Ferreira"	22
"Cláudio Assembly"	64	"Luisa Gomes Ferreira"	22
"Elaine Java"	63	"Luisa Gomes Ferreira"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Luisa Gomes Ferreira"	22
"Clelia Regina Cafer"	66	"Luisa Gomes Ferreira"	22
"Marisa Aparecida Elias"	70	"Luisa Gomes Ferreira"	22
"Barbara Dias Rezende Gontijo"	63	"Luisa Gomes Ferreira"	22
"Tatiana Carneiro de Resende"	63	"Luisa Gomes Ferreira"	22
"Alessandro Gomes Enoque"	70	"Luisa Gomes Ferreira"	22
"Alex Fernando Borges"	68	"Luisa Gomes Ferreira"	22
"Alexandre Alves Alvenha"	70	"Luisa Gomes Ferreira"	22
"Alexandre Cacheffo"	71	"Luisa Gomes Ferreira"	22
"Alexandre Calzavara Yoshida"	72	"Luisa Gomes Ferreira"	22
"Severo Snape"	54	"Luisa Gomes Ferreira"	22
"Gina Maira"	65	"Gabriela Pereira"	22
"Marcelo Keese Albertini"	62	"Gabriela Pereira"	22
"Rivalino Matias Júnior"	69	"Gabriela Pereira"	22
"André Backes"	63	"Gabriela Pereira"	22
"Bruno Augusto Nassif Travençolo"	66	"Gabriela Pereira"	22
"Luiz Gustavo Almeida Martins"	67	"Gabriela Pereira"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Gabriela Pereira"	22
"Ariádine Cristine de Almeida"	71	"Gabriela Pereira"	22
"Giuliano Buzá Jacobucci"	67	"Gabriela Pereira"	22
"Jeamylle Nilin Gonçalves"	70	"Gabriela Pereira"	22
"Cassiano Aimberê Dorneles Welker"	69	"Gabriela Pereira"	22
"Admilson Lopes dos Santos"	72	"Gabriela Pereira"	22
"Adriana Rodrigues da Silva"	68	"Gabriela Pereira"	22
"Camila Mariana Ruiz"	71	"Gabriela Pereira"	22
"Fernando Rodrigo Rafaeli"	68	"Gabriela Pereira"	22
"Taciana Oliveira Souza"	69	"Gabriela Pereira"	22
"Jean Ponciano"	69	"Gabriela Pereira"	22
"Elaine Ribeiro"	67	"Gabriela Pereira"	22
"Alexsandro Soares"	71	"Gabriela Pereira"	22
"Pedro Frosi"	70	"Gabriela Pereira"	22
"Marcia Aparecida Fernandes"	65	"Gabriela Pereira"	22
"Adriano Mota Loyola"	69	"Gabriela Pereira"	22
"Alessandra Maia de Castro Prado"	71	"Gabriela Pereira"	22
"Álex Moreira Herval"	67	"Gabriela Pereira"	22
"Ana Paula Turrioni Hidalgo"	66	"Gabriela Pereira"	22
"Ana Paula de Lima Oliveira"	69	"Gabriela Pereira"	22
"Belchior de Sousa"	68	"Gabriela Pereira"	22
"Elsieni Coelho da Silva"	63	"Gabriela Pereira"	22
"Gastao da Cunha Frota"	67	"Gabriela Pereira"	22
"Nikoleta Tzvetanova Kerinska"	65	"Gabriela Pereira"	22
"Renato Palumbo Doria"	63	"Gabriela Pereira"	22
"Adriana Pastorello Buim Arena"	67	"Gabriela Pereira"	22
"Aldeci Cacique Calixto"	72	"Gabriela Pereira"	22
"Aléxia Pádua Franco"	69	"Gabriela Pereira"	22
"Ana Beatriz da Silva Duarte"	62	"Gabriela Pereira"	22
"Andrea Maturano Longarezi"	72	"Gabriela Pereira"	22
"Jailson Mendes"	70	"Gabriela Pereira"	22
"Gabriel Jesus"	68	"Gabriela Pereira"	22
"Luciano Hulk"	70	"Gabriela Pereira"	22
"João Guilherme"	70	"Gabriela Pereira"	22
"Péricles Mendes"	63	"Gabriela Pereira"	22
"Alcino Eduardo Bonella"	64	"Gabriela Pereira"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Gabriela Pereira"	22
"Ana Maria Said"	70	"Gabriela Pereira"	22
"Anselmo Tadeu Ferreira"	63	"Gabriela Pereira"	22
"Dennys Garcia Xavier"	70	"Gabriela Pereira"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Gabriela Pereira"	22
"Lucas de Assis Ribeiro"	72	"Gabriela Pereira"	22
"Natália Mundim Tôrres"	72	"Gabriela Pereira"	22
"Tiago Wilson Patriarca Mineo "	68	"Gabriela Pereira"	22
"Neide Maria da Silva "	64	"Gabriela Pereira"	22
"Alexandre Garrido da Silva"	71	"Gabriela Pereira"	22
"Beatriz Corrêa Camargo"	72	"Gabriela Pereira"	22
"Daniela de Melo Crosara"	68	"Gabriela Pereira"	22
"Fernando Rodrigues Martins"	69	"Gabriela Pereira"	22
"Gustavo de Carvalho Marin"	69	"Gabriela Pereira"	22
"Ademir Cavalheiro"	64	"Gabriela Pereira"	22
"Adevailton Bernardo dos Santos"	68	"Gabriela Pereira"	22
"Alessandra Riposati Arantes"	65	"Gabriela Pereira"	22
"Djalmir Nestor Messias"	66	"Gabriela Pereira"	22
"Marcel Novaes"	66	"Gabriela Pereira"	22
"Alberto da Silva Morais"	70	"Gabriela Pereira"	22
"Carlos Hernrique Gomes"	65	"Gabriela Pereira"	22
"Daniela Cristina de Oliveira"	72	"Gabriela Pereira"	22
"Disney Oliver"	71	"Gabriela Pereira"	22
"Henrique Tomaz Gonzaga"	68	"Gabriela Pereira"	22
"Jamil Salem"	66	"Gabriela Pereira"	22
"Julia Vingadora"	71	"Gabriela Pereira"	22
"Roberto Carlos"	65	"Gabriela Pereira"	22
"Cláudio Assembly"	64	"Gabriela Pereira"	22
"Elaine Java"	63	"Gabriela Pereira"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Gabriela Pereira"	22
"Clelia Regina Cafer"	66	"Gabriela Pereira"	22
"Marisa Aparecida Elias"	70	"Gabriela Pereira"	22
"Barbara Dias Rezende Gontijo"	63	"Gabriela Pereira"	22
"Tatiana Carneiro de Resende"	63	"Gabriela Pereira"	22
"Alessandro Gomes Enoque"	70	"Gabriela Pereira"	22
"Alex Fernando Borges"	68	"Gabriela Pereira"	22
"Alexandre Alves Alvenha"	70	"Gabriela Pereira"	22
"Alexandre Cacheffo"	71	"Gabriela Pereira"	22
"Alexandre Calzavara Yoshida"	72	"Gabriela Pereira"	22
"Severo Snape"	54	"Gabriela Pereira"	22
"Gina Maira"	65	"Gabriel Alves"	22
"Marcelo Keese Albertini"	62	"Gabriel Alves"	22
"Rivalino Matias Júnior"	69	"Gabriel Alves"	22
"André Backes"	63	"Gabriel Alves"	22
"Bruno Augusto Nassif Travençolo"	66	"Gabriel Alves"	22
"Luiz Gustavo Almeida Martins"	67	"Gabriel Alves"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Gabriel Alves"	22
"Ariádine Cristine de Almeida"	71	"Gabriel Alves"	22
"Giuliano Buzá Jacobucci"	67	"Gabriel Alves"	22
"Jeamylle Nilin Gonçalves"	70	"Gabriel Alves"	22
"Cassiano Aimberê Dorneles Welker"	69	"Gabriel Alves"	22
"Admilson Lopes dos Santos"	72	"Gabriel Alves"	22
"Adriana Rodrigues da Silva"	68	"Gabriel Alves"	22
"Camila Mariana Ruiz"	71	"Gabriel Alves"	22
"Fernando Rodrigo Rafaeli"	68	"Gabriel Alves"	22
"Taciana Oliveira Souza"	69	"Gabriel Alves"	22
"Jean Ponciano"	69	"Gabriel Alves"	22
"Elaine Ribeiro"	67	"Gabriel Alves"	22
"Alexsandro Soares"	71	"Gabriel Alves"	22
"Pedro Frosi"	70	"Gabriel Alves"	22
"Marcia Aparecida Fernandes"	65	"Gabriel Alves"	22
"Adriano Mota Loyola"	69	"Gabriel Alves"	22
"Alessandra Maia de Castro Prado"	71	"Gabriel Alves"	22
"Álex Moreira Herval"	67	"Gabriel Alves"	22
"Ana Paula Turrioni Hidalgo"	66	"Gabriel Alves"	22
"Ana Paula de Lima Oliveira"	69	"Gabriel Alves"	22
"Belchior de Sousa"	68	"Gabriel Alves"	22
"Elsieni Coelho da Silva"	63	"Gabriel Alves"	22
"Gastao da Cunha Frota"	67	"Gabriel Alves"	22
"Nikoleta Tzvetanova Kerinska"	65	"Gabriel Alves"	22
"Renato Palumbo Doria"	63	"Gabriel Alves"	22
"Adriana Pastorello Buim Arena"	67	"Gabriel Alves"	22
"Aldeci Cacique Calixto"	72	"Gabriel Alves"	22
"Aléxia Pádua Franco"	69	"Gabriel Alves"	22
"Ana Beatriz da Silva Duarte"	62	"Gabriel Alves"	22
"Andrea Maturano Longarezi"	72	"Gabriel Alves"	22
"Jailson Mendes"	70	"Gabriel Alves"	22
"Gabriel Jesus"	68	"Gabriel Alves"	22
"Luciano Hulk"	70	"Gabriel Alves"	22
"João Guilherme"	70	"Gabriel Alves"	22
"Péricles Mendes"	63	"Gabriel Alves"	22
"Alcino Eduardo Bonella"	64	"Gabriel Alves"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Gabriel Alves"	22
"Ana Maria Said"	70	"Gabriel Alves"	22
"Anselmo Tadeu Ferreira"	63	"Gabriel Alves"	22
"Dennys Garcia Xavier"	70	"Gabriel Alves"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Gabriel Alves"	22
"Lucas de Assis Ribeiro"	72	"Gabriel Alves"	22
"Natália Mundim Tôrres"	72	"Gabriel Alves"	22
"Tiago Wilson Patriarca Mineo "	68	"Gabriel Alves"	22
"Neide Maria da Silva "	64	"Gabriel Alves"	22
"Alexandre Garrido da Silva"	71	"Gabriel Alves"	22
"Beatriz Corrêa Camargo"	72	"Gabriel Alves"	22
"Daniela de Melo Crosara"	68	"Gabriel Alves"	22
"Fernando Rodrigues Martins"	69	"Gabriel Alves"	22
"Gustavo de Carvalho Marin"	69	"Gabriel Alves"	22
"Ademir Cavalheiro"	64	"Gabriel Alves"	22
"Adevailton Bernardo dos Santos"	68	"Gabriel Alves"	22
"Alessandra Riposati Arantes"	65	"Gabriel Alves"	22
"Djalmir Nestor Messias"	66	"Gabriel Alves"	22
"Marcel Novaes"	66	"Gabriel Alves"	22
"Alberto da Silva Morais"	70	"Gabriel Alves"	22
"Carlos Hernrique Gomes"	65	"Gabriel Alves"	22
"Daniela Cristina de Oliveira"	72	"Gabriel Alves"	22
"Disney Oliver"	71	"Gabriel Alves"	22
"Henrique Tomaz Gonzaga"	68	"Gabriel Alves"	22
"Jamil Salem"	66	"Gabriel Alves"	22
"Julia Vingadora"	71	"Gabriel Alves"	22
"Roberto Carlos"	65	"Gabriel Alves"	22
"Cláudio Assembly"	64	"Gabriel Alves"	22
"Elaine Java"	63	"Gabriel Alves"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Gabriel Alves"	22
"Clelia Regina Cafer"	66	"Gabriel Alves"	22
"Marisa Aparecida Elias"	70	"Gabriel Alves"	22
"Barbara Dias Rezende Gontijo"	63	"Gabriel Alves"	22
"Tatiana Carneiro de Resende"	63	"Gabriel Alves"	22
"Alessandro Gomes Enoque"	70	"Gabriel Alves"	22
"Alex Fernando Borges"	68	"Gabriel Alves"	22
"Alexandre Alves Alvenha"	70	"Gabriel Alves"	22
"Alexandre Cacheffo"	71	"Gabriel Alves"	22
"Alexandre Calzavara Yoshida"	72	"Gabriel Alves"	22
"Severo Snape"	54	"Gabriel Alves"	22
"Gina Maira"	65	"Joao Vitor Correia"	22
"Marcelo Keese Albertini"	62	"Joao Vitor Correia"	22
"Rivalino Matias Júnior"	69	"Joao Vitor Correia"	22
"André Backes"	63	"Joao Vitor Correia"	22
"Bruno Augusto Nassif Travençolo"	66	"Joao Vitor Correia"	22
"Luiz Gustavo Almeida Martins"	67	"Joao Vitor Correia"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Joao Vitor Correia"	22
"Ariádine Cristine de Almeida"	71	"Joao Vitor Correia"	22
"Giuliano Buzá Jacobucci"	67	"Joao Vitor Correia"	22
"Jeamylle Nilin Gonçalves"	70	"Joao Vitor Correia"	22
"Cassiano Aimberê Dorneles Welker"	69	"Joao Vitor Correia"	22
"Admilson Lopes dos Santos"	72	"Joao Vitor Correia"	22
"Adriana Rodrigues da Silva"	68	"Joao Vitor Correia"	22
"Camila Mariana Ruiz"	71	"Joao Vitor Correia"	22
"Fernando Rodrigo Rafaeli"	68	"Joao Vitor Correia"	22
"Taciana Oliveira Souza"	69	"Joao Vitor Correia"	22
"Jean Ponciano"	69	"Joao Vitor Correia"	22
"Elaine Ribeiro"	67	"Joao Vitor Correia"	22
"Alexsandro Soares"	71	"Joao Vitor Correia"	22
"Pedro Frosi"	70	"Joao Vitor Correia"	22
"Marcia Aparecida Fernandes"	65	"Joao Vitor Correia"	22
"Adriano Mota Loyola"	69	"Joao Vitor Correia"	22
"Alessandra Maia de Castro Prado"	71	"Joao Vitor Correia"	22
"Álex Moreira Herval"	67	"Joao Vitor Correia"	22
"Ana Paula Turrioni Hidalgo"	66	"Joao Vitor Correia"	22
"Ana Paula de Lima Oliveira"	69	"Joao Vitor Correia"	22
"Belchior de Sousa"	68	"Joao Vitor Correia"	22
"Elsieni Coelho da Silva"	63	"Joao Vitor Correia"	22
"Gastao da Cunha Frota"	67	"Joao Vitor Correia"	22
"Nikoleta Tzvetanova Kerinska"	65	"Joao Vitor Correia"	22
"Renato Palumbo Doria"	63	"Joao Vitor Correia"	22
"Adriana Pastorello Buim Arena"	67	"Joao Vitor Correia"	22
"Aldeci Cacique Calixto"	72	"Joao Vitor Correia"	22
"Aléxia Pádua Franco"	69	"Joao Vitor Correia"	22
"Ana Beatriz da Silva Duarte"	62	"Joao Vitor Correia"	22
"Andrea Maturano Longarezi"	72	"Joao Vitor Correia"	22
"Jailson Mendes"	70	"Joao Vitor Correia"	22
"Gabriel Jesus"	68	"Joao Vitor Correia"	22
"Luciano Hulk"	70	"Joao Vitor Correia"	22
"João Guilherme"	70	"Joao Vitor Correia"	22
"Péricles Mendes"	63	"Joao Vitor Correia"	22
"Alcino Eduardo Bonella"	64	"Joao Vitor Correia"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Joao Vitor Correia"	22
"Ana Maria Said"	70	"Joao Vitor Correia"	22
"Anselmo Tadeu Ferreira"	63	"Joao Vitor Correia"	22
"Dennys Garcia Xavier"	70	"Joao Vitor Correia"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Joao Vitor Correia"	22
"Lucas de Assis Ribeiro"	72	"Joao Vitor Correia"	22
"Natália Mundim Tôrres"	72	"Joao Vitor Correia"	22
"Tiago Wilson Patriarca Mineo "	68	"Joao Vitor Correia"	22
"Neide Maria da Silva "	64	"Joao Vitor Correia"	22
"Alexandre Garrido da Silva"	71	"Joao Vitor Correia"	22
"Beatriz Corrêa Camargo"	72	"Joao Vitor Correia"	22
"Daniela de Melo Crosara"	68	"Joao Vitor Correia"	22
"Fernando Rodrigues Martins"	69	"Joao Vitor Correia"	22
"Gustavo de Carvalho Marin"	69	"Joao Vitor Correia"	22
"Ademir Cavalheiro"	64	"Joao Vitor Correia"	22
"Adevailton Bernardo dos Santos"	68	"Joao Vitor Correia"	22
"Alessandra Riposati Arantes"	65	"Joao Vitor Correia"	22
"Djalmir Nestor Messias"	66	"Joao Vitor Correia"	22
"Marcel Novaes"	66	"Joao Vitor Correia"	22
"Alberto da Silva Morais"	70	"Joao Vitor Correia"	22
"Carlos Hernrique Gomes"	65	"Joao Vitor Correia"	22
"Daniela Cristina de Oliveira"	72	"Joao Vitor Correia"	22
"Disney Oliver"	71	"Joao Vitor Correia"	22
"Henrique Tomaz Gonzaga"	68	"Joao Vitor Correia"	22
"Jamil Salem"	66	"Joao Vitor Correia"	22
"Julia Vingadora"	71	"Joao Vitor Correia"	22
"Roberto Carlos"	65	"Joao Vitor Correia"	22
"Cláudio Assembly"	64	"Joao Vitor Correia"	22
"Elaine Java"	63	"Joao Vitor Correia"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Joao Vitor Correia"	22
"Clelia Regina Cafer"	66	"Joao Vitor Correia"	22
"Marisa Aparecida Elias"	70	"Joao Vitor Correia"	22
"Barbara Dias Rezende Gontijo"	63	"Joao Vitor Correia"	22
"Tatiana Carneiro de Resende"	63	"Joao Vitor Correia"	22
"Alessandro Gomes Enoque"	70	"Joao Vitor Correia"	22
"Alex Fernando Borges"	68	"Joao Vitor Correia"	22
"Alexandre Alves Alvenha"	70	"Joao Vitor Correia"	22
"Alexandre Cacheffo"	71	"Joao Vitor Correia"	22
"Alexandre Calzavara Yoshida"	72	"Joao Vitor Correia"	22
"Severo Snape"	54	"Joao Vitor Correia"	22
"Gina Maira"	65	"Marina Silva Gomes"	20
"Marcelo Keese Albertini"	62	"Marina Silva Gomes"	20
"Rivalino Matias Júnior"	69	"Marina Silva Gomes"	20
"André Backes"	63	"Marina Silva Gomes"	20
"Bruno Augusto Nassif Travençolo"	66	"Marina Silva Gomes"	20
"Luiz Gustavo Almeida Martins"	67	"Marina Silva Gomes"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Marina Silva Gomes"	20
"Ariádine Cristine de Almeida"	71	"Marina Silva Gomes"	20
"Giuliano Buzá Jacobucci"	67	"Marina Silva Gomes"	20
"Jeamylle Nilin Gonçalves"	70	"Marina Silva Gomes"	20
"Cassiano Aimberê Dorneles Welker"	69	"Marina Silva Gomes"	20
"Admilson Lopes dos Santos"	72	"Marina Silva Gomes"	20
"Adriana Rodrigues da Silva"	68	"Marina Silva Gomes"	20
"Camila Mariana Ruiz"	71	"Marina Silva Gomes"	20
"Fernando Rodrigo Rafaeli"	68	"Marina Silva Gomes"	20
"Taciana Oliveira Souza"	69	"Marina Silva Gomes"	20
"Jean Ponciano"	69	"Marina Silva Gomes"	20
"Elaine Ribeiro"	67	"Marina Silva Gomes"	20
"Alexsandro Soares"	71	"Marina Silva Gomes"	20
"Pedro Frosi"	70	"Marina Silva Gomes"	20
"Marcia Aparecida Fernandes"	65	"Marina Silva Gomes"	20
"Adriano Mota Loyola"	69	"Marina Silva Gomes"	20
"Alessandra Maia de Castro Prado"	71	"Marina Silva Gomes"	20
"Álex Moreira Herval"	67	"Marina Silva Gomes"	20
"Ana Paula Turrioni Hidalgo"	66	"Marina Silva Gomes"	20
"Ana Paula de Lima Oliveira"	69	"Marina Silva Gomes"	20
"Belchior de Sousa"	68	"Marina Silva Gomes"	20
"Elsieni Coelho da Silva"	63	"Marina Silva Gomes"	20
"Gastao da Cunha Frota"	67	"Marina Silva Gomes"	20
"Nikoleta Tzvetanova Kerinska"	65	"Marina Silva Gomes"	20
"Renato Palumbo Doria"	63	"Marina Silva Gomes"	20
"Adriana Pastorello Buim Arena"	67	"Marina Silva Gomes"	20
"Aldeci Cacique Calixto"	72	"Marina Silva Gomes"	20
"Aléxia Pádua Franco"	69	"Marina Silva Gomes"	20
"Ana Beatriz da Silva Duarte"	62	"Marina Silva Gomes"	20
"Andrea Maturano Longarezi"	72	"Marina Silva Gomes"	20
"Jailson Mendes"	70	"Marina Silva Gomes"	20
"Gabriel Jesus"	68	"Marina Silva Gomes"	20
"Luciano Hulk"	70	"Marina Silva Gomes"	20
"João Guilherme"	70	"Marina Silva Gomes"	20
"Péricles Mendes"	63	"Marina Silva Gomes"	20
"Alcino Eduardo Bonella"	64	"Marina Silva Gomes"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Marina Silva Gomes"	20
"Ana Maria Said"	70	"Marina Silva Gomes"	20
"Anselmo Tadeu Ferreira"	63	"Marina Silva Gomes"	20
"Dennys Garcia Xavier"	70	"Marina Silva Gomes"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Marina Silva Gomes"	20
"Lucas de Assis Ribeiro"	72	"Marina Silva Gomes"	20
"Natália Mundim Tôrres"	72	"Marina Silva Gomes"	20
"Tiago Wilson Patriarca Mineo "	68	"Marina Silva Gomes"	20
"Neide Maria da Silva "	64	"Marina Silva Gomes"	20
"Alexandre Garrido da Silva"	71	"Marina Silva Gomes"	20
"Beatriz Corrêa Camargo"	72	"Marina Silva Gomes"	20
"Daniela de Melo Crosara"	68	"Marina Silva Gomes"	20
"Fernando Rodrigues Martins"	69	"Marina Silva Gomes"	20
"Gustavo de Carvalho Marin"	69	"Marina Silva Gomes"	20
"Ademir Cavalheiro"	64	"Marina Silva Gomes"	20
"Adevailton Bernardo dos Santos"	68	"Marina Silva Gomes"	20
"Alessandra Riposati Arantes"	65	"Marina Silva Gomes"	20
"Djalmir Nestor Messias"	66	"Marina Silva Gomes"	20
"Marcel Novaes"	66	"Marina Silva Gomes"	20
"Alberto da Silva Morais"	70	"Marina Silva Gomes"	20
"Carlos Hernrique Gomes"	65	"Marina Silva Gomes"	20
"Daniela Cristina de Oliveira"	72	"Marina Silva Gomes"	20
"Disney Oliver"	71	"Marina Silva Gomes"	20
"Henrique Tomaz Gonzaga"	68	"Marina Silva Gomes"	20
"Jamil Salem"	66	"Marina Silva Gomes"	20
"Julia Vingadora"	71	"Marina Silva Gomes"	20
"Roberto Carlos"	65	"Marina Silva Gomes"	20
"Cláudio Assembly"	64	"Marina Silva Gomes"	20
"Elaine Java"	63	"Marina Silva Gomes"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Marina Silva Gomes"	20
"Clelia Regina Cafer"	66	"Marina Silva Gomes"	20
"Marisa Aparecida Elias"	70	"Marina Silva Gomes"	20
"Barbara Dias Rezende Gontijo"	63	"Marina Silva Gomes"	20
"Tatiana Carneiro de Resende"	63	"Marina Silva Gomes"	20
"Alessandro Gomes Enoque"	70	"Marina Silva Gomes"	20
"Alex Fernando Borges"	68	"Marina Silva Gomes"	20
"Alexandre Alves Alvenha"	70	"Marina Silva Gomes"	20
"Alexandre Cacheffo"	71	"Marina Silva Gomes"	20
"Alexandre Calzavara Yoshida"	72	"Marina Silva Gomes"	20
"Severo Snape"	54	"Marina Silva Gomes"	20
"Gina Maira"	65	"Maria Julia Oliveira"	23
"Marcelo Keese Albertini"	62	"Maria Julia Oliveira"	23
"Rivalino Matias Júnior"	69	"Maria Julia Oliveira"	23
"André Backes"	63	"Maria Julia Oliveira"	23
"Bruno Augusto Nassif Travençolo"	66	"Maria Julia Oliveira"	23
"Luiz Gustavo Almeida Martins"	67	"Maria Julia Oliveira"	23
"Ailton Gonçalves Rodrigues Junior"	69	"Maria Julia Oliveira"	23
"Ariádine Cristine de Almeida"	71	"Maria Julia Oliveira"	23
"Giuliano Buzá Jacobucci"	67	"Maria Julia Oliveira"	23
"Jeamylle Nilin Gonçalves"	70	"Maria Julia Oliveira"	23
"Cassiano Aimberê Dorneles Welker"	69	"Maria Julia Oliveira"	23
"Admilson Lopes dos Santos"	72	"Maria Julia Oliveira"	23
"Adriana Rodrigues da Silva"	68	"Maria Julia Oliveira"	23
"Camila Mariana Ruiz"	71	"Maria Julia Oliveira"	23
"Fernando Rodrigo Rafaeli"	68	"Maria Julia Oliveira"	23
"Taciana Oliveira Souza"	69	"Maria Julia Oliveira"	23
"Jean Ponciano"	69	"Maria Julia Oliveira"	23
"Elaine Ribeiro"	67	"Maria Julia Oliveira"	23
"Alexsandro Soares"	71	"Maria Julia Oliveira"	23
"Pedro Frosi"	70	"Maria Julia Oliveira"	23
"Marcia Aparecida Fernandes"	65	"Maria Julia Oliveira"	23
"Adriano Mota Loyola"	69	"Maria Julia Oliveira"	23
"Alessandra Maia de Castro Prado"	71	"Maria Julia Oliveira"	23
"Álex Moreira Herval"	67	"Maria Julia Oliveira"	23
"Ana Paula Turrioni Hidalgo"	66	"Maria Julia Oliveira"	23
"Ana Paula de Lima Oliveira"	69	"Maria Julia Oliveira"	23
"Belchior de Sousa"	68	"Maria Julia Oliveira"	23
"Elsieni Coelho da Silva"	63	"Maria Julia Oliveira"	23
"Gastao da Cunha Frota"	67	"Maria Julia Oliveira"	23
"Nikoleta Tzvetanova Kerinska"	65	"Maria Julia Oliveira"	23
"Renato Palumbo Doria"	63	"Maria Julia Oliveira"	23
"Adriana Pastorello Buim Arena"	67	"Maria Julia Oliveira"	23
"Aldeci Cacique Calixto"	72	"Maria Julia Oliveira"	23
"Aléxia Pádua Franco"	69	"Maria Julia Oliveira"	23
"Ana Beatriz da Silva Duarte"	62	"Maria Julia Oliveira"	23
"Andrea Maturano Longarezi"	72	"Maria Julia Oliveira"	23
"Jailson Mendes"	70	"Maria Julia Oliveira"	23
"Gabriel Jesus"	68	"Maria Julia Oliveira"	23
"Luciano Hulk"	70	"Maria Julia Oliveira"	23
"João Guilherme"	70	"Maria Julia Oliveira"	23
"Péricles Mendes"	63	"Maria Julia Oliveira"	23
"Alcino Eduardo Bonella"	64	"Maria Julia Oliveira"	23
"Alexandre Guimarães Tadeu de Soares"	68	"Maria Julia Oliveira"	23
"Ana Maria Said"	70	"Maria Julia Oliveira"	23
"Anselmo Tadeu Ferreira"	63	"Maria Julia Oliveira"	23
"Dennys Garcia Xavier"	70	"Maria Julia Oliveira"	23
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Maria Julia Oliveira"	23
"Lucas de Assis Ribeiro"	72	"Maria Julia Oliveira"	23
"Natália Mundim Tôrres"	72	"Maria Julia Oliveira"	23
"Tiago Wilson Patriarca Mineo "	68	"Maria Julia Oliveira"	23
"Neide Maria da Silva "	64	"Maria Julia Oliveira"	23
"Alexandre Garrido da Silva"	71	"Maria Julia Oliveira"	23
"Beatriz Corrêa Camargo"	72	"Maria Julia Oliveira"	23
"Daniela de Melo Crosara"	68	"Maria Julia Oliveira"	23
"Fernando Rodrigues Martins"	69	"Maria Julia Oliveira"	23
"Gustavo de Carvalho Marin"	69	"Maria Julia Oliveira"	23
"Ademir Cavalheiro"	64	"Maria Julia Oliveira"	23
"Adevailton Bernardo dos Santos"	68	"Maria Julia Oliveira"	23
"Alessandra Riposati Arantes"	65	"Maria Julia Oliveira"	23
"Djalmir Nestor Messias"	66	"Maria Julia Oliveira"	23
"Marcel Novaes"	66	"Maria Julia Oliveira"	23
"Alberto da Silva Morais"	70	"Maria Julia Oliveira"	23
"Carlos Hernrique Gomes"	65	"Maria Julia Oliveira"	23
"Daniela Cristina de Oliveira"	72	"Maria Julia Oliveira"	23
"Disney Oliver"	71	"Maria Julia Oliveira"	23
"Henrique Tomaz Gonzaga"	68	"Maria Julia Oliveira"	23
"Jamil Salem"	66	"Maria Julia Oliveira"	23
"Julia Vingadora"	71	"Maria Julia Oliveira"	23
"Roberto Carlos"	65	"Maria Julia Oliveira"	23
"Cláudio Assembly"	64	"Maria Julia Oliveira"	23
"Elaine Java"	63	"Maria Julia Oliveira"	23
"Lilian Rodrigues Sant’ Anna Campos"	70	"Maria Julia Oliveira"	23
"Clelia Regina Cafer"	66	"Maria Julia Oliveira"	23
"Marisa Aparecida Elias"	70	"Maria Julia Oliveira"	23
"Barbara Dias Rezende Gontijo"	63	"Maria Julia Oliveira"	23
"Tatiana Carneiro de Resende"	63	"Maria Julia Oliveira"	23
"Alessandro Gomes Enoque"	70	"Maria Julia Oliveira"	23
"Alex Fernando Borges"	68	"Maria Julia Oliveira"	23
"Alexandre Alves Alvenha"	70	"Maria Julia Oliveira"	23
"Alexandre Cacheffo"	71	"Maria Julia Oliveira"	23
"Alexandre Calzavara Yoshida"	72	"Maria Julia Oliveira"	23
"Severo Snape"	54	"Maria Julia Oliveira"	23
"Gina Maira"	65	"Vicente Araujo Mendes"	27
"Marcelo Keese Albertini"	62	"Vicente Araujo Mendes"	27
"Rivalino Matias Júnior"	69	"Vicente Araujo Mendes"	27
"André Backes"	63	"Vicente Araujo Mendes"	27
"Bruno Augusto Nassif Travençolo"	66	"Vicente Araujo Mendes"	27
"Luiz Gustavo Almeida Martins"	67	"Vicente Araujo Mendes"	27
"Ailton Gonçalves Rodrigues Junior"	69	"Vicente Araujo Mendes"	27
"Ariádine Cristine de Almeida"	71	"Vicente Araujo Mendes"	27
"Giuliano Buzá Jacobucci"	67	"Vicente Araujo Mendes"	27
"Jeamylle Nilin Gonçalves"	70	"Vicente Araujo Mendes"	27
"Cassiano Aimberê Dorneles Welker"	69	"Vicente Araujo Mendes"	27
"Admilson Lopes dos Santos"	72	"Vicente Araujo Mendes"	27
"Adriana Rodrigues da Silva"	68	"Vicente Araujo Mendes"	27
"Camila Mariana Ruiz"	71	"Vicente Araujo Mendes"	27
"Fernando Rodrigo Rafaeli"	68	"Vicente Araujo Mendes"	27
"Taciana Oliveira Souza"	69	"Vicente Araujo Mendes"	27
"Jean Ponciano"	69	"Vicente Araujo Mendes"	27
"Elaine Ribeiro"	67	"Vicente Araujo Mendes"	27
"Alexsandro Soares"	71	"Vicente Araujo Mendes"	27
"Pedro Frosi"	70	"Vicente Araujo Mendes"	27
"Marcia Aparecida Fernandes"	65	"Vicente Araujo Mendes"	27
"Adriano Mota Loyola"	69	"Vicente Araujo Mendes"	27
"Alessandra Maia de Castro Prado"	71	"Vicente Araujo Mendes"	27
"Álex Moreira Herval"	67	"Vicente Araujo Mendes"	27
"Ana Paula Turrioni Hidalgo"	66	"Vicente Araujo Mendes"	27
"Ana Paula de Lima Oliveira"	69	"Vicente Araujo Mendes"	27
"Belchior de Sousa"	68	"Vicente Araujo Mendes"	27
"Elsieni Coelho da Silva"	63	"Vicente Araujo Mendes"	27
"Gastao da Cunha Frota"	67	"Vicente Araujo Mendes"	27
"Nikoleta Tzvetanova Kerinska"	65	"Vicente Araujo Mendes"	27
"Renato Palumbo Doria"	63	"Vicente Araujo Mendes"	27
"Adriana Pastorello Buim Arena"	67	"Vicente Araujo Mendes"	27
"Aldeci Cacique Calixto"	72	"Vicente Araujo Mendes"	27
"Aléxia Pádua Franco"	69	"Vicente Araujo Mendes"	27
"Ana Beatriz da Silva Duarte"	62	"Vicente Araujo Mendes"	27
"Andrea Maturano Longarezi"	72	"Vicente Araujo Mendes"	27
"Jailson Mendes"	70	"Vicente Araujo Mendes"	27
"Gabriel Jesus"	68	"Vicente Araujo Mendes"	27
"Luciano Hulk"	70	"Vicente Araujo Mendes"	27
"João Guilherme"	70	"Vicente Araujo Mendes"	27
"Péricles Mendes"	63	"Vicente Araujo Mendes"	27
"Alcino Eduardo Bonella"	64	"Vicente Araujo Mendes"	27
"Alexandre Guimarães Tadeu de Soares"	68	"Vicente Araujo Mendes"	27
"Ana Maria Said"	70	"Vicente Araujo Mendes"	27
"Anselmo Tadeu Ferreira"	63	"Vicente Araujo Mendes"	27
"Dennys Garcia Xavier"	70	"Vicente Araujo Mendes"	27
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Vicente Araujo Mendes"	27
"Lucas de Assis Ribeiro"	72	"Vicente Araujo Mendes"	27
"Natália Mundim Tôrres"	72	"Vicente Araujo Mendes"	27
"Tiago Wilson Patriarca Mineo "	68	"Vicente Araujo Mendes"	27
"Neide Maria da Silva "	64	"Vicente Araujo Mendes"	27
"Alexandre Garrido da Silva"	71	"Vicente Araujo Mendes"	27
"Beatriz Corrêa Camargo"	72	"Vicente Araujo Mendes"	27
"Daniela de Melo Crosara"	68	"Vicente Araujo Mendes"	27
"Fernando Rodrigues Martins"	69	"Vicente Araujo Mendes"	27
"Gustavo de Carvalho Marin"	69	"Vicente Araujo Mendes"	27
"Ademir Cavalheiro"	64	"Vicente Araujo Mendes"	27
"Adevailton Bernardo dos Santos"	68	"Vicente Araujo Mendes"	27
"Alessandra Riposati Arantes"	65	"Vicente Araujo Mendes"	27
"Djalmir Nestor Messias"	66	"Vicente Araujo Mendes"	27
"Marcel Novaes"	66	"Vicente Araujo Mendes"	27
"Alberto da Silva Morais"	70	"Vicente Araujo Mendes"	27
"Carlos Hernrique Gomes"	65	"Vicente Araujo Mendes"	27
"Daniela Cristina de Oliveira"	72	"Vicente Araujo Mendes"	27
"Disney Oliver"	71	"Vicente Araujo Mendes"	27
"Henrique Tomaz Gonzaga"	68	"Vicente Araujo Mendes"	27
"Jamil Salem"	66	"Vicente Araujo Mendes"	27
"Julia Vingadora"	71	"Vicente Araujo Mendes"	27
"Roberto Carlos"	65	"Vicente Araujo Mendes"	27
"Cláudio Assembly"	64	"Vicente Araujo Mendes"	27
"Elaine Java"	63	"Vicente Araujo Mendes"	27
"Lilian Rodrigues Sant’ Anna Campos"	70	"Vicente Araujo Mendes"	27
"Clelia Regina Cafer"	66	"Vicente Araujo Mendes"	27
"Marisa Aparecida Elias"	70	"Vicente Araujo Mendes"	27
"Barbara Dias Rezende Gontijo"	63	"Vicente Araujo Mendes"	27
"Tatiana Carneiro de Resende"	63	"Vicente Araujo Mendes"	27
"Alessandro Gomes Enoque"	70	"Vicente Araujo Mendes"	27
"Alex Fernando Borges"	68	"Vicente Araujo Mendes"	27
"Alexandre Alves Alvenha"	70	"Vicente Araujo Mendes"	27
"Alexandre Cacheffo"	71	"Vicente Araujo Mendes"	27
"Alexandre Calzavara Yoshida"	72	"Vicente Araujo Mendes"	27
"Severo Snape"	54	"Vicente Araujo Mendes"	27
"Gina Maira"	65	"Alexandre Oliveira Rodrigues"	21
"Marcelo Keese Albertini"	62	"Alexandre Oliveira Rodrigues"	21
"Rivalino Matias Júnior"	69	"Alexandre Oliveira Rodrigues"	21
"André Backes"	63	"Alexandre Oliveira Rodrigues"	21
"Bruno Augusto Nassif Travençolo"	66	"Alexandre Oliveira Rodrigues"	21
"Luiz Gustavo Almeida Martins"	67	"Alexandre Oliveira Rodrigues"	21
"Ailton Gonçalves Rodrigues Junior"	69	"Alexandre Oliveira Rodrigues"	21
"Ariádine Cristine de Almeida"	71	"Alexandre Oliveira Rodrigues"	21
"Giuliano Buzá Jacobucci"	67	"Alexandre Oliveira Rodrigues"	21
"Jeamylle Nilin Gonçalves"	70	"Alexandre Oliveira Rodrigues"	21
"Cassiano Aimberê Dorneles Welker"	69	"Alexandre Oliveira Rodrigues"	21
"Admilson Lopes dos Santos"	72	"Alexandre Oliveira Rodrigues"	21
"Adriana Rodrigues da Silva"	68	"Alexandre Oliveira Rodrigues"	21
"Camila Mariana Ruiz"	71	"Alexandre Oliveira Rodrigues"	21
"Fernando Rodrigo Rafaeli"	68	"Alexandre Oliveira Rodrigues"	21
"Taciana Oliveira Souza"	69	"Alexandre Oliveira Rodrigues"	21
"Jean Ponciano"	69	"Alexandre Oliveira Rodrigues"	21
"Elaine Ribeiro"	67	"Alexandre Oliveira Rodrigues"	21
"Alexsandro Soares"	71	"Alexandre Oliveira Rodrigues"	21
"Pedro Frosi"	70	"Alexandre Oliveira Rodrigues"	21
"Marcia Aparecida Fernandes"	65	"Alexandre Oliveira Rodrigues"	21
"Adriano Mota Loyola"	69	"Alexandre Oliveira Rodrigues"	21
"Alessandra Maia de Castro Prado"	71	"Alexandre Oliveira Rodrigues"	21
"Álex Moreira Herval"	67	"Alexandre Oliveira Rodrigues"	21
"Ana Paula Turrioni Hidalgo"	66	"Alexandre Oliveira Rodrigues"	21
"Ana Paula de Lima Oliveira"	69	"Alexandre Oliveira Rodrigues"	21
"Belchior de Sousa"	68	"Alexandre Oliveira Rodrigues"	21
"Elsieni Coelho da Silva"	63	"Alexandre Oliveira Rodrigues"	21
"Gastao da Cunha Frota"	67	"Alexandre Oliveira Rodrigues"	21
"Nikoleta Tzvetanova Kerinska"	65	"Alexandre Oliveira Rodrigues"	21
"Renato Palumbo Doria"	63	"Alexandre Oliveira Rodrigues"	21
"Adriana Pastorello Buim Arena"	67	"Alexandre Oliveira Rodrigues"	21
"Aldeci Cacique Calixto"	72	"Alexandre Oliveira Rodrigues"	21
"Aléxia Pádua Franco"	69	"Alexandre Oliveira Rodrigues"	21
"Ana Beatriz da Silva Duarte"	62	"Alexandre Oliveira Rodrigues"	21
"Andrea Maturano Longarezi"	72	"Alexandre Oliveira Rodrigues"	21
"Jailson Mendes"	70	"Alexandre Oliveira Rodrigues"	21
"Gabriel Jesus"	68	"Alexandre Oliveira Rodrigues"	21
"Luciano Hulk"	70	"Alexandre Oliveira Rodrigues"	21
"João Guilherme"	70	"Alexandre Oliveira Rodrigues"	21
"Péricles Mendes"	63	"Alexandre Oliveira Rodrigues"	21
"Alcino Eduardo Bonella"	64	"Alexandre Oliveira Rodrigues"	21
"Alexandre Guimarães Tadeu de Soares"	68	"Alexandre Oliveira Rodrigues"	21
"Ana Maria Said"	70	"Alexandre Oliveira Rodrigues"	21
"Anselmo Tadeu Ferreira"	63	"Alexandre Oliveira Rodrigues"	21
"Dennys Garcia Xavier"	70	"Alexandre Oliveira Rodrigues"	21
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Alexandre Oliveira Rodrigues"	21
"Lucas de Assis Ribeiro"	72	"Alexandre Oliveira Rodrigues"	21
"Natália Mundim Tôrres"	72	"Alexandre Oliveira Rodrigues"	21
"Tiago Wilson Patriarca Mineo "	68	"Alexandre Oliveira Rodrigues"	21
"Neide Maria da Silva "	64	"Alexandre Oliveira Rodrigues"	21
"Alexandre Garrido da Silva"	71	"Alexandre Oliveira Rodrigues"	21
"Beatriz Corrêa Camargo"	72	"Alexandre Oliveira Rodrigues"	21
"Daniela de Melo Crosara"	68	"Alexandre Oliveira Rodrigues"	21
"Fernando Rodrigues Martins"	69	"Alexandre Oliveira Rodrigues"	21
"Gustavo de Carvalho Marin"	69	"Alexandre Oliveira Rodrigues"	21
"Ademir Cavalheiro"	64	"Alexandre Oliveira Rodrigues"	21
"Adevailton Bernardo dos Santos"	68	"Alexandre Oliveira Rodrigues"	21
"Alessandra Riposati Arantes"	65	"Alexandre Oliveira Rodrigues"	21
"Djalmir Nestor Messias"	66	"Alexandre Oliveira Rodrigues"	21
"Marcel Novaes"	66	"Alexandre Oliveira Rodrigues"	21
"Alberto da Silva Morais"	70	"Alexandre Oliveira Rodrigues"	21
"Carlos Hernrique Gomes"	65	"Alexandre Oliveira Rodrigues"	21
"Daniela Cristina de Oliveira"	72	"Alexandre Oliveira Rodrigues"	21
"Disney Oliver"	71	"Alexandre Oliveira Rodrigues"	21
"Henrique Tomaz Gonzaga"	68	"Alexandre Oliveira Rodrigues"	21
"Jamil Salem"	66	"Alexandre Oliveira Rodrigues"	21
"Julia Vingadora"	71	"Alexandre Oliveira Rodrigues"	21
"Roberto Carlos"	65	"Alexandre Oliveira Rodrigues"	21
"Cláudio Assembly"	64	"Alexandre Oliveira Rodrigues"	21
"Elaine Java"	63	"Alexandre Oliveira Rodrigues"	21
"Lilian Rodrigues Sant’ Anna Campos"	70	"Alexandre Oliveira Rodrigues"	21
"Clelia Regina Cafer"	66	"Alexandre Oliveira Rodrigues"	21
"Marisa Aparecida Elias"	70	"Alexandre Oliveira Rodrigues"	21
"Barbara Dias Rezende Gontijo"	63	"Alexandre Oliveira Rodrigues"	21
"Tatiana Carneiro de Resende"	63	"Alexandre Oliveira Rodrigues"	21
"Alessandro Gomes Enoque"	70	"Alexandre Oliveira Rodrigues"	21
"Alex Fernando Borges"	68	"Alexandre Oliveira Rodrigues"	21
"Alexandre Alves Alvenha"	70	"Alexandre Oliveira Rodrigues"	21
"Alexandre Cacheffo"	71	"Alexandre Oliveira Rodrigues"	21
"Alexandre Calzavara Yoshida"	72	"Alexandre Oliveira Rodrigues"	21
"Severo Snape"	54	"Alexandre Oliveira Rodrigues"	21
"Gina Maira"	65	"Vinicius Ribeiro"	29
"Marcelo Keese Albertini"	62	"Vinicius Ribeiro"	29
"Rivalino Matias Júnior"	69	"Vinicius Ribeiro"	29
"André Backes"	63	"Vinicius Ribeiro"	29
"Bruno Augusto Nassif Travençolo"	66	"Vinicius Ribeiro"	29
"Luiz Gustavo Almeida Martins"	67	"Vinicius Ribeiro"	29
"Ailton Gonçalves Rodrigues Junior"	69	"Vinicius Ribeiro"	29
"Ariádine Cristine de Almeida"	71	"Vinicius Ribeiro"	29
"Giuliano Buzá Jacobucci"	67	"Vinicius Ribeiro"	29
"Jeamylle Nilin Gonçalves"	70	"Vinicius Ribeiro"	29
"Cassiano Aimberê Dorneles Welker"	69	"Vinicius Ribeiro"	29
"Admilson Lopes dos Santos"	72	"Vinicius Ribeiro"	29
"Adriana Rodrigues da Silva"	68	"Vinicius Ribeiro"	29
"Camila Mariana Ruiz"	71	"Vinicius Ribeiro"	29
"Fernando Rodrigo Rafaeli"	68	"Vinicius Ribeiro"	29
"Taciana Oliveira Souza"	69	"Vinicius Ribeiro"	29
"Jean Ponciano"	69	"Vinicius Ribeiro"	29
"Elaine Ribeiro"	67	"Vinicius Ribeiro"	29
"Alexsandro Soares"	71	"Vinicius Ribeiro"	29
"Pedro Frosi"	70	"Vinicius Ribeiro"	29
"Marcia Aparecida Fernandes"	65	"Vinicius Ribeiro"	29
"Adriano Mota Loyola"	69	"Vinicius Ribeiro"	29
"Alessandra Maia de Castro Prado"	71	"Vinicius Ribeiro"	29
"Álex Moreira Herval"	67	"Vinicius Ribeiro"	29
"Ana Paula Turrioni Hidalgo"	66	"Vinicius Ribeiro"	29
"Ana Paula de Lima Oliveira"	69	"Vinicius Ribeiro"	29
"Belchior de Sousa"	68	"Vinicius Ribeiro"	29
"Elsieni Coelho da Silva"	63	"Vinicius Ribeiro"	29
"Gastao da Cunha Frota"	67	"Vinicius Ribeiro"	29
"Nikoleta Tzvetanova Kerinska"	65	"Vinicius Ribeiro"	29
"Renato Palumbo Doria"	63	"Vinicius Ribeiro"	29
"Adriana Pastorello Buim Arena"	67	"Vinicius Ribeiro"	29
"Aldeci Cacique Calixto"	72	"Vinicius Ribeiro"	29
"Aléxia Pádua Franco"	69	"Vinicius Ribeiro"	29
"Ana Beatriz da Silva Duarte"	62	"Vinicius Ribeiro"	29
"Andrea Maturano Longarezi"	72	"Vinicius Ribeiro"	29
"Jailson Mendes"	70	"Vinicius Ribeiro"	29
"Gabriel Jesus"	68	"Vinicius Ribeiro"	29
"Luciano Hulk"	70	"Vinicius Ribeiro"	29
"João Guilherme"	70	"Vinicius Ribeiro"	29
"Péricles Mendes"	63	"Vinicius Ribeiro"	29
"Alcino Eduardo Bonella"	64	"Vinicius Ribeiro"	29
"Alexandre Guimarães Tadeu de Soares"	68	"Vinicius Ribeiro"	29
"Ana Maria Said"	70	"Vinicius Ribeiro"	29
"Anselmo Tadeu Ferreira"	63	"Vinicius Ribeiro"	29
"Dennys Garcia Xavier"	70	"Vinicius Ribeiro"	29
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Vinicius Ribeiro"	29
"Lucas de Assis Ribeiro"	72	"Vinicius Ribeiro"	29
"Natália Mundim Tôrres"	72	"Vinicius Ribeiro"	29
"Tiago Wilson Patriarca Mineo "	68	"Vinicius Ribeiro"	29
"Neide Maria da Silva "	64	"Vinicius Ribeiro"	29
"Alexandre Garrido da Silva"	71	"Vinicius Ribeiro"	29
"Beatriz Corrêa Camargo"	72	"Vinicius Ribeiro"	29
"Daniela de Melo Crosara"	68	"Vinicius Ribeiro"	29
"Fernando Rodrigues Martins"	69	"Vinicius Ribeiro"	29
"Gustavo de Carvalho Marin"	69	"Vinicius Ribeiro"	29
"Ademir Cavalheiro"	64	"Vinicius Ribeiro"	29
"Adevailton Bernardo dos Santos"	68	"Vinicius Ribeiro"	29
"Alessandra Riposati Arantes"	65	"Vinicius Ribeiro"	29
"Djalmir Nestor Messias"	66	"Vinicius Ribeiro"	29
"Marcel Novaes"	66	"Vinicius Ribeiro"	29
"Alberto da Silva Morais"	70	"Vinicius Ribeiro"	29
"Carlos Hernrique Gomes"	65	"Vinicius Ribeiro"	29
"Daniela Cristina de Oliveira"	72	"Vinicius Ribeiro"	29
"Disney Oliver"	71	"Vinicius Ribeiro"	29
"Henrique Tomaz Gonzaga"	68	"Vinicius Ribeiro"	29
"Jamil Salem"	66	"Vinicius Ribeiro"	29
"Julia Vingadora"	71	"Vinicius Ribeiro"	29
"Roberto Carlos"	65	"Vinicius Ribeiro"	29
"Cláudio Assembly"	64	"Vinicius Ribeiro"	29
"Elaine Java"	63	"Vinicius Ribeiro"	29
"Lilian Rodrigues Sant’ Anna Campos"	70	"Vinicius Ribeiro"	29
"Clelia Regina Cafer"	66	"Vinicius Ribeiro"	29
"Marisa Aparecida Elias"	70	"Vinicius Ribeiro"	29
"Barbara Dias Rezende Gontijo"	63	"Vinicius Ribeiro"	29
"Tatiana Carneiro de Resende"	63	"Vinicius Ribeiro"	29
"Alessandro Gomes Enoque"	70	"Vinicius Ribeiro"	29
"Alex Fernando Borges"	68	"Vinicius Ribeiro"	29
"Alexandre Alves Alvenha"	70	"Vinicius Ribeiro"	29
"Alexandre Cacheffo"	71	"Vinicius Ribeiro"	29
"Alexandre Calzavara Yoshida"	72	"Vinicius Ribeiro"	29
"Severo Snape"	54	"Vinicius Ribeiro"	29
"Gina Maira"	65	"César Bertolin"	29
"Marcelo Keese Albertini"	62	"César Bertolin"	29
"Rivalino Matias Júnior"	69	"César Bertolin"	29
"André Backes"	63	"César Bertolin"	29
"Bruno Augusto Nassif Travençolo"	66	"César Bertolin"	29
"Luiz Gustavo Almeida Martins"	67	"César Bertolin"	29
"Ailton Gonçalves Rodrigues Junior"	69	"César Bertolin"	29
"Ariádine Cristine de Almeida"	71	"César Bertolin"	29
"Giuliano Buzá Jacobucci"	67	"César Bertolin"	29
"Jeamylle Nilin Gonçalves"	70	"César Bertolin"	29
"Cassiano Aimberê Dorneles Welker"	69	"César Bertolin"	29
"Admilson Lopes dos Santos"	72	"César Bertolin"	29
"Adriana Rodrigues da Silva"	68	"César Bertolin"	29
"Camila Mariana Ruiz"	71	"César Bertolin"	29
"Fernando Rodrigo Rafaeli"	68	"César Bertolin"	29
"Taciana Oliveira Souza"	69	"César Bertolin"	29
"Jean Ponciano"	69	"César Bertolin"	29
"Elaine Ribeiro"	67	"César Bertolin"	29
"Alexsandro Soares"	71	"César Bertolin"	29
"Pedro Frosi"	70	"César Bertolin"	29
"Marcia Aparecida Fernandes"	65	"César Bertolin"	29
"Adriano Mota Loyola"	69	"César Bertolin"	29
"Alessandra Maia de Castro Prado"	71	"César Bertolin"	29
"Álex Moreira Herval"	67	"César Bertolin"	29
"Ana Paula Turrioni Hidalgo"	66	"César Bertolin"	29
"Ana Paula de Lima Oliveira"	69	"César Bertolin"	29
"Belchior de Sousa"	68	"César Bertolin"	29
"Elsieni Coelho da Silva"	63	"César Bertolin"	29
"Gastao da Cunha Frota"	67	"César Bertolin"	29
"Nikoleta Tzvetanova Kerinska"	65	"César Bertolin"	29
"Renato Palumbo Doria"	63	"César Bertolin"	29
"Adriana Pastorello Buim Arena"	67	"César Bertolin"	29
"Aldeci Cacique Calixto"	72	"César Bertolin"	29
"Aléxia Pádua Franco"	69	"César Bertolin"	29
"Ana Beatriz da Silva Duarte"	62	"César Bertolin"	29
"Andrea Maturano Longarezi"	72	"César Bertolin"	29
"Jailson Mendes"	70	"César Bertolin"	29
"Gabriel Jesus"	68	"César Bertolin"	29
"Luciano Hulk"	70	"César Bertolin"	29
"João Guilherme"	70	"César Bertolin"	29
"Péricles Mendes"	63	"César Bertolin"	29
"Alcino Eduardo Bonella"	64	"César Bertolin"	29
"Alexandre Guimarães Tadeu de Soares"	68	"César Bertolin"	29
"Ana Maria Said"	70	"César Bertolin"	29
"Anselmo Tadeu Ferreira"	63	"César Bertolin"	29
"Dennys Garcia Xavier"	70	"César Bertolin"	29
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"César Bertolin"	29
"Lucas de Assis Ribeiro"	72	"César Bertolin"	29
"Natália Mundim Tôrres"	72	"César Bertolin"	29
"Tiago Wilson Patriarca Mineo "	68	"César Bertolin"	29
"Neide Maria da Silva "	64	"César Bertolin"	29
"Alexandre Garrido da Silva"	71	"César Bertolin"	29
"Beatriz Corrêa Camargo"	72	"César Bertolin"	29
"Daniela de Melo Crosara"	68	"César Bertolin"	29
"Fernando Rodrigues Martins"	69	"César Bertolin"	29
"Gustavo de Carvalho Marin"	69	"César Bertolin"	29
"Ademir Cavalheiro"	64	"César Bertolin"	29
"Adevailton Bernardo dos Santos"	68	"César Bertolin"	29
"Alessandra Riposati Arantes"	65	"César Bertolin"	29
"Djalmir Nestor Messias"	66	"César Bertolin"	29
"Marcel Novaes"	66	"César Bertolin"	29
"Alberto da Silva Morais"	70	"César Bertolin"	29
"Carlos Hernrique Gomes"	65	"César Bertolin"	29
"Daniela Cristina de Oliveira"	72	"César Bertolin"	29
"Disney Oliver"	71	"César Bertolin"	29
"Henrique Tomaz Gonzaga"	68	"César Bertolin"	29
"Jamil Salem"	66	"César Bertolin"	29
"Julia Vingadora"	71	"César Bertolin"	29
"Roberto Carlos"	65	"César Bertolin"	29
"Cláudio Assembly"	64	"César Bertolin"	29
"Elaine Java"	63	"César Bertolin"	29
"Lilian Rodrigues Sant’ Anna Campos"	70	"César Bertolin"	29
"Clelia Regina Cafer"	66	"César Bertolin"	29
"Marisa Aparecida Elias"	70	"César Bertolin"	29
"Barbara Dias Rezende Gontijo"	63	"César Bertolin"	29
"Tatiana Carneiro de Resende"	63	"César Bertolin"	29
"Alessandro Gomes Enoque"	70	"César Bertolin"	29
"Alex Fernando Borges"	68	"César Bertolin"	29
"Alexandre Alves Alvenha"	70	"César Bertolin"	29
"Alexandre Cacheffo"	71	"César Bertolin"	29
"Alexandre Calzavara Yoshida"	72	"César Bertolin"	29
"Severo Snape"	54	"César Bertolin"	29
"Gina Maira"	65	"Bruno José"	122
"Marcelo Keese Albertini"	62	"Bruno José"	122
"Rivalino Matias Júnior"	69	"Bruno José"	122
"André Backes"	63	"Bruno José"	122
"Bruno Augusto Nassif Travençolo"	66	"Bruno José"	122
"Luiz Gustavo Almeida Martins"	67	"Bruno José"	122
"Ailton Gonçalves Rodrigues Junior"	69	"Bruno José"	122
"Ariádine Cristine de Almeida"	71	"Bruno José"	122
"Giuliano Buzá Jacobucci"	67	"Bruno José"	122
"Jeamylle Nilin Gonçalves"	70	"Bruno José"	122
"Cassiano Aimberê Dorneles Welker"	69	"Bruno José"	122
"Admilson Lopes dos Santos"	72	"Bruno José"	122
"Adriana Rodrigues da Silva"	68	"Bruno José"	122
"Camila Mariana Ruiz"	71	"Bruno José"	122
"Fernando Rodrigo Rafaeli"	68	"Bruno José"	122
"Taciana Oliveira Souza"	69	"Bruno José"	122
"Jean Ponciano"	69	"Bruno José"	122
"Elaine Ribeiro"	67	"Bruno José"	122
"Alexsandro Soares"	71	"Bruno José"	122
"Pedro Frosi"	70	"Bruno José"	122
"Marcia Aparecida Fernandes"	65	"Bruno José"	122
"Adriano Mota Loyola"	69	"Bruno José"	122
"Alessandra Maia de Castro Prado"	71	"Bruno José"	122
"Álex Moreira Herval"	67	"Bruno José"	122
"Ana Paula Turrioni Hidalgo"	66	"Bruno José"	122
"Ana Paula de Lima Oliveira"	69	"Bruno José"	122
"Belchior de Sousa"	68	"Bruno José"	122
"Elsieni Coelho da Silva"	63	"Bruno José"	122
"Gastao da Cunha Frota"	67	"Bruno José"	122
"Nikoleta Tzvetanova Kerinska"	65	"Bruno José"	122
"Renato Palumbo Doria"	63	"Bruno José"	122
"Adriana Pastorello Buim Arena"	67	"Bruno José"	122
"Aldeci Cacique Calixto"	72	"Bruno José"	122
"Aléxia Pádua Franco"	69	"Bruno José"	122
"Ana Beatriz da Silva Duarte"	62	"Bruno José"	122
"Andrea Maturano Longarezi"	72	"Bruno José"	122
"Jailson Mendes"	70	"Bruno José"	122
"Gabriel Jesus"	68	"Bruno José"	122
"Luciano Hulk"	70	"Bruno José"	122
"João Guilherme"	70	"Bruno José"	122
"Péricles Mendes"	63	"Bruno José"	122
"Alcino Eduardo Bonella"	64	"Bruno José"	122
"Alexandre Guimarães Tadeu de Soares"	68	"Bruno José"	122
"Ana Maria Said"	70	"Bruno José"	122
"Anselmo Tadeu Ferreira"	63	"Bruno José"	122
"Dennys Garcia Xavier"	70	"Bruno José"	122
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Bruno José"	122
"Lucas de Assis Ribeiro"	72	"Bruno José"	122
"Natália Mundim Tôrres"	72	"Bruno José"	122
"Tiago Wilson Patriarca Mineo "	68	"Bruno José"	122
"Neide Maria da Silva "	64	"Bruno José"	122
"Alexandre Garrido da Silva"	71	"Bruno José"	122
"Beatriz Corrêa Camargo"	72	"Bruno José"	122
"Daniela de Melo Crosara"	68	"Bruno José"	122
"Fernando Rodrigues Martins"	69	"Bruno José"	122
"Gustavo de Carvalho Marin"	69	"Bruno José"	122
"Ademir Cavalheiro"	64	"Bruno José"	122
"Adevailton Bernardo dos Santos"	68	"Bruno José"	122
"Alessandra Riposati Arantes"	65	"Bruno José"	122
"Djalmir Nestor Messias"	66	"Bruno José"	122
"Marcel Novaes"	66	"Bruno José"	122
"Alberto da Silva Morais"	70	"Bruno José"	122
"Carlos Hernrique Gomes"	65	"Bruno José"	122
"Daniela Cristina de Oliveira"	72	"Bruno José"	122
"Disney Oliver"	71	"Bruno José"	122
"Henrique Tomaz Gonzaga"	68	"Bruno José"	122
"Jamil Salem"	66	"Bruno José"	122
"Julia Vingadora"	71	"Bruno José"	122
"Roberto Carlos"	65	"Bruno José"	122
"Cláudio Assembly"	64	"Bruno José"	122
"Elaine Java"	63	"Bruno José"	122
"Lilian Rodrigues Sant’ Anna Campos"	70	"Bruno José"	122
"Clelia Regina Cafer"	66	"Bruno José"	122
"Marisa Aparecida Elias"	70	"Bruno José"	122
"Barbara Dias Rezende Gontijo"	63	"Bruno José"	122
"Tatiana Carneiro de Resende"	63	"Bruno José"	122
"Alessandro Gomes Enoque"	70	"Bruno José"	122
"Alex Fernando Borges"	68	"Bruno José"	122
"Alexandre Alves Alvenha"	70	"Bruno José"	122
"Alexandre Cacheffo"	71	"Bruno José"	122
"Alexandre Calzavara Yoshida"	72	"Bruno José"	122
"Severo Snape"	54	"Bruno José"	122
"Gina Maira"	65	"Elaine Maria"	33
"Marcelo Keese Albertini"	62	"Elaine Maria"	33
"Rivalino Matias Júnior"	69	"Elaine Maria"	33
"André Backes"	63	"Elaine Maria"	33
"Bruno Augusto Nassif Travençolo"	66	"Elaine Maria"	33
"Luiz Gustavo Almeida Martins"	67	"Elaine Maria"	33
"Ailton Gonçalves Rodrigues Junior"	69	"Elaine Maria"	33
"Ariádine Cristine de Almeida"	71	"Elaine Maria"	33
"Giuliano Buzá Jacobucci"	67	"Elaine Maria"	33
"Jeamylle Nilin Gonçalves"	70	"Elaine Maria"	33
"Cassiano Aimberê Dorneles Welker"	69	"Elaine Maria"	33
"Admilson Lopes dos Santos"	72	"Elaine Maria"	33
"Adriana Rodrigues da Silva"	68	"Elaine Maria"	33
"Camila Mariana Ruiz"	71	"Elaine Maria"	33
"Fernando Rodrigo Rafaeli"	68	"Elaine Maria"	33
"Taciana Oliveira Souza"	69	"Elaine Maria"	33
"Jean Ponciano"	69	"Elaine Maria"	33
"Elaine Ribeiro"	67	"Elaine Maria"	33
"Alexsandro Soares"	71	"Elaine Maria"	33
"Pedro Frosi"	70	"Elaine Maria"	33
"Marcia Aparecida Fernandes"	65	"Elaine Maria"	33
"Adriano Mota Loyola"	69	"Elaine Maria"	33
"Alessandra Maia de Castro Prado"	71	"Elaine Maria"	33
"Álex Moreira Herval"	67	"Elaine Maria"	33
"Ana Paula Turrioni Hidalgo"	66	"Elaine Maria"	33
"Ana Paula de Lima Oliveira"	69	"Elaine Maria"	33
"Belchior de Sousa"	68	"Elaine Maria"	33
"Elsieni Coelho da Silva"	63	"Elaine Maria"	33
"Gastao da Cunha Frota"	67	"Elaine Maria"	33
"Nikoleta Tzvetanova Kerinska"	65	"Elaine Maria"	33
"Renato Palumbo Doria"	63	"Elaine Maria"	33
"Adriana Pastorello Buim Arena"	67	"Elaine Maria"	33
"Aldeci Cacique Calixto"	72	"Elaine Maria"	33
"Aléxia Pádua Franco"	69	"Elaine Maria"	33
"Ana Beatriz da Silva Duarte"	62	"Elaine Maria"	33
"Andrea Maturano Longarezi"	72	"Elaine Maria"	33
"Jailson Mendes"	70	"Elaine Maria"	33
"Gabriel Jesus"	68	"Elaine Maria"	33
"Luciano Hulk"	70	"Elaine Maria"	33
"João Guilherme"	70	"Elaine Maria"	33
"Péricles Mendes"	63	"Elaine Maria"	33
"Alcino Eduardo Bonella"	64	"Elaine Maria"	33
"Alexandre Guimarães Tadeu de Soares"	68	"Elaine Maria"	33
"Ana Maria Said"	70	"Elaine Maria"	33
"Anselmo Tadeu Ferreira"	63	"Elaine Maria"	33
"Dennys Garcia Xavier"	70	"Elaine Maria"	33
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Elaine Maria"	33
"Lucas de Assis Ribeiro"	72	"Elaine Maria"	33
"Natália Mundim Tôrres"	72	"Elaine Maria"	33
"Tiago Wilson Patriarca Mineo "	68	"Elaine Maria"	33
"Neide Maria da Silva "	64	"Elaine Maria"	33
"Alexandre Garrido da Silva"	71	"Elaine Maria"	33
"Beatriz Corrêa Camargo"	72	"Elaine Maria"	33
"Daniela de Melo Crosara"	68	"Elaine Maria"	33
"Fernando Rodrigues Martins"	69	"Elaine Maria"	33
"Gustavo de Carvalho Marin"	69	"Elaine Maria"	33
"Ademir Cavalheiro"	64	"Elaine Maria"	33
"Adevailton Bernardo dos Santos"	68	"Elaine Maria"	33
"Alessandra Riposati Arantes"	65	"Elaine Maria"	33
"Djalmir Nestor Messias"	66	"Elaine Maria"	33
"Marcel Novaes"	66	"Elaine Maria"	33
"Alberto da Silva Morais"	70	"Elaine Maria"	33
"Carlos Hernrique Gomes"	65	"Elaine Maria"	33
"Daniela Cristina de Oliveira"	72	"Elaine Maria"	33
"Disney Oliver"	71	"Elaine Maria"	33
"Henrique Tomaz Gonzaga"	68	"Elaine Maria"	33
"Jamil Salem"	66	"Elaine Maria"	33
"Julia Vingadora"	71	"Elaine Maria"	33
"Roberto Carlos"	65	"Elaine Maria"	33
"Cláudio Assembly"	64	"Elaine Maria"	33
"Elaine Java"	63	"Elaine Maria"	33
"Lilian Rodrigues Sant’ Anna Campos"	70	"Elaine Maria"	33
"Clelia Regina Cafer"	66	"Elaine Maria"	33
"Marisa Aparecida Elias"	70	"Elaine Maria"	33
"Barbara Dias Rezende Gontijo"	63	"Elaine Maria"	33
"Tatiana Carneiro de Resende"	63	"Elaine Maria"	33
"Alessandro Gomes Enoque"	70	"Elaine Maria"	33
"Alex Fernando Borges"	68	"Elaine Maria"	33
"Alexandre Alves Alvenha"	70	"Elaine Maria"	33
"Alexandre Cacheffo"	71	"Elaine Maria"	33
"Alexandre Calzavara Yoshida"	72	"Elaine Maria"	33
"Severo Snape"	54	"Elaine Maria"	33
"Gina Maira"	65	"Carlos Silva"	29
"Marcelo Keese Albertini"	62	"Carlos Silva"	29
"Rivalino Matias Júnior"	69	"Carlos Silva"	29
"André Backes"	63	"Carlos Silva"	29
"Bruno Augusto Nassif Travençolo"	66	"Carlos Silva"	29
"Luiz Gustavo Almeida Martins"	67	"Carlos Silva"	29
"Ailton Gonçalves Rodrigues Junior"	69	"Carlos Silva"	29
"Ariádine Cristine de Almeida"	71	"Carlos Silva"	29
"Giuliano Buzá Jacobucci"	67	"Carlos Silva"	29
"Jeamylle Nilin Gonçalves"	70	"Carlos Silva"	29
"Cassiano Aimberê Dorneles Welker"	69	"Carlos Silva"	29
"Admilson Lopes dos Santos"	72	"Carlos Silva"	29
"Adriana Rodrigues da Silva"	68	"Carlos Silva"	29
"Camila Mariana Ruiz"	71	"Carlos Silva"	29
"Fernando Rodrigo Rafaeli"	68	"Carlos Silva"	29
"Taciana Oliveira Souza"	69	"Carlos Silva"	29
"Jean Ponciano"	69	"Carlos Silva"	29
"Elaine Ribeiro"	67	"Carlos Silva"	29
"Alexsandro Soares"	71	"Carlos Silva"	29
"Pedro Frosi"	70	"Carlos Silva"	29
"Marcia Aparecida Fernandes"	65	"Carlos Silva"	29
"Adriano Mota Loyola"	69	"Carlos Silva"	29
"Alessandra Maia de Castro Prado"	71	"Carlos Silva"	29
"Álex Moreira Herval"	67	"Carlos Silva"	29
"Ana Paula Turrioni Hidalgo"	66	"Carlos Silva"	29
"Ana Paula de Lima Oliveira"	69	"Carlos Silva"	29
"Belchior de Sousa"	68	"Carlos Silva"	29
"Elsieni Coelho da Silva"	63	"Carlos Silva"	29
"Gastao da Cunha Frota"	67	"Carlos Silva"	29
"Nikoleta Tzvetanova Kerinska"	65	"Carlos Silva"	29
"Renato Palumbo Doria"	63	"Carlos Silva"	29
"Adriana Pastorello Buim Arena"	67	"Carlos Silva"	29
"Aldeci Cacique Calixto"	72	"Carlos Silva"	29
"Aléxia Pádua Franco"	69	"Carlos Silva"	29
"Ana Beatriz da Silva Duarte"	62	"Carlos Silva"	29
"Andrea Maturano Longarezi"	72	"Carlos Silva"	29
"Jailson Mendes"	70	"Carlos Silva"	29
"Gabriel Jesus"	68	"Carlos Silva"	29
"Luciano Hulk"	70	"Carlos Silva"	29
"João Guilherme"	70	"Carlos Silva"	29
"Péricles Mendes"	63	"Carlos Silva"	29
"Alcino Eduardo Bonella"	64	"Carlos Silva"	29
"Alexandre Guimarães Tadeu de Soares"	68	"Carlos Silva"	29
"Ana Maria Said"	70	"Carlos Silva"	29
"Anselmo Tadeu Ferreira"	63	"Carlos Silva"	29
"Dennys Garcia Xavier"	70	"Carlos Silva"	29
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Carlos Silva"	29
"Lucas de Assis Ribeiro"	72	"Carlos Silva"	29
"Natália Mundim Tôrres"	72	"Carlos Silva"	29
"Tiago Wilson Patriarca Mineo "	68	"Carlos Silva"	29
"Neide Maria da Silva "	64	"Carlos Silva"	29
"Alexandre Garrido da Silva"	71	"Carlos Silva"	29
"Beatriz Corrêa Camargo"	72	"Carlos Silva"	29
"Daniela de Melo Crosara"	68	"Carlos Silva"	29
"Fernando Rodrigues Martins"	69	"Carlos Silva"	29
"Gustavo de Carvalho Marin"	69	"Carlos Silva"	29
"Ademir Cavalheiro"	64	"Carlos Silva"	29
"Adevailton Bernardo dos Santos"	68	"Carlos Silva"	29
"Alessandra Riposati Arantes"	65	"Carlos Silva"	29
"Djalmir Nestor Messias"	66	"Carlos Silva"	29
"Marcel Novaes"	66	"Carlos Silva"	29
"Alberto da Silva Morais"	70	"Carlos Silva"	29
"Carlos Hernrique Gomes"	65	"Carlos Silva"	29
"Daniela Cristina de Oliveira"	72	"Carlos Silva"	29
"Disney Oliver"	71	"Carlos Silva"	29
"Henrique Tomaz Gonzaga"	68	"Carlos Silva"	29
"Jamil Salem"	66	"Carlos Silva"	29
"Julia Vingadora"	71	"Carlos Silva"	29
"Roberto Carlos"	65	"Carlos Silva"	29
"Cláudio Assembly"	64	"Carlos Silva"	29
"Elaine Java"	63	"Carlos Silva"	29
"Lilian Rodrigues Sant’ Anna Campos"	70	"Carlos Silva"	29
"Clelia Regina Cafer"	66	"Carlos Silva"	29
"Marisa Aparecida Elias"	70	"Carlos Silva"	29
"Barbara Dias Rezende Gontijo"	63	"Carlos Silva"	29
"Tatiana Carneiro de Resende"	63	"Carlos Silva"	29
"Alessandro Gomes Enoque"	70	"Carlos Silva"	29
"Alex Fernando Borges"	68	"Carlos Silva"	29
"Alexandre Alves Alvenha"	70	"Carlos Silva"	29
"Alexandre Cacheffo"	71	"Carlos Silva"	29
"Alexandre Calzavara Yoshida"	72	"Carlos Silva"	29
"Severo Snape"	54	"Carlos Silva"	29
"Gina Maira"	65	"Isabella Melo Sousa"	22
"Marcelo Keese Albertini"	62	"Isabella Melo Sousa"	22
"Rivalino Matias Júnior"	69	"Isabella Melo Sousa"	22
"André Backes"	63	"Isabella Melo Sousa"	22
"Bruno Augusto Nassif Travençolo"	66	"Isabella Melo Sousa"	22
"Luiz Gustavo Almeida Martins"	67	"Isabella Melo Sousa"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Isabella Melo Sousa"	22
"Ariádine Cristine de Almeida"	71	"Isabella Melo Sousa"	22
"Giuliano Buzá Jacobucci"	67	"Isabella Melo Sousa"	22
"Jeamylle Nilin Gonçalves"	70	"Isabella Melo Sousa"	22
"Cassiano Aimberê Dorneles Welker"	69	"Isabella Melo Sousa"	22
"Admilson Lopes dos Santos"	72	"Isabella Melo Sousa"	22
"Adriana Rodrigues da Silva"	68	"Isabella Melo Sousa"	22
"Camila Mariana Ruiz"	71	"Isabella Melo Sousa"	22
"Fernando Rodrigo Rafaeli"	68	"Isabella Melo Sousa"	22
"Taciana Oliveira Souza"	69	"Isabella Melo Sousa"	22
"Jean Ponciano"	69	"Isabella Melo Sousa"	22
"Elaine Ribeiro"	67	"Isabella Melo Sousa"	22
"Alexsandro Soares"	71	"Isabella Melo Sousa"	22
"Pedro Frosi"	70	"Isabella Melo Sousa"	22
"Marcia Aparecida Fernandes"	65	"Isabella Melo Sousa"	22
"Adriano Mota Loyola"	69	"Isabella Melo Sousa"	22
"Alessandra Maia de Castro Prado"	71	"Isabella Melo Sousa"	22
"Álex Moreira Herval"	67	"Isabella Melo Sousa"	22
"Ana Paula Turrioni Hidalgo"	66	"Isabella Melo Sousa"	22
"Ana Paula de Lima Oliveira"	69	"Isabella Melo Sousa"	22
"Belchior de Sousa"	68	"Isabella Melo Sousa"	22
"Elsieni Coelho da Silva"	63	"Isabella Melo Sousa"	22
"Gastao da Cunha Frota"	67	"Isabella Melo Sousa"	22
"Nikoleta Tzvetanova Kerinska"	65	"Isabella Melo Sousa"	22
"Renato Palumbo Doria"	63	"Isabella Melo Sousa"	22
"Adriana Pastorello Buim Arena"	67	"Isabella Melo Sousa"	22
"Aldeci Cacique Calixto"	72	"Isabella Melo Sousa"	22
"Aléxia Pádua Franco"	69	"Isabella Melo Sousa"	22
"Ana Beatriz da Silva Duarte"	62	"Isabella Melo Sousa"	22
"Andrea Maturano Longarezi"	72	"Isabella Melo Sousa"	22
"Jailson Mendes"	70	"Isabella Melo Sousa"	22
"Gabriel Jesus"	68	"Isabella Melo Sousa"	22
"Luciano Hulk"	70	"Isabella Melo Sousa"	22
"João Guilherme"	70	"Isabella Melo Sousa"	22
"Péricles Mendes"	63	"Isabella Melo Sousa"	22
"Alcino Eduardo Bonella"	64	"Isabella Melo Sousa"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Isabella Melo Sousa"	22
"Ana Maria Said"	70	"Isabella Melo Sousa"	22
"Anselmo Tadeu Ferreira"	63	"Isabella Melo Sousa"	22
"Dennys Garcia Xavier"	70	"Isabella Melo Sousa"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Isabella Melo Sousa"	22
"Lucas de Assis Ribeiro"	72	"Isabella Melo Sousa"	22
"Natália Mundim Tôrres"	72	"Isabella Melo Sousa"	22
"Tiago Wilson Patriarca Mineo "	68	"Isabella Melo Sousa"	22
"Neide Maria da Silva "	64	"Isabella Melo Sousa"	22
"Alexandre Garrido da Silva"	71	"Isabella Melo Sousa"	22
"Beatriz Corrêa Camargo"	72	"Isabella Melo Sousa"	22
"Daniela de Melo Crosara"	68	"Isabella Melo Sousa"	22
"Fernando Rodrigues Martins"	69	"Isabella Melo Sousa"	22
"Gustavo de Carvalho Marin"	69	"Isabella Melo Sousa"	22
"Ademir Cavalheiro"	64	"Isabella Melo Sousa"	22
"Adevailton Bernardo dos Santos"	68	"Isabella Melo Sousa"	22
"Alessandra Riposati Arantes"	65	"Isabella Melo Sousa"	22
"Djalmir Nestor Messias"	66	"Isabella Melo Sousa"	22
"Marcel Novaes"	66	"Isabella Melo Sousa"	22
"Alberto da Silva Morais"	70	"Isabella Melo Sousa"	22
"Carlos Hernrique Gomes"	65	"Isabella Melo Sousa"	22
"Daniela Cristina de Oliveira"	72	"Isabella Melo Sousa"	22
"Disney Oliver"	71	"Isabella Melo Sousa"	22
"Henrique Tomaz Gonzaga"	68	"Isabella Melo Sousa"	22
"Jamil Salem"	66	"Isabella Melo Sousa"	22
"Julia Vingadora"	71	"Isabella Melo Sousa"	22
"Roberto Carlos"	65	"Isabella Melo Sousa"	22
"Cláudio Assembly"	64	"Isabella Melo Sousa"	22
"Elaine Java"	63	"Isabella Melo Sousa"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Isabella Melo Sousa"	22
"Clelia Regina Cafer"	66	"Isabella Melo Sousa"	22
"Marisa Aparecida Elias"	70	"Isabella Melo Sousa"	22
"Barbara Dias Rezende Gontijo"	63	"Isabella Melo Sousa"	22
"Tatiana Carneiro de Resende"	63	"Isabella Melo Sousa"	22
"Alessandro Gomes Enoque"	70	"Isabella Melo Sousa"	22
"Alex Fernando Borges"	68	"Isabella Melo Sousa"	22
"Alexandre Alves Alvenha"	70	"Isabella Melo Sousa"	22
"Alexandre Cacheffo"	71	"Isabella Melo Sousa"	22
"Alexandre Calzavara Yoshida"	72	"Isabella Melo Sousa"	22
"Severo Snape"	54	"Isabella Melo Sousa"	22
"Gina Maira"	65	"Jose Almeida Azevedo"	20
"Marcelo Keese Albertini"	62	"Jose Almeida Azevedo"	20
"Rivalino Matias Júnior"	69	"Jose Almeida Azevedo"	20
"André Backes"	63	"Jose Almeida Azevedo"	20
"Bruno Augusto Nassif Travençolo"	66	"Jose Almeida Azevedo"	20
"Luiz Gustavo Almeida Martins"	67	"Jose Almeida Azevedo"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Jose Almeida Azevedo"	20
"Ariádine Cristine de Almeida"	71	"Jose Almeida Azevedo"	20
"Giuliano Buzá Jacobucci"	67	"Jose Almeida Azevedo"	20
"Jeamylle Nilin Gonçalves"	70	"Jose Almeida Azevedo"	20
"Cassiano Aimberê Dorneles Welker"	69	"Jose Almeida Azevedo"	20
"Admilson Lopes dos Santos"	72	"Jose Almeida Azevedo"	20
"Adriana Rodrigues da Silva"	68	"Jose Almeida Azevedo"	20
"Camila Mariana Ruiz"	71	"Jose Almeida Azevedo"	20
"Fernando Rodrigo Rafaeli"	68	"Jose Almeida Azevedo"	20
"Taciana Oliveira Souza"	69	"Jose Almeida Azevedo"	20
"Jean Ponciano"	69	"Jose Almeida Azevedo"	20
"Elaine Ribeiro"	67	"Jose Almeida Azevedo"	20
"Alexsandro Soares"	71	"Jose Almeida Azevedo"	20
"Pedro Frosi"	70	"Jose Almeida Azevedo"	20
"Marcia Aparecida Fernandes"	65	"Jose Almeida Azevedo"	20
"Adriano Mota Loyola"	69	"Jose Almeida Azevedo"	20
"Alessandra Maia de Castro Prado"	71	"Jose Almeida Azevedo"	20
"Álex Moreira Herval"	67	"Jose Almeida Azevedo"	20
"Ana Paula Turrioni Hidalgo"	66	"Jose Almeida Azevedo"	20
"Ana Paula de Lima Oliveira"	69	"Jose Almeida Azevedo"	20
"Belchior de Sousa"	68	"Jose Almeida Azevedo"	20
"Elsieni Coelho da Silva"	63	"Jose Almeida Azevedo"	20
"Gastao da Cunha Frota"	67	"Jose Almeida Azevedo"	20
"Nikoleta Tzvetanova Kerinska"	65	"Jose Almeida Azevedo"	20
"Renato Palumbo Doria"	63	"Jose Almeida Azevedo"	20
"Adriana Pastorello Buim Arena"	67	"Jose Almeida Azevedo"	20
"Aldeci Cacique Calixto"	72	"Jose Almeida Azevedo"	20
"Aléxia Pádua Franco"	69	"Jose Almeida Azevedo"	20
"Ana Beatriz da Silva Duarte"	62	"Jose Almeida Azevedo"	20
"Andrea Maturano Longarezi"	72	"Jose Almeida Azevedo"	20
"Jailson Mendes"	70	"Jose Almeida Azevedo"	20
"Gabriel Jesus"	68	"Jose Almeida Azevedo"	20
"Luciano Hulk"	70	"Jose Almeida Azevedo"	20
"João Guilherme"	70	"Jose Almeida Azevedo"	20
"Péricles Mendes"	63	"Jose Almeida Azevedo"	20
"Alcino Eduardo Bonella"	64	"Jose Almeida Azevedo"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Jose Almeida Azevedo"	20
"Ana Maria Said"	70	"Jose Almeida Azevedo"	20
"Anselmo Tadeu Ferreira"	63	"Jose Almeida Azevedo"	20
"Dennys Garcia Xavier"	70	"Jose Almeida Azevedo"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Jose Almeida Azevedo"	20
"Lucas de Assis Ribeiro"	72	"Jose Almeida Azevedo"	20
"Natália Mundim Tôrres"	72	"Jose Almeida Azevedo"	20
"Tiago Wilson Patriarca Mineo "	68	"Jose Almeida Azevedo"	20
"Neide Maria da Silva "	64	"Jose Almeida Azevedo"	20
"Alexandre Garrido da Silva"	71	"Jose Almeida Azevedo"	20
"Beatriz Corrêa Camargo"	72	"Jose Almeida Azevedo"	20
"Daniela de Melo Crosara"	68	"Jose Almeida Azevedo"	20
"Fernando Rodrigues Martins"	69	"Jose Almeida Azevedo"	20
"Gustavo de Carvalho Marin"	69	"Jose Almeida Azevedo"	20
"Ademir Cavalheiro"	64	"Jose Almeida Azevedo"	20
"Adevailton Bernardo dos Santos"	68	"Jose Almeida Azevedo"	20
"Alessandra Riposati Arantes"	65	"Jose Almeida Azevedo"	20
"Djalmir Nestor Messias"	66	"Jose Almeida Azevedo"	20
"Marcel Novaes"	66	"Jose Almeida Azevedo"	20
"Alberto da Silva Morais"	70	"Jose Almeida Azevedo"	20
"Carlos Hernrique Gomes"	65	"Jose Almeida Azevedo"	20
"Daniela Cristina de Oliveira"	72	"Jose Almeida Azevedo"	20
"Disney Oliver"	71	"Jose Almeida Azevedo"	20
"Henrique Tomaz Gonzaga"	68	"Jose Almeida Azevedo"	20
"Jamil Salem"	66	"Jose Almeida Azevedo"	20
"Julia Vingadora"	71	"Jose Almeida Azevedo"	20
"Roberto Carlos"	65	"Jose Almeida Azevedo"	20
"Cláudio Assembly"	64	"Jose Almeida Azevedo"	20
"Elaine Java"	63	"Jose Almeida Azevedo"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Jose Almeida Azevedo"	20
"Clelia Regina Cafer"	66	"Jose Almeida Azevedo"	20
"Marisa Aparecida Elias"	70	"Jose Almeida Azevedo"	20
"Barbara Dias Rezende Gontijo"	63	"Jose Almeida Azevedo"	20
"Tatiana Carneiro de Resende"	63	"Jose Almeida Azevedo"	20
"Alessandro Gomes Enoque"	70	"Jose Almeida Azevedo"	20
"Alex Fernando Borges"	68	"Jose Almeida Azevedo"	20
"Alexandre Alves Alvenha"	70	"Jose Almeida Azevedo"	20
"Alexandre Cacheffo"	71	"Jose Almeida Azevedo"	20
"Alexandre Calzavara Yoshida"	72	"Jose Almeida Azevedo"	20
"Severo Snape"	54	"Jose Almeida Azevedo"	20
"Gina Maira"	65	"Aline Oliveira Araujo"	21
"Marcelo Keese Albertini"	62	"Aline Oliveira Araujo"	21
"Rivalino Matias Júnior"	69	"Aline Oliveira Araujo"	21
"André Backes"	63	"Aline Oliveira Araujo"	21
"Bruno Augusto Nassif Travençolo"	66	"Aline Oliveira Araujo"	21
"Luiz Gustavo Almeida Martins"	67	"Aline Oliveira Araujo"	21
"Ailton Gonçalves Rodrigues Junior"	69	"Aline Oliveira Araujo"	21
"Ariádine Cristine de Almeida"	71	"Aline Oliveira Araujo"	21
"Giuliano Buzá Jacobucci"	67	"Aline Oliveira Araujo"	21
"Jeamylle Nilin Gonçalves"	70	"Aline Oliveira Araujo"	21
"Cassiano Aimberê Dorneles Welker"	69	"Aline Oliveira Araujo"	21
"Admilson Lopes dos Santos"	72	"Aline Oliveira Araujo"	21
"Adriana Rodrigues da Silva"	68	"Aline Oliveira Araujo"	21
"Camila Mariana Ruiz"	71	"Aline Oliveira Araujo"	21
"Fernando Rodrigo Rafaeli"	68	"Aline Oliveira Araujo"	21
"Taciana Oliveira Souza"	69	"Aline Oliveira Araujo"	21
"Jean Ponciano"	69	"Aline Oliveira Araujo"	21
"Elaine Ribeiro"	67	"Aline Oliveira Araujo"	21
"Alexsandro Soares"	71	"Aline Oliveira Araujo"	21
"Pedro Frosi"	70	"Aline Oliveira Araujo"	21
"Marcia Aparecida Fernandes"	65	"Aline Oliveira Araujo"	21
"Adriano Mota Loyola"	69	"Aline Oliveira Araujo"	21
"Alessandra Maia de Castro Prado"	71	"Aline Oliveira Araujo"	21
"Álex Moreira Herval"	67	"Aline Oliveira Araujo"	21
"Ana Paula Turrioni Hidalgo"	66	"Aline Oliveira Araujo"	21
"Ana Paula de Lima Oliveira"	69	"Aline Oliveira Araujo"	21
"Belchior de Sousa"	68	"Aline Oliveira Araujo"	21
"Elsieni Coelho da Silva"	63	"Aline Oliveira Araujo"	21
"Gastao da Cunha Frota"	67	"Aline Oliveira Araujo"	21
"Nikoleta Tzvetanova Kerinska"	65	"Aline Oliveira Araujo"	21
"Renato Palumbo Doria"	63	"Aline Oliveira Araujo"	21
"Adriana Pastorello Buim Arena"	67	"Aline Oliveira Araujo"	21
"Aldeci Cacique Calixto"	72	"Aline Oliveira Araujo"	21
"Aléxia Pádua Franco"	69	"Aline Oliveira Araujo"	21
"Ana Beatriz da Silva Duarte"	62	"Aline Oliveira Araujo"	21
"Andrea Maturano Longarezi"	72	"Aline Oliveira Araujo"	21
"Jailson Mendes"	70	"Aline Oliveira Araujo"	21
"Gabriel Jesus"	68	"Aline Oliveira Araujo"	21
"Luciano Hulk"	70	"Aline Oliveira Araujo"	21
"João Guilherme"	70	"Aline Oliveira Araujo"	21
"Péricles Mendes"	63	"Aline Oliveira Araujo"	21
"Alcino Eduardo Bonella"	64	"Aline Oliveira Araujo"	21
"Alexandre Guimarães Tadeu de Soares"	68	"Aline Oliveira Araujo"	21
"Ana Maria Said"	70	"Aline Oliveira Araujo"	21
"Anselmo Tadeu Ferreira"	63	"Aline Oliveira Araujo"	21
"Dennys Garcia Xavier"	70	"Aline Oliveira Araujo"	21
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Aline Oliveira Araujo"	21
"Lucas de Assis Ribeiro"	72	"Aline Oliveira Araujo"	21
"Natália Mundim Tôrres"	72	"Aline Oliveira Araujo"	21
"Tiago Wilson Patriarca Mineo "	68	"Aline Oliveira Araujo"	21
"Neide Maria da Silva "	64	"Aline Oliveira Araujo"	21
"Alexandre Garrido da Silva"	71	"Aline Oliveira Araujo"	21
"Beatriz Corrêa Camargo"	72	"Aline Oliveira Araujo"	21
"Daniela de Melo Crosara"	68	"Aline Oliveira Araujo"	21
"Fernando Rodrigues Martins"	69	"Aline Oliveira Araujo"	21
"Gustavo de Carvalho Marin"	69	"Aline Oliveira Araujo"	21
"Ademir Cavalheiro"	64	"Aline Oliveira Araujo"	21
"Adevailton Bernardo dos Santos"	68	"Aline Oliveira Araujo"	21
"Alessandra Riposati Arantes"	65	"Aline Oliveira Araujo"	21
"Djalmir Nestor Messias"	66	"Aline Oliveira Araujo"	21
"Marcel Novaes"	66	"Aline Oliveira Araujo"	21
"Alberto da Silva Morais"	70	"Aline Oliveira Araujo"	21
"Carlos Hernrique Gomes"	65	"Aline Oliveira Araujo"	21
"Daniela Cristina de Oliveira"	72	"Aline Oliveira Araujo"	21
"Disney Oliver"	71	"Aline Oliveira Araujo"	21
"Henrique Tomaz Gonzaga"	68	"Aline Oliveira Araujo"	21
"Jamil Salem"	66	"Aline Oliveira Araujo"	21
"Julia Vingadora"	71	"Aline Oliveira Araujo"	21
"Roberto Carlos"	65	"Aline Oliveira Araujo"	21
"Cláudio Assembly"	64	"Aline Oliveira Araujo"	21
"Elaine Java"	63	"Aline Oliveira Araujo"	21
"Lilian Rodrigues Sant’ Anna Campos"	70	"Aline Oliveira Araujo"	21
"Clelia Regina Cafer"	66	"Aline Oliveira Araujo"	21
"Marisa Aparecida Elias"	70	"Aline Oliveira Araujo"	21
"Barbara Dias Rezende Gontijo"	63	"Aline Oliveira Araujo"	21
"Tatiana Carneiro de Resende"	63	"Aline Oliveira Araujo"	21
"Alessandro Gomes Enoque"	70	"Aline Oliveira Araujo"	21
"Alex Fernando Borges"	68	"Aline Oliveira Araujo"	21
"Alexandre Alves Alvenha"	70	"Aline Oliveira Araujo"	21
"Alexandre Cacheffo"	71	"Aline Oliveira Araujo"	21
"Alexandre Calzavara Yoshida"	72	"Aline Oliveira Araujo"	21
"Severo Snape"	54	"Aline Oliveira Araujo"	21
"Gina Maira"	65	"Andre Silva Martins"	22
"Marcelo Keese Albertini"	62	"Andre Silva Martins"	22
"Rivalino Matias Júnior"	69	"Andre Silva Martins"	22
"André Backes"	63	"Andre Silva Martins"	22
"Bruno Augusto Nassif Travençolo"	66	"Andre Silva Martins"	22
"Luiz Gustavo Almeida Martins"	67	"Andre Silva Martins"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Andre Silva Martins"	22
"Ariádine Cristine de Almeida"	71	"Andre Silva Martins"	22
"Giuliano Buzá Jacobucci"	67	"Andre Silva Martins"	22
"Jeamylle Nilin Gonçalves"	70	"Andre Silva Martins"	22
"Cassiano Aimberê Dorneles Welker"	69	"Andre Silva Martins"	22
"Admilson Lopes dos Santos"	72	"Andre Silva Martins"	22
"Adriana Rodrigues da Silva"	68	"Andre Silva Martins"	22
"Camila Mariana Ruiz"	71	"Andre Silva Martins"	22
"Fernando Rodrigo Rafaeli"	68	"Andre Silva Martins"	22
"Taciana Oliveira Souza"	69	"Andre Silva Martins"	22
"Jean Ponciano"	69	"Andre Silva Martins"	22
"Elaine Ribeiro"	67	"Andre Silva Martins"	22
"Alexsandro Soares"	71	"Andre Silva Martins"	22
"Pedro Frosi"	70	"Andre Silva Martins"	22
"Marcia Aparecida Fernandes"	65	"Andre Silva Martins"	22
"Adriano Mota Loyola"	69	"Andre Silva Martins"	22
"Alessandra Maia de Castro Prado"	71	"Andre Silva Martins"	22
"Álex Moreira Herval"	67	"Andre Silva Martins"	22
"Ana Paula Turrioni Hidalgo"	66	"Andre Silva Martins"	22
"Ana Paula de Lima Oliveira"	69	"Andre Silva Martins"	22
"Belchior de Sousa"	68	"Andre Silva Martins"	22
"Elsieni Coelho da Silva"	63	"Andre Silva Martins"	22
"Gastao da Cunha Frota"	67	"Andre Silva Martins"	22
"Nikoleta Tzvetanova Kerinska"	65	"Andre Silva Martins"	22
"Renato Palumbo Doria"	63	"Andre Silva Martins"	22
"Adriana Pastorello Buim Arena"	67	"Andre Silva Martins"	22
"Aldeci Cacique Calixto"	72	"Andre Silva Martins"	22
"Aléxia Pádua Franco"	69	"Andre Silva Martins"	22
"Ana Beatriz da Silva Duarte"	62	"Andre Silva Martins"	22
"Andrea Maturano Longarezi"	72	"Andre Silva Martins"	22
"Jailson Mendes"	70	"Andre Silva Martins"	22
"Gabriel Jesus"	68	"Andre Silva Martins"	22
"Luciano Hulk"	70	"Andre Silva Martins"	22
"João Guilherme"	70	"Andre Silva Martins"	22
"Péricles Mendes"	63	"Andre Silva Martins"	22
"Alcino Eduardo Bonella"	64	"Andre Silva Martins"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Andre Silva Martins"	22
"Ana Maria Said"	70	"Andre Silva Martins"	22
"Anselmo Tadeu Ferreira"	63	"Andre Silva Martins"	22
"Dennys Garcia Xavier"	70	"Andre Silva Martins"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Andre Silva Martins"	22
"Lucas de Assis Ribeiro"	72	"Andre Silva Martins"	22
"Natália Mundim Tôrres"	72	"Andre Silva Martins"	22
"Tiago Wilson Patriarca Mineo "	68	"Andre Silva Martins"	22
"Neide Maria da Silva "	64	"Andre Silva Martins"	22
"Alexandre Garrido da Silva"	71	"Andre Silva Martins"	22
"Beatriz Corrêa Camargo"	72	"Andre Silva Martins"	22
"Daniela de Melo Crosara"	68	"Andre Silva Martins"	22
"Fernando Rodrigues Martins"	69	"Andre Silva Martins"	22
"Gustavo de Carvalho Marin"	69	"Andre Silva Martins"	22
"Ademir Cavalheiro"	64	"Andre Silva Martins"	22
"Adevailton Bernardo dos Santos"	68	"Andre Silva Martins"	22
"Alessandra Riposati Arantes"	65	"Andre Silva Martins"	22
"Djalmir Nestor Messias"	66	"Andre Silva Martins"	22
"Marcel Novaes"	66	"Andre Silva Martins"	22
"Alberto da Silva Morais"	70	"Andre Silva Martins"	22
"Carlos Hernrique Gomes"	65	"Andre Silva Martins"	22
"Daniela Cristina de Oliveira"	72	"Andre Silva Martins"	22
"Disney Oliver"	71	"Andre Silva Martins"	22
"Henrique Tomaz Gonzaga"	68	"Andre Silva Martins"	22
"Jamil Salem"	66	"Andre Silva Martins"	22
"Julia Vingadora"	71	"Andre Silva Martins"	22
"Roberto Carlos"	65	"Andre Silva Martins"	22
"Cláudio Assembly"	64	"Andre Silva Martins"	22
"Elaine Java"	63	"Andre Silva Martins"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Andre Silva Martins"	22
"Clelia Regina Cafer"	66	"Andre Silva Martins"	22
"Marisa Aparecida Elias"	70	"Andre Silva Martins"	22
"Barbara Dias Rezende Gontijo"	63	"Andre Silva Martins"	22
"Tatiana Carneiro de Resende"	63	"Andre Silva Martins"	22
"Alessandro Gomes Enoque"	70	"Andre Silva Martins"	22
"Alex Fernando Borges"	68	"Andre Silva Martins"	22
"Alexandre Alves Alvenha"	70	"Andre Silva Martins"	22
"Alexandre Cacheffo"	71	"Andre Silva Martins"	22
"Alexandre Calzavara Yoshida"	72	"Andre Silva Martins"	22
"Severo Snape"	54	"Andre Silva Martins"	22
"Gina Maira"	65	"Lavinia Sousa Carvalho"	20
"Marcelo Keese Albertini"	62	"Lavinia Sousa Carvalho"	20
"Rivalino Matias Júnior"	69	"Lavinia Sousa Carvalho"	20
"André Backes"	63	"Lavinia Sousa Carvalho"	20
"Bruno Augusto Nassif Travençolo"	66	"Lavinia Sousa Carvalho"	20
"Luiz Gustavo Almeida Martins"	67	"Lavinia Sousa Carvalho"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Lavinia Sousa Carvalho"	20
"Ariádine Cristine de Almeida"	71	"Lavinia Sousa Carvalho"	20
"Giuliano Buzá Jacobucci"	67	"Lavinia Sousa Carvalho"	20
"Jeamylle Nilin Gonçalves"	70	"Lavinia Sousa Carvalho"	20
"Cassiano Aimberê Dorneles Welker"	69	"Lavinia Sousa Carvalho"	20
"Admilson Lopes dos Santos"	72	"Lavinia Sousa Carvalho"	20
"Adriana Rodrigues da Silva"	68	"Lavinia Sousa Carvalho"	20
"Camila Mariana Ruiz"	71	"Lavinia Sousa Carvalho"	20
"Fernando Rodrigo Rafaeli"	68	"Lavinia Sousa Carvalho"	20
"Taciana Oliveira Souza"	69	"Lavinia Sousa Carvalho"	20
"Jean Ponciano"	69	"Lavinia Sousa Carvalho"	20
"Elaine Ribeiro"	67	"Lavinia Sousa Carvalho"	20
"Alexsandro Soares"	71	"Lavinia Sousa Carvalho"	20
"Pedro Frosi"	70	"Lavinia Sousa Carvalho"	20
"Marcia Aparecida Fernandes"	65	"Lavinia Sousa Carvalho"	20
"Adriano Mota Loyola"	69	"Lavinia Sousa Carvalho"	20
"Alessandra Maia de Castro Prado"	71	"Lavinia Sousa Carvalho"	20
"Álex Moreira Herval"	67	"Lavinia Sousa Carvalho"	20
"Ana Paula Turrioni Hidalgo"	66	"Lavinia Sousa Carvalho"	20
"Ana Paula de Lima Oliveira"	69	"Lavinia Sousa Carvalho"	20
"Belchior de Sousa"	68	"Lavinia Sousa Carvalho"	20
"Elsieni Coelho da Silva"	63	"Lavinia Sousa Carvalho"	20
"Gastao da Cunha Frota"	67	"Lavinia Sousa Carvalho"	20
"Nikoleta Tzvetanova Kerinska"	65	"Lavinia Sousa Carvalho"	20
"Renato Palumbo Doria"	63	"Lavinia Sousa Carvalho"	20
"Adriana Pastorello Buim Arena"	67	"Lavinia Sousa Carvalho"	20
"Aldeci Cacique Calixto"	72	"Lavinia Sousa Carvalho"	20
"Aléxia Pádua Franco"	69	"Lavinia Sousa Carvalho"	20
"Ana Beatriz da Silva Duarte"	62	"Lavinia Sousa Carvalho"	20
"Andrea Maturano Longarezi"	72	"Lavinia Sousa Carvalho"	20
"Jailson Mendes"	70	"Lavinia Sousa Carvalho"	20
"Gabriel Jesus"	68	"Lavinia Sousa Carvalho"	20
"Luciano Hulk"	70	"Lavinia Sousa Carvalho"	20
"João Guilherme"	70	"Lavinia Sousa Carvalho"	20
"Péricles Mendes"	63	"Lavinia Sousa Carvalho"	20
"Alcino Eduardo Bonella"	64	"Lavinia Sousa Carvalho"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Lavinia Sousa Carvalho"	20
"Ana Maria Said"	70	"Lavinia Sousa Carvalho"	20
"Anselmo Tadeu Ferreira"	63	"Lavinia Sousa Carvalho"	20
"Dennys Garcia Xavier"	70	"Lavinia Sousa Carvalho"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Lavinia Sousa Carvalho"	20
"Lucas de Assis Ribeiro"	72	"Lavinia Sousa Carvalho"	20
"Natália Mundim Tôrres"	72	"Lavinia Sousa Carvalho"	20
"Tiago Wilson Patriarca Mineo "	68	"Lavinia Sousa Carvalho"	20
"Neide Maria da Silva "	64	"Lavinia Sousa Carvalho"	20
"Alexandre Garrido da Silva"	71	"Lavinia Sousa Carvalho"	20
"Beatriz Corrêa Camargo"	72	"Lavinia Sousa Carvalho"	20
"Daniela de Melo Crosara"	68	"Lavinia Sousa Carvalho"	20
"Fernando Rodrigues Martins"	69	"Lavinia Sousa Carvalho"	20
"Gustavo de Carvalho Marin"	69	"Lavinia Sousa Carvalho"	20
"Ademir Cavalheiro"	64	"Lavinia Sousa Carvalho"	20
"Adevailton Bernardo dos Santos"	68	"Lavinia Sousa Carvalho"	20
"Alessandra Riposati Arantes"	65	"Lavinia Sousa Carvalho"	20
"Djalmir Nestor Messias"	66	"Lavinia Sousa Carvalho"	20
"Marcel Novaes"	66	"Lavinia Sousa Carvalho"	20
"Alberto da Silva Morais"	70	"Lavinia Sousa Carvalho"	20
"Carlos Hernrique Gomes"	65	"Lavinia Sousa Carvalho"	20
"Daniela Cristina de Oliveira"	72	"Lavinia Sousa Carvalho"	20
"Disney Oliver"	71	"Lavinia Sousa Carvalho"	20
"Henrique Tomaz Gonzaga"	68	"Lavinia Sousa Carvalho"	20
"Jamil Salem"	66	"Lavinia Sousa Carvalho"	20
"Julia Vingadora"	71	"Lavinia Sousa Carvalho"	20
"Roberto Carlos"	65	"Lavinia Sousa Carvalho"	20
"Cláudio Assembly"	64	"Lavinia Sousa Carvalho"	20
"Elaine Java"	63	"Lavinia Sousa Carvalho"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Lavinia Sousa Carvalho"	20
"Clelia Regina Cafer"	66	"Lavinia Sousa Carvalho"	20
"Marisa Aparecida Elias"	70	"Lavinia Sousa Carvalho"	20
"Barbara Dias Rezende Gontijo"	63	"Lavinia Sousa Carvalho"	20
"Tatiana Carneiro de Resende"	63	"Lavinia Sousa Carvalho"	20
"Alessandro Gomes Enoque"	70	"Lavinia Sousa Carvalho"	20
"Alex Fernando Borges"	68	"Lavinia Sousa Carvalho"	20
"Alexandre Alves Alvenha"	70	"Lavinia Sousa Carvalho"	20
"Alexandre Cacheffo"	71	"Lavinia Sousa Carvalho"	20
"Alexandre Calzavara Yoshida"	72	"Lavinia Sousa Carvalho"	20
"Severo Snape"	54	"Lavinia Sousa Carvalho"	20
"Gina Maira"	65	"Victor Guilherme Oliveira Santos"	24
"Marcelo Keese Albertini"	62	"Victor Guilherme Oliveira Santos"	24
"Rivalino Matias Júnior"	69	"Victor Guilherme Oliveira Santos"	24
"André Backes"	63	"Victor Guilherme Oliveira Santos"	24
"Bruno Augusto Nassif Travençolo"	66	"Victor Guilherme Oliveira Santos"	24
"Luiz Gustavo Almeida Martins"	67	"Victor Guilherme Oliveira Santos"	24
"Ailton Gonçalves Rodrigues Junior"	69	"Victor Guilherme Oliveira Santos"	24
"Ariádine Cristine de Almeida"	71	"Victor Guilherme Oliveira Santos"	24
"Giuliano Buzá Jacobucci"	67	"Victor Guilherme Oliveira Santos"	24
"Jeamylle Nilin Gonçalves"	70	"Victor Guilherme Oliveira Santos"	24
"Cassiano Aimberê Dorneles Welker"	69	"Victor Guilherme Oliveira Santos"	24
"Admilson Lopes dos Santos"	72	"Victor Guilherme Oliveira Santos"	24
"Adriana Rodrigues da Silva"	68	"Victor Guilherme Oliveira Santos"	24
"Camila Mariana Ruiz"	71	"Victor Guilherme Oliveira Santos"	24
"Fernando Rodrigo Rafaeli"	68	"Victor Guilherme Oliveira Santos"	24
"Taciana Oliveira Souza"	69	"Victor Guilherme Oliveira Santos"	24
"Jean Ponciano"	69	"Victor Guilherme Oliveira Santos"	24
"Elaine Ribeiro"	67	"Victor Guilherme Oliveira Santos"	24
"Alexsandro Soares"	71	"Victor Guilherme Oliveira Santos"	24
"Pedro Frosi"	70	"Victor Guilherme Oliveira Santos"	24
"Marcia Aparecida Fernandes"	65	"Victor Guilherme Oliveira Santos"	24
"Adriano Mota Loyola"	69	"Victor Guilherme Oliveira Santos"	24
"Alessandra Maia de Castro Prado"	71	"Victor Guilherme Oliveira Santos"	24
"Álex Moreira Herval"	67	"Victor Guilherme Oliveira Santos"	24
"Ana Paula Turrioni Hidalgo"	66	"Victor Guilherme Oliveira Santos"	24
"Ana Paula de Lima Oliveira"	69	"Victor Guilherme Oliveira Santos"	24
"Belchior de Sousa"	68	"Victor Guilherme Oliveira Santos"	24
"Elsieni Coelho da Silva"	63	"Victor Guilherme Oliveira Santos"	24
"Gastao da Cunha Frota"	67	"Victor Guilherme Oliveira Santos"	24
"Nikoleta Tzvetanova Kerinska"	65	"Victor Guilherme Oliveira Santos"	24
"Renato Palumbo Doria"	63	"Victor Guilherme Oliveira Santos"	24
"Adriana Pastorello Buim Arena"	67	"Victor Guilherme Oliveira Santos"	24
"Aldeci Cacique Calixto"	72	"Victor Guilherme Oliveira Santos"	24
"Aléxia Pádua Franco"	69	"Victor Guilherme Oliveira Santos"	24
"Ana Beatriz da Silva Duarte"	62	"Victor Guilherme Oliveira Santos"	24
"Andrea Maturano Longarezi"	72	"Victor Guilherme Oliveira Santos"	24
"Jailson Mendes"	70	"Victor Guilherme Oliveira Santos"	24
"Gabriel Jesus"	68	"Victor Guilherme Oliveira Santos"	24
"Luciano Hulk"	70	"Victor Guilherme Oliveira Santos"	24
"João Guilherme"	70	"Victor Guilherme Oliveira Santos"	24
"Péricles Mendes"	63	"Victor Guilherme Oliveira Santos"	24
"Alcino Eduardo Bonella"	64	"Victor Guilherme Oliveira Santos"	24
"Alexandre Guimarães Tadeu de Soares"	68	"Victor Guilherme Oliveira Santos"	24
"Ana Maria Said"	70	"Victor Guilherme Oliveira Santos"	24
"Anselmo Tadeu Ferreira"	63	"Victor Guilherme Oliveira Santos"	24
"Dennys Garcia Xavier"	70	"Victor Guilherme Oliveira Santos"	24
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Victor Guilherme Oliveira Santos"	24
"Lucas de Assis Ribeiro"	72	"Victor Guilherme Oliveira Santos"	24
"Natália Mundim Tôrres"	72	"Victor Guilherme Oliveira Santos"	24
"Tiago Wilson Patriarca Mineo "	68	"Victor Guilherme Oliveira Santos"	24
"Neide Maria da Silva "	64	"Victor Guilherme Oliveira Santos"	24
"Alexandre Garrido da Silva"	71	"Victor Guilherme Oliveira Santos"	24
"Beatriz Corrêa Camargo"	72	"Victor Guilherme Oliveira Santos"	24
"Daniela de Melo Crosara"	68	"Victor Guilherme Oliveira Santos"	24
"Fernando Rodrigues Martins"	69	"Victor Guilherme Oliveira Santos"	24
"Gustavo de Carvalho Marin"	69	"Victor Guilherme Oliveira Santos"	24
"Ademir Cavalheiro"	64	"Victor Guilherme Oliveira Santos"	24
"Adevailton Bernardo dos Santos"	68	"Victor Guilherme Oliveira Santos"	24
"Alessandra Riposati Arantes"	65	"Victor Guilherme Oliveira Santos"	24
"Djalmir Nestor Messias"	66	"Victor Guilherme Oliveira Santos"	24
"Marcel Novaes"	66	"Victor Guilherme Oliveira Santos"	24
"Alberto da Silva Morais"	70	"Victor Guilherme Oliveira Santos"	24
"Carlos Hernrique Gomes"	65	"Victor Guilherme Oliveira Santos"	24
"Daniela Cristina de Oliveira"	72	"Victor Guilherme Oliveira Santos"	24
"Disney Oliver"	71	"Victor Guilherme Oliveira Santos"	24
"Henrique Tomaz Gonzaga"	68	"Victor Guilherme Oliveira Santos"	24
"Jamil Salem"	66	"Victor Guilherme Oliveira Santos"	24
"Julia Vingadora"	71	"Victor Guilherme Oliveira Santos"	24
"Roberto Carlos"	65	"Victor Guilherme Oliveira Santos"	24
"Cláudio Assembly"	64	"Victor Guilherme Oliveira Santos"	24
"Elaine Java"	63	"Victor Guilherme Oliveira Santos"	24
"Lilian Rodrigues Sant’ Anna Campos"	70	"Victor Guilherme Oliveira Santos"	24
"Clelia Regina Cafer"	66	"Victor Guilherme Oliveira Santos"	24
"Marisa Aparecida Elias"	70	"Victor Guilherme Oliveira Santos"	24
"Barbara Dias Rezende Gontijo"	63	"Victor Guilherme Oliveira Santos"	24
"Tatiana Carneiro de Resende"	63	"Victor Guilherme Oliveira Santos"	24
"Alessandro Gomes Enoque"	70	"Victor Guilherme Oliveira Santos"	24
"Alex Fernando Borges"	68	"Victor Guilherme Oliveira Santos"	24
"Alexandre Alves Alvenha"	70	"Victor Guilherme Oliveira Santos"	24
"Alexandre Cacheffo"	71	"Victor Guilherme Oliveira Santos"	24
"Alexandre Calzavara Yoshida"	72	"Victor Guilherme Oliveira Santos"	24
"Severo Snape"	54	"Victor Guilherme Oliveira Santos"	24
"Gina Maira"	65	"Sara Pelegrineti de José"	48
"Marcelo Keese Albertini"	62	"Sara Pelegrineti de José"	48
"Rivalino Matias Júnior"	69	"Sara Pelegrineti de José"	48
"André Backes"	63	"Sara Pelegrineti de José"	48
"Bruno Augusto Nassif Travençolo"	66	"Sara Pelegrineti de José"	48
"Luiz Gustavo Almeida Martins"	67	"Sara Pelegrineti de José"	48
"Ailton Gonçalves Rodrigues Junior"	69	"Sara Pelegrineti de José"	48
"Ariádine Cristine de Almeida"	71	"Sara Pelegrineti de José"	48
"Giuliano Buzá Jacobucci"	67	"Sara Pelegrineti de José"	48
"Jeamylle Nilin Gonçalves"	70	"Sara Pelegrineti de José"	48
"Cassiano Aimberê Dorneles Welker"	69	"Sara Pelegrineti de José"	48
"Admilson Lopes dos Santos"	72	"Sara Pelegrineti de José"	48
"Adriana Rodrigues da Silva"	68	"Sara Pelegrineti de José"	48
"Camila Mariana Ruiz"	71	"Sara Pelegrineti de José"	48
"Fernando Rodrigo Rafaeli"	68	"Sara Pelegrineti de José"	48
"Taciana Oliveira Souza"	69	"Sara Pelegrineti de José"	48
"Jean Ponciano"	69	"Sara Pelegrineti de José"	48
"Elaine Ribeiro"	67	"Sara Pelegrineti de José"	48
"Alexsandro Soares"	71	"Sara Pelegrineti de José"	48
"Pedro Frosi"	70	"Sara Pelegrineti de José"	48
"Marcia Aparecida Fernandes"	65	"Sara Pelegrineti de José"	48
"Adriano Mota Loyola"	69	"Sara Pelegrineti de José"	48
"Alessandra Maia de Castro Prado"	71	"Sara Pelegrineti de José"	48
"Álex Moreira Herval"	67	"Sara Pelegrineti de José"	48
"Ana Paula Turrioni Hidalgo"	66	"Sara Pelegrineti de José"	48
"Ana Paula de Lima Oliveira"	69	"Sara Pelegrineti de José"	48
"Belchior de Sousa"	68	"Sara Pelegrineti de José"	48
"Elsieni Coelho da Silva"	63	"Sara Pelegrineti de José"	48
"Gastao da Cunha Frota"	67	"Sara Pelegrineti de José"	48
"Nikoleta Tzvetanova Kerinska"	65	"Sara Pelegrineti de José"	48
"Renato Palumbo Doria"	63	"Sara Pelegrineti de José"	48
"Adriana Pastorello Buim Arena"	67	"Sara Pelegrineti de José"	48
"Aldeci Cacique Calixto"	72	"Sara Pelegrineti de José"	48
"Aléxia Pádua Franco"	69	"Sara Pelegrineti de José"	48
"Ana Beatriz da Silva Duarte"	62	"Sara Pelegrineti de José"	48
"Andrea Maturano Longarezi"	72	"Sara Pelegrineti de José"	48
"Jailson Mendes"	70	"Sara Pelegrineti de José"	48
"Gabriel Jesus"	68	"Sara Pelegrineti de José"	48
"Luciano Hulk"	70	"Sara Pelegrineti de José"	48
"João Guilherme"	70	"Sara Pelegrineti de José"	48
"Péricles Mendes"	63	"Sara Pelegrineti de José"	48
"Alcino Eduardo Bonella"	64	"Sara Pelegrineti de José"	48
"Alexandre Guimarães Tadeu de Soares"	68	"Sara Pelegrineti de José"	48
"Ana Maria Said"	70	"Sara Pelegrineti de José"	48
"Anselmo Tadeu Ferreira"	63	"Sara Pelegrineti de José"	48
"Dennys Garcia Xavier"	70	"Sara Pelegrineti de José"	48
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Sara Pelegrineti de José"	48
"Lucas de Assis Ribeiro"	72	"Sara Pelegrineti de José"	48
"Natália Mundim Tôrres"	72	"Sara Pelegrineti de José"	48
"Tiago Wilson Patriarca Mineo "	68	"Sara Pelegrineti de José"	48
"Neide Maria da Silva "	64	"Sara Pelegrineti de José"	48
"Alexandre Garrido da Silva"	71	"Sara Pelegrineti de José"	48
"Beatriz Corrêa Camargo"	72	"Sara Pelegrineti de José"	48
"Daniela de Melo Crosara"	68	"Sara Pelegrineti de José"	48
"Fernando Rodrigues Martins"	69	"Sara Pelegrineti de José"	48
"Gustavo de Carvalho Marin"	69	"Sara Pelegrineti de José"	48
"Ademir Cavalheiro"	64	"Sara Pelegrineti de José"	48
"Adevailton Bernardo dos Santos"	68	"Sara Pelegrineti de José"	48
"Alessandra Riposati Arantes"	65	"Sara Pelegrineti de José"	48
"Djalmir Nestor Messias"	66	"Sara Pelegrineti de José"	48
"Marcel Novaes"	66	"Sara Pelegrineti de José"	48
"Alberto da Silva Morais"	70	"Sara Pelegrineti de José"	48
"Carlos Hernrique Gomes"	65	"Sara Pelegrineti de José"	48
"Daniela Cristina de Oliveira"	72	"Sara Pelegrineti de José"	48
"Disney Oliver"	71	"Sara Pelegrineti de José"	48
"Henrique Tomaz Gonzaga"	68	"Sara Pelegrineti de José"	48
"Jamil Salem"	66	"Sara Pelegrineti de José"	48
"Julia Vingadora"	71	"Sara Pelegrineti de José"	48
"Roberto Carlos"	65	"Sara Pelegrineti de José"	48
"Cláudio Assembly"	64	"Sara Pelegrineti de José"	48
"Elaine Java"	63	"Sara Pelegrineti de José"	48
"Lilian Rodrigues Sant’ Anna Campos"	70	"Sara Pelegrineti de José"	48
"Clelia Regina Cafer"	66	"Sara Pelegrineti de José"	48
"Marisa Aparecida Elias"	70	"Sara Pelegrineti de José"	48
"Barbara Dias Rezende Gontijo"	63	"Sara Pelegrineti de José"	48
"Tatiana Carneiro de Resende"	63	"Sara Pelegrineti de José"	48
"Alessandro Gomes Enoque"	70	"Sara Pelegrineti de José"	48
"Alex Fernando Borges"	68	"Sara Pelegrineti de José"	48
"Alexandre Alves Alvenha"	70	"Sara Pelegrineti de José"	48
"Alexandre Cacheffo"	71	"Sara Pelegrineti de José"	48
"Alexandre Calzavara Yoshida"	72	"Sara Pelegrineti de José"	48
"Severo Snape"	54	"Sara Pelegrineti de José"	48
"Gina Maira"	65	"Davi Rui Pasquim"	20
"Marcelo Keese Albertini"	62	"Davi Rui Pasquim"	20
"Rivalino Matias Júnior"	69	"Davi Rui Pasquim"	20
"André Backes"	63	"Davi Rui Pasquim"	20
"Bruno Augusto Nassif Travençolo"	66	"Davi Rui Pasquim"	20
"Luiz Gustavo Almeida Martins"	67	"Davi Rui Pasquim"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Davi Rui Pasquim"	20
"Ariádine Cristine de Almeida"	71	"Davi Rui Pasquim"	20
"Giuliano Buzá Jacobucci"	67	"Davi Rui Pasquim"	20
"Jeamylle Nilin Gonçalves"	70	"Davi Rui Pasquim"	20
"Cassiano Aimberê Dorneles Welker"	69	"Davi Rui Pasquim"	20
"Admilson Lopes dos Santos"	72	"Davi Rui Pasquim"	20
"Adriana Rodrigues da Silva"	68	"Davi Rui Pasquim"	20
"Camila Mariana Ruiz"	71	"Davi Rui Pasquim"	20
"Fernando Rodrigo Rafaeli"	68	"Davi Rui Pasquim"	20
"Taciana Oliveira Souza"	69	"Davi Rui Pasquim"	20
"Jean Ponciano"	69	"Davi Rui Pasquim"	20
"Elaine Ribeiro"	67	"Davi Rui Pasquim"	20
"Alexsandro Soares"	71	"Davi Rui Pasquim"	20
"Pedro Frosi"	70	"Davi Rui Pasquim"	20
"Marcia Aparecida Fernandes"	65	"Davi Rui Pasquim"	20
"Adriano Mota Loyola"	69	"Davi Rui Pasquim"	20
"Alessandra Maia de Castro Prado"	71	"Davi Rui Pasquim"	20
"Álex Moreira Herval"	67	"Davi Rui Pasquim"	20
"Ana Paula Turrioni Hidalgo"	66	"Davi Rui Pasquim"	20
"Ana Paula de Lima Oliveira"	69	"Davi Rui Pasquim"	20
"Belchior de Sousa"	68	"Davi Rui Pasquim"	20
"Elsieni Coelho da Silva"	63	"Davi Rui Pasquim"	20
"Gastao da Cunha Frota"	67	"Davi Rui Pasquim"	20
"Nikoleta Tzvetanova Kerinska"	65	"Davi Rui Pasquim"	20
"Renato Palumbo Doria"	63	"Davi Rui Pasquim"	20
"Adriana Pastorello Buim Arena"	67	"Davi Rui Pasquim"	20
"Aldeci Cacique Calixto"	72	"Davi Rui Pasquim"	20
"Aléxia Pádua Franco"	69	"Davi Rui Pasquim"	20
"Ana Beatriz da Silva Duarte"	62	"Davi Rui Pasquim"	20
"Andrea Maturano Longarezi"	72	"Davi Rui Pasquim"	20
"Jailson Mendes"	70	"Davi Rui Pasquim"	20
"Gabriel Jesus"	68	"Davi Rui Pasquim"	20
"Luciano Hulk"	70	"Davi Rui Pasquim"	20
"João Guilherme"	70	"Davi Rui Pasquim"	20
"Péricles Mendes"	63	"Davi Rui Pasquim"	20
"Alcino Eduardo Bonella"	64	"Davi Rui Pasquim"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Davi Rui Pasquim"	20
"Ana Maria Said"	70	"Davi Rui Pasquim"	20
"Anselmo Tadeu Ferreira"	63	"Davi Rui Pasquim"	20
"Dennys Garcia Xavier"	70	"Davi Rui Pasquim"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Davi Rui Pasquim"	20
"Lucas de Assis Ribeiro"	72	"Davi Rui Pasquim"	20
"Natália Mundim Tôrres"	72	"Davi Rui Pasquim"	20
"Tiago Wilson Patriarca Mineo "	68	"Davi Rui Pasquim"	20
"Neide Maria da Silva "	64	"Davi Rui Pasquim"	20
"Alexandre Garrido da Silva"	71	"Davi Rui Pasquim"	20
"Beatriz Corrêa Camargo"	72	"Davi Rui Pasquim"	20
"Daniela de Melo Crosara"	68	"Davi Rui Pasquim"	20
"Fernando Rodrigues Martins"	69	"Davi Rui Pasquim"	20
"Gustavo de Carvalho Marin"	69	"Davi Rui Pasquim"	20
"Ademir Cavalheiro"	64	"Davi Rui Pasquim"	20
"Adevailton Bernardo dos Santos"	68	"Davi Rui Pasquim"	20
"Alessandra Riposati Arantes"	65	"Davi Rui Pasquim"	20
"Djalmir Nestor Messias"	66	"Davi Rui Pasquim"	20
"Marcel Novaes"	66	"Davi Rui Pasquim"	20
"Alberto da Silva Morais"	70	"Davi Rui Pasquim"	20
"Carlos Hernrique Gomes"	65	"Davi Rui Pasquim"	20
"Daniela Cristina de Oliveira"	72	"Davi Rui Pasquim"	20
"Disney Oliver"	71	"Davi Rui Pasquim"	20
"Henrique Tomaz Gonzaga"	68	"Davi Rui Pasquim"	20
"Jamil Salem"	66	"Davi Rui Pasquim"	20
"Julia Vingadora"	71	"Davi Rui Pasquim"	20
"Roberto Carlos"	65	"Davi Rui Pasquim"	20
"Cláudio Assembly"	64	"Davi Rui Pasquim"	20
"Elaine Java"	63	"Davi Rui Pasquim"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Davi Rui Pasquim"	20
"Clelia Regina Cafer"	66	"Davi Rui Pasquim"	20
"Marisa Aparecida Elias"	70	"Davi Rui Pasquim"	20
"Barbara Dias Rezende Gontijo"	63	"Davi Rui Pasquim"	20
"Tatiana Carneiro de Resende"	63	"Davi Rui Pasquim"	20
"Alessandro Gomes Enoque"	70	"Davi Rui Pasquim"	20
"Alex Fernando Borges"	68	"Davi Rui Pasquim"	20
"Alexandre Alves Alvenha"	70	"Davi Rui Pasquim"	20
"Alexandre Cacheffo"	71	"Davi Rui Pasquim"	20
"Alexandre Calzavara Yoshida"	72	"Davi Rui Pasquim"	20
"Severo Snape"	54	"Davi Rui Pasquim"	20
"Gina Maira"	65	"Diego Ruas"	26
"Marcelo Keese Albertini"	62	"Diego Ruas"	26
"Rivalino Matias Júnior"	69	"Diego Ruas"	26
"André Backes"	63	"Diego Ruas"	26
"Bruno Augusto Nassif Travençolo"	66	"Diego Ruas"	26
"Luiz Gustavo Almeida Martins"	67	"Diego Ruas"	26
"Ailton Gonçalves Rodrigues Junior"	69	"Diego Ruas"	26
"Ariádine Cristine de Almeida"	71	"Diego Ruas"	26
"Giuliano Buzá Jacobucci"	67	"Diego Ruas"	26
"Jeamylle Nilin Gonçalves"	70	"Diego Ruas"	26
"Cassiano Aimberê Dorneles Welker"	69	"Diego Ruas"	26
"Admilson Lopes dos Santos"	72	"Diego Ruas"	26
"Adriana Rodrigues da Silva"	68	"Diego Ruas"	26
"Camila Mariana Ruiz"	71	"Diego Ruas"	26
"Fernando Rodrigo Rafaeli"	68	"Diego Ruas"	26
"Taciana Oliveira Souza"	69	"Diego Ruas"	26
"Jean Ponciano"	69	"Diego Ruas"	26
"Elaine Ribeiro"	67	"Diego Ruas"	26
"Alexsandro Soares"	71	"Diego Ruas"	26
"Pedro Frosi"	70	"Diego Ruas"	26
"Marcia Aparecida Fernandes"	65	"Diego Ruas"	26
"Adriano Mota Loyola"	69	"Diego Ruas"	26
"Alessandra Maia de Castro Prado"	71	"Diego Ruas"	26
"Álex Moreira Herval"	67	"Diego Ruas"	26
"Ana Paula Turrioni Hidalgo"	66	"Diego Ruas"	26
"Ana Paula de Lima Oliveira"	69	"Diego Ruas"	26
"Belchior de Sousa"	68	"Diego Ruas"	26
"Elsieni Coelho da Silva"	63	"Diego Ruas"	26
"Gastao da Cunha Frota"	67	"Diego Ruas"	26
"Nikoleta Tzvetanova Kerinska"	65	"Diego Ruas"	26
"Renato Palumbo Doria"	63	"Diego Ruas"	26
"Adriana Pastorello Buim Arena"	67	"Diego Ruas"	26
"Aldeci Cacique Calixto"	72	"Diego Ruas"	26
"Aléxia Pádua Franco"	69	"Diego Ruas"	26
"Ana Beatriz da Silva Duarte"	62	"Diego Ruas"	26
"Andrea Maturano Longarezi"	72	"Diego Ruas"	26
"Jailson Mendes"	70	"Diego Ruas"	26
"Gabriel Jesus"	68	"Diego Ruas"	26
"Luciano Hulk"	70	"Diego Ruas"	26
"João Guilherme"	70	"Diego Ruas"	26
"Péricles Mendes"	63	"Diego Ruas"	26
"Alcino Eduardo Bonella"	64	"Diego Ruas"	26
"Alexandre Guimarães Tadeu de Soares"	68	"Diego Ruas"	26
"Ana Maria Said"	70	"Diego Ruas"	26
"Anselmo Tadeu Ferreira"	63	"Diego Ruas"	26
"Dennys Garcia Xavier"	70	"Diego Ruas"	26
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Diego Ruas"	26
"Lucas de Assis Ribeiro"	72	"Diego Ruas"	26
"Natália Mundim Tôrres"	72	"Diego Ruas"	26
"Tiago Wilson Patriarca Mineo "	68	"Diego Ruas"	26
"Neide Maria da Silva "	64	"Diego Ruas"	26
"Alexandre Garrido da Silva"	71	"Diego Ruas"	26
"Beatriz Corrêa Camargo"	72	"Diego Ruas"	26
"Daniela de Melo Crosara"	68	"Diego Ruas"	26
"Fernando Rodrigues Martins"	69	"Diego Ruas"	26
"Gustavo de Carvalho Marin"	69	"Diego Ruas"	26
"Ademir Cavalheiro"	64	"Diego Ruas"	26
"Adevailton Bernardo dos Santos"	68	"Diego Ruas"	26
"Alessandra Riposati Arantes"	65	"Diego Ruas"	26
"Djalmir Nestor Messias"	66	"Diego Ruas"	26
"Marcel Novaes"	66	"Diego Ruas"	26
"Alberto da Silva Morais"	70	"Diego Ruas"	26
"Carlos Hernrique Gomes"	65	"Diego Ruas"	26
"Daniela Cristina de Oliveira"	72	"Diego Ruas"	26
"Disney Oliver"	71	"Diego Ruas"	26
"Henrique Tomaz Gonzaga"	68	"Diego Ruas"	26
"Jamil Salem"	66	"Diego Ruas"	26
"Julia Vingadora"	71	"Diego Ruas"	26
"Roberto Carlos"	65	"Diego Ruas"	26
"Cláudio Assembly"	64	"Diego Ruas"	26
"Elaine Java"	63	"Diego Ruas"	26
"Lilian Rodrigues Sant’ Anna Campos"	70	"Diego Ruas"	26
"Clelia Regina Cafer"	66	"Diego Ruas"	26
"Marisa Aparecida Elias"	70	"Diego Ruas"	26
"Barbara Dias Rezende Gontijo"	63	"Diego Ruas"	26
"Tatiana Carneiro de Resende"	63	"Diego Ruas"	26
"Alessandro Gomes Enoque"	70	"Diego Ruas"	26
"Alex Fernando Borges"	68	"Diego Ruas"	26
"Alexandre Alves Alvenha"	70	"Diego Ruas"	26
"Alexandre Cacheffo"	71	"Diego Ruas"	26
"Alexandre Calzavara Yoshida"	72	"Diego Ruas"	26
"Severo Snape"	54	"Diego Ruas"	26
"Gina Maira"	65	"Pedro Tiene Silva"	19
"Marcelo Keese Albertini"	62	"Pedro Tiene Silva"	19
"Rivalino Matias Júnior"	69	"Pedro Tiene Silva"	19
"André Backes"	63	"Pedro Tiene Silva"	19
"Bruno Augusto Nassif Travençolo"	66	"Pedro Tiene Silva"	19
"Luiz Gustavo Almeida Martins"	67	"Pedro Tiene Silva"	19
"Ailton Gonçalves Rodrigues Junior"	69	"Pedro Tiene Silva"	19
"Ariádine Cristine de Almeida"	71	"Pedro Tiene Silva"	19
"Giuliano Buzá Jacobucci"	67	"Pedro Tiene Silva"	19
"Jeamylle Nilin Gonçalves"	70	"Pedro Tiene Silva"	19
"Cassiano Aimberê Dorneles Welker"	69	"Pedro Tiene Silva"	19
"Admilson Lopes dos Santos"	72	"Pedro Tiene Silva"	19
"Adriana Rodrigues da Silva"	68	"Pedro Tiene Silva"	19
"Camila Mariana Ruiz"	71	"Pedro Tiene Silva"	19
"Fernando Rodrigo Rafaeli"	68	"Pedro Tiene Silva"	19
"Taciana Oliveira Souza"	69	"Pedro Tiene Silva"	19
"Jean Ponciano"	69	"Pedro Tiene Silva"	19
"Elaine Ribeiro"	67	"Pedro Tiene Silva"	19
"Alexsandro Soares"	71	"Pedro Tiene Silva"	19
"Pedro Frosi"	70	"Pedro Tiene Silva"	19
"Marcia Aparecida Fernandes"	65	"Pedro Tiene Silva"	19
"Adriano Mota Loyola"	69	"Pedro Tiene Silva"	19
"Alessandra Maia de Castro Prado"	71	"Pedro Tiene Silva"	19
"Álex Moreira Herval"	67	"Pedro Tiene Silva"	19
"Ana Paula Turrioni Hidalgo"	66	"Pedro Tiene Silva"	19
"Ana Paula de Lima Oliveira"	69	"Pedro Tiene Silva"	19
"Belchior de Sousa"	68	"Pedro Tiene Silva"	19
"Elsieni Coelho da Silva"	63	"Pedro Tiene Silva"	19
"Gastao da Cunha Frota"	67	"Pedro Tiene Silva"	19
"Nikoleta Tzvetanova Kerinska"	65	"Pedro Tiene Silva"	19
"Renato Palumbo Doria"	63	"Pedro Tiene Silva"	19
"Adriana Pastorello Buim Arena"	67	"Pedro Tiene Silva"	19
"Aldeci Cacique Calixto"	72	"Pedro Tiene Silva"	19
"Aléxia Pádua Franco"	69	"Pedro Tiene Silva"	19
"Ana Beatriz da Silva Duarte"	62	"Pedro Tiene Silva"	19
"Andrea Maturano Longarezi"	72	"Pedro Tiene Silva"	19
"Jailson Mendes"	70	"Pedro Tiene Silva"	19
"Gabriel Jesus"	68	"Pedro Tiene Silva"	19
"Luciano Hulk"	70	"Pedro Tiene Silva"	19
"João Guilherme"	70	"Pedro Tiene Silva"	19
"Péricles Mendes"	63	"Pedro Tiene Silva"	19
"Alcino Eduardo Bonella"	64	"Pedro Tiene Silva"	19
"Alexandre Guimarães Tadeu de Soares"	68	"Pedro Tiene Silva"	19
"Ana Maria Said"	70	"Pedro Tiene Silva"	19
"Anselmo Tadeu Ferreira"	63	"Pedro Tiene Silva"	19
"Dennys Garcia Xavier"	70	"Pedro Tiene Silva"	19
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Pedro Tiene Silva"	19
"Lucas de Assis Ribeiro"	72	"Pedro Tiene Silva"	19
"Natália Mundim Tôrres"	72	"Pedro Tiene Silva"	19
"Tiago Wilson Patriarca Mineo "	68	"Pedro Tiene Silva"	19
"Neide Maria da Silva "	64	"Pedro Tiene Silva"	19
"Alexandre Garrido da Silva"	71	"Pedro Tiene Silva"	19
"Beatriz Corrêa Camargo"	72	"Pedro Tiene Silva"	19
"Daniela de Melo Crosara"	68	"Pedro Tiene Silva"	19
"Fernando Rodrigues Martins"	69	"Pedro Tiene Silva"	19
"Gustavo de Carvalho Marin"	69	"Pedro Tiene Silva"	19
"Ademir Cavalheiro"	64	"Pedro Tiene Silva"	19
"Adevailton Bernardo dos Santos"	68	"Pedro Tiene Silva"	19
"Alessandra Riposati Arantes"	65	"Pedro Tiene Silva"	19
"Djalmir Nestor Messias"	66	"Pedro Tiene Silva"	19
"Marcel Novaes"	66	"Pedro Tiene Silva"	19
"Alberto da Silva Morais"	70	"Pedro Tiene Silva"	19
"Carlos Hernrique Gomes"	65	"Pedro Tiene Silva"	19
"Daniela Cristina de Oliveira"	72	"Pedro Tiene Silva"	19
"Disney Oliver"	71	"Pedro Tiene Silva"	19
"Henrique Tomaz Gonzaga"	68	"Pedro Tiene Silva"	19
"Jamil Salem"	66	"Pedro Tiene Silva"	19
"Julia Vingadora"	71	"Pedro Tiene Silva"	19
"Roberto Carlos"	65	"Pedro Tiene Silva"	19
"Cláudio Assembly"	64	"Pedro Tiene Silva"	19
"Elaine Java"	63	"Pedro Tiene Silva"	19
"Lilian Rodrigues Sant’ Anna Campos"	70	"Pedro Tiene Silva"	19
"Clelia Regina Cafer"	66	"Pedro Tiene Silva"	19
"Marisa Aparecida Elias"	70	"Pedro Tiene Silva"	19
"Barbara Dias Rezende Gontijo"	63	"Pedro Tiene Silva"	19
"Tatiana Carneiro de Resende"	63	"Pedro Tiene Silva"	19
"Alessandro Gomes Enoque"	70	"Pedro Tiene Silva"	19
"Alex Fernando Borges"	68	"Pedro Tiene Silva"	19
"Alexandre Alves Alvenha"	70	"Pedro Tiene Silva"	19
"Alexandre Cacheffo"	71	"Pedro Tiene Silva"	19
"Alexandre Calzavara Yoshida"	72	"Pedro Tiene Silva"	19
"Severo Snape"	54	"Pedro Tiene Silva"	19
"Gina Maira"	65	"Jason Manmoa"	60
"Marcelo Keese Albertini"	62	"Jason Manmoa"	60
"Rivalino Matias Júnior"	69	"Jason Manmoa"	60
"André Backes"	63	"Jason Manmoa"	60
"Bruno Augusto Nassif Travençolo"	66	"Jason Manmoa"	60
"Luiz Gustavo Almeida Martins"	67	"Jason Manmoa"	60
"Ailton Gonçalves Rodrigues Junior"	69	"Jason Manmoa"	60
"Ariádine Cristine de Almeida"	71	"Jason Manmoa"	60
"Giuliano Buzá Jacobucci"	67	"Jason Manmoa"	60
"Jeamylle Nilin Gonçalves"	70	"Jason Manmoa"	60
"Cassiano Aimberê Dorneles Welker"	69	"Jason Manmoa"	60
"Admilson Lopes dos Santos"	72	"Jason Manmoa"	60
"Adriana Rodrigues da Silva"	68	"Jason Manmoa"	60
"Camila Mariana Ruiz"	71	"Jason Manmoa"	60
"Fernando Rodrigo Rafaeli"	68	"Jason Manmoa"	60
"Taciana Oliveira Souza"	69	"Jason Manmoa"	60
"Jean Ponciano"	69	"Jason Manmoa"	60
"Elaine Ribeiro"	67	"Jason Manmoa"	60
"Alexsandro Soares"	71	"Jason Manmoa"	60
"Pedro Frosi"	70	"Jason Manmoa"	60
"Marcia Aparecida Fernandes"	65	"Jason Manmoa"	60
"Adriano Mota Loyola"	69	"Jason Manmoa"	60
"Alessandra Maia de Castro Prado"	71	"Jason Manmoa"	60
"Álex Moreira Herval"	67	"Jason Manmoa"	60
"Ana Paula Turrioni Hidalgo"	66	"Jason Manmoa"	60
"Ana Paula de Lima Oliveira"	69	"Jason Manmoa"	60
"Belchior de Sousa"	68	"Jason Manmoa"	60
"Elsieni Coelho da Silva"	63	"Jason Manmoa"	60
"Gastao da Cunha Frota"	67	"Jason Manmoa"	60
"Nikoleta Tzvetanova Kerinska"	65	"Jason Manmoa"	60
"Renato Palumbo Doria"	63	"Jason Manmoa"	60
"Adriana Pastorello Buim Arena"	67	"Jason Manmoa"	60
"Aldeci Cacique Calixto"	72	"Jason Manmoa"	60
"Aléxia Pádua Franco"	69	"Jason Manmoa"	60
"Ana Beatriz da Silva Duarte"	62	"Jason Manmoa"	60
"Andrea Maturano Longarezi"	72	"Jason Manmoa"	60
"Jailson Mendes"	70	"Jason Manmoa"	60
"Gabriel Jesus"	68	"Jason Manmoa"	60
"Luciano Hulk"	70	"Jason Manmoa"	60
"João Guilherme"	70	"Jason Manmoa"	60
"Péricles Mendes"	63	"Jason Manmoa"	60
"Alcino Eduardo Bonella"	64	"Jason Manmoa"	60
"Alexandre Guimarães Tadeu de Soares"	68	"Jason Manmoa"	60
"Ana Maria Said"	70	"Jason Manmoa"	60
"Anselmo Tadeu Ferreira"	63	"Jason Manmoa"	60
"Dennys Garcia Xavier"	70	"Jason Manmoa"	60
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Jason Manmoa"	60
"Lucas de Assis Ribeiro"	72	"Jason Manmoa"	60
"Natália Mundim Tôrres"	72	"Jason Manmoa"	60
"Tiago Wilson Patriarca Mineo "	68	"Jason Manmoa"	60
"Neide Maria da Silva "	64	"Jason Manmoa"	60
"Alexandre Garrido da Silva"	71	"Jason Manmoa"	60
"Beatriz Corrêa Camargo"	72	"Jason Manmoa"	60
"Daniela de Melo Crosara"	68	"Jason Manmoa"	60
"Fernando Rodrigues Martins"	69	"Jason Manmoa"	60
"Gustavo de Carvalho Marin"	69	"Jason Manmoa"	60
"Ademir Cavalheiro"	64	"Jason Manmoa"	60
"Adevailton Bernardo dos Santos"	68	"Jason Manmoa"	60
"Alessandra Riposati Arantes"	65	"Jason Manmoa"	60
"Djalmir Nestor Messias"	66	"Jason Manmoa"	60
"Marcel Novaes"	66	"Jason Manmoa"	60
"Alberto da Silva Morais"	70	"Jason Manmoa"	60
"Carlos Hernrique Gomes"	65	"Jason Manmoa"	60
"Daniela Cristina de Oliveira"	72	"Jason Manmoa"	60
"Disney Oliver"	71	"Jason Manmoa"	60
"Henrique Tomaz Gonzaga"	68	"Jason Manmoa"	60
"Jamil Salem"	66	"Jason Manmoa"	60
"Julia Vingadora"	71	"Jason Manmoa"	60
"Roberto Carlos"	65	"Jason Manmoa"	60
"Cláudio Assembly"	64	"Jason Manmoa"	60
"Elaine Java"	63	"Jason Manmoa"	60
"Lilian Rodrigues Sant’ Anna Campos"	70	"Jason Manmoa"	60
"Clelia Regina Cafer"	66	"Jason Manmoa"	60
"Marisa Aparecida Elias"	70	"Jason Manmoa"	60
"Barbara Dias Rezende Gontijo"	63	"Jason Manmoa"	60
"Tatiana Carneiro de Resende"	63	"Jason Manmoa"	60
"Alessandro Gomes Enoque"	70	"Jason Manmoa"	60
"Alex Fernando Borges"	68	"Jason Manmoa"	60
"Alexandre Alves Alvenha"	70	"Jason Manmoa"	60
"Alexandre Cacheffo"	71	"Jason Manmoa"	60
"Alexandre Calzavara Yoshida"	72	"Jason Manmoa"	60
"Severo Snape"	54	"Jason Manmoa"	60
"Gina Maira"	65	"Scott Pilgrim"	58
"Marcelo Keese Albertini"	62	"Scott Pilgrim"	58
"Rivalino Matias Júnior"	69	"Scott Pilgrim"	58
"André Backes"	63	"Scott Pilgrim"	58
"Bruno Augusto Nassif Travençolo"	66	"Scott Pilgrim"	58
"Luiz Gustavo Almeida Martins"	67	"Scott Pilgrim"	58
"Ailton Gonçalves Rodrigues Junior"	69	"Scott Pilgrim"	58
"Ariádine Cristine de Almeida"	71	"Scott Pilgrim"	58
"Giuliano Buzá Jacobucci"	67	"Scott Pilgrim"	58
"Jeamylle Nilin Gonçalves"	70	"Scott Pilgrim"	58
"Cassiano Aimberê Dorneles Welker"	69	"Scott Pilgrim"	58
"Admilson Lopes dos Santos"	72	"Scott Pilgrim"	58
"Adriana Rodrigues da Silva"	68	"Scott Pilgrim"	58
"Camila Mariana Ruiz"	71	"Scott Pilgrim"	58
"Fernando Rodrigo Rafaeli"	68	"Scott Pilgrim"	58
"Taciana Oliveira Souza"	69	"Scott Pilgrim"	58
"Jean Ponciano"	69	"Scott Pilgrim"	58
"Elaine Ribeiro"	67	"Scott Pilgrim"	58
"Alexsandro Soares"	71	"Scott Pilgrim"	58
"Pedro Frosi"	70	"Scott Pilgrim"	58
"Marcia Aparecida Fernandes"	65	"Scott Pilgrim"	58
"Adriano Mota Loyola"	69	"Scott Pilgrim"	58
"Alessandra Maia de Castro Prado"	71	"Scott Pilgrim"	58
"Álex Moreira Herval"	67	"Scott Pilgrim"	58
"Ana Paula Turrioni Hidalgo"	66	"Scott Pilgrim"	58
"Ana Paula de Lima Oliveira"	69	"Scott Pilgrim"	58
"Belchior de Sousa"	68	"Scott Pilgrim"	58
"Elsieni Coelho da Silva"	63	"Scott Pilgrim"	58
"Gastao da Cunha Frota"	67	"Scott Pilgrim"	58
"Nikoleta Tzvetanova Kerinska"	65	"Scott Pilgrim"	58
"Renato Palumbo Doria"	63	"Scott Pilgrim"	58
"Adriana Pastorello Buim Arena"	67	"Scott Pilgrim"	58
"Aldeci Cacique Calixto"	72	"Scott Pilgrim"	58
"Aléxia Pádua Franco"	69	"Scott Pilgrim"	58
"Ana Beatriz da Silva Duarte"	62	"Scott Pilgrim"	58
"Andrea Maturano Longarezi"	72	"Scott Pilgrim"	58
"Jailson Mendes"	70	"Scott Pilgrim"	58
"Gabriel Jesus"	68	"Scott Pilgrim"	58
"Luciano Hulk"	70	"Scott Pilgrim"	58
"João Guilherme"	70	"Scott Pilgrim"	58
"Péricles Mendes"	63	"Scott Pilgrim"	58
"Alcino Eduardo Bonella"	64	"Scott Pilgrim"	58
"Alexandre Guimarães Tadeu de Soares"	68	"Scott Pilgrim"	58
"Ana Maria Said"	70	"Scott Pilgrim"	58
"Anselmo Tadeu Ferreira"	63	"Scott Pilgrim"	58
"Dennys Garcia Xavier"	70	"Scott Pilgrim"	58
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Scott Pilgrim"	58
"Lucas de Assis Ribeiro"	72	"Scott Pilgrim"	58
"Natália Mundim Tôrres"	72	"Scott Pilgrim"	58
"Tiago Wilson Patriarca Mineo "	68	"Scott Pilgrim"	58
"Neide Maria da Silva "	64	"Scott Pilgrim"	58
"Alexandre Garrido da Silva"	71	"Scott Pilgrim"	58
"Beatriz Corrêa Camargo"	72	"Scott Pilgrim"	58
"Daniela de Melo Crosara"	68	"Scott Pilgrim"	58
"Fernando Rodrigues Martins"	69	"Scott Pilgrim"	58
"Gustavo de Carvalho Marin"	69	"Scott Pilgrim"	58
"Ademir Cavalheiro"	64	"Scott Pilgrim"	58
"Adevailton Bernardo dos Santos"	68	"Scott Pilgrim"	58
"Alessandra Riposati Arantes"	65	"Scott Pilgrim"	58
"Djalmir Nestor Messias"	66	"Scott Pilgrim"	58
"Marcel Novaes"	66	"Scott Pilgrim"	58
"Alberto da Silva Morais"	70	"Scott Pilgrim"	58
"Carlos Hernrique Gomes"	65	"Scott Pilgrim"	58
"Daniela Cristina de Oliveira"	72	"Scott Pilgrim"	58
"Disney Oliver"	71	"Scott Pilgrim"	58
"Henrique Tomaz Gonzaga"	68	"Scott Pilgrim"	58
"Jamil Salem"	66	"Scott Pilgrim"	58
"Julia Vingadora"	71	"Scott Pilgrim"	58
"Roberto Carlos"	65	"Scott Pilgrim"	58
"Cláudio Assembly"	64	"Scott Pilgrim"	58
"Elaine Java"	63	"Scott Pilgrim"	58
"Lilian Rodrigues Sant’ Anna Campos"	70	"Scott Pilgrim"	58
"Clelia Regina Cafer"	66	"Scott Pilgrim"	58
"Marisa Aparecida Elias"	70	"Scott Pilgrim"	58
"Barbara Dias Rezende Gontijo"	63	"Scott Pilgrim"	58
"Tatiana Carneiro de Resende"	63	"Scott Pilgrim"	58
"Alessandro Gomes Enoque"	70	"Scott Pilgrim"	58
"Alex Fernando Borges"	68	"Scott Pilgrim"	58
"Alexandre Alves Alvenha"	70	"Scott Pilgrim"	58
"Alexandre Cacheffo"	71	"Scott Pilgrim"	58
"Alexandre Calzavara Yoshida"	72	"Scott Pilgrim"	58
"Severo Snape"	54	"Scott Pilgrim"	58
"Gina Maira"	65	"Naruto Uzumaki"	54
"Marcelo Keese Albertini"	62	"Naruto Uzumaki"	54
"Rivalino Matias Júnior"	69	"Naruto Uzumaki"	54
"André Backes"	63	"Naruto Uzumaki"	54
"Bruno Augusto Nassif Travençolo"	66	"Naruto Uzumaki"	54
"Luiz Gustavo Almeida Martins"	67	"Naruto Uzumaki"	54
"Ailton Gonçalves Rodrigues Junior"	69	"Naruto Uzumaki"	54
"Ariádine Cristine de Almeida"	71	"Naruto Uzumaki"	54
"Giuliano Buzá Jacobucci"	67	"Naruto Uzumaki"	54
"Jeamylle Nilin Gonçalves"	70	"Naruto Uzumaki"	54
"Cassiano Aimberê Dorneles Welker"	69	"Naruto Uzumaki"	54
"Admilson Lopes dos Santos"	72	"Naruto Uzumaki"	54
"Adriana Rodrigues da Silva"	68	"Naruto Uzumaki"	54
"Camila Mariana Ruiz"	71	"Naruto Uzumaki"	54
"Fernando Rodrigo Rafaeli"	68	"Naruto Uzumaki"	54
"Taciana Oliveira Souza"	69	"Naruto Uzumaki"	54
"Jean Ponciano"	69	"Naruto Uzumaki"	54
"Elaine Ribeiro"	67	"Naruto Uzumaki"	54
"Alexsandro Soares"	71	"Naruto Uzumaki"	54
"Pedro Frosi"	70	"Naruto Uzumaki"	54
"Marcia Aparecida Fernandes"	65	"Naruto Uzumaki"	54
"Adriano Mota Loyola"	69	"Naruto Uzumaki"	54
"Alessandra Maia de Castro Prado"	71	"Naruto Uzumaki"	54
"Álex Moreira Herval"	67	"Naruto Uzumaki"	54
"Ana Paula Turrioni Hidalgo"	66	"Naruto Uzumaki"	54
"Ana Paula de Lima Oliveira"	69	"Naruto Uzumaki"	54
"Belchior de Sousa"	68	"Naruto Uzumaki"	54
"Elsieni Coelho da Silva"	63	"Naruto Uzumaki"	54
"Gastao da Cunha Frota"	67	"Naruto Uzumaki"	54
"Nikoleta Tzvetanova Kerinska"	65	"Naruto Uzumaki"	54
"Renato Palumbo Doria"	63	"Naruto Uzumaki"	54
"Adriana Pastorello Buim Arena"	67	"Naruto Uzumaki"	54
"Aldeci Cacique Calixto"	72	"Naruto Uzumaki"	54
"Aléxia Pádua Franco"	69	"Naruto Uzumaki"	54
"Ana Beatriz da Silva Duarte"	62	"Naruto Uzumaki"	54
"Andrea Maturano Longarezi"	72	"Naruto Uzumaki"	54
"Jailson Mendes"	70	"Naruto Uzumaki"	54
"Gabriel Jesus"	68	"Naruto Uzumaki"	54
"Luciano Hulk"	70	"Naruto Uzumaki"	54
"João Guilherme"	70	"Naruto Uzumaki"	54
"Péricles Mendes"	63	"Naruto Uzumaki"	54
"Alcino Eduardo Bonella"	64	"Naruto Uzumaki"	54
"Alexandre Guimarães Tadeu de Soares"	68	"Naruto Uzumaki"	54
"Ana Maria Said"	70	"Naruto Uzumaki"	54
"Anselmo Tadeu Ferreira"	63	"Naruto Uzumaki"	54
"Dennys Garcia Xavier"	70	"Naruto Uzumaki"	54
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Naruto Uzumaki"	54
"Lucas de Assis Ribeiro"	72	"Naruto Uzumaki"	54
"Natália Mundim Tôrres"	72	"Naruto Uzumaki"	54
"Tiago Wilson Patriarca Mineo "	68	"Naruto Uzumaki"	54
"Neide Maria da Silva "	64	"Naruto Uzumaki"	54
"Alexandre Garrido da Silva"	71	"Naruto Uzumaki"	54
"Beatriz Corrêa Camargo"	72	"Naruto Uzumaki"	54
"Daniela de Melo Crosara"	68	"Naruto Uzumaki"	54
"Fernando Rodrigues Martins"	69	"Naruto Uzumaki"	54
"Gustavo de Carvalho Marin"	69	"Naruto Uzumaki"	54
"Ademir Cavalheiro"	64	"Naruto Uzumaki"	54
"Adevailton Bernardo dos Santos"	68	"Naruto Uzumaki"	54
"Alessandra Riposati Arantes"	65	"Naruto Uzumaki"	54
"Djalmir Nestor Messias"	66	"Naruto Uzumaki"	54
"Marcel Novaes"	66	"Naruto Uzumaki"	54
"Alberto da Silva Morais"	70	"Naruto Uzumaki"	54
"Carlos Hernrique Gomes"	65	"Naruto Uzumaki"	54
"Daniela Cristina de Oliveira"	72	"Naruto Uzumaki"	54
"Disney Oliver"	71	"Naruto Uzumaki"	54
"Henrique Tomaz Gonzaga"	68	"Naruto Uzumaki"	54
"Jamil Salem"	66	"Naruto Uzumaki"	54
"Julia Vingadora"	71	"Naruto Uzumaki"	54
"Roberto Carlos"	65	"Naruto Uzumaki"	54
"Cláudio Assembly"	64	"Naruto Uzumaki"	54
"Elaine Java"	63	"Naruto Uzumaki"	54
"Lilian Rodrigues Sant’ Anna Campos"	70	"Naruto Uzumaki"	54
"Clelia Regina Cafer"	66	"Naruto Uzumaki"	54
"Marisa Aparecida Elias"	70	"Naruto Uzumaki"	54
"Barbara Dias Rezende Gontijo"	63	"Naruto Uzumaki"	54
"Tatiana Carneiro de Resende"	63	"Naruto Uzumaki"	54
"Alessandro Gomes Enoque"	70	"Naruto Uzumaki"	54
"Alex Fernando Borges"	68	"Naruto Uzumaki"	54
"Alexandre Alves Alvenha"	70	"Naruto Uzumaki"	54
"Alexandre Cacheffo"	71	"Naruto Uzumaki"	54
"Alexandre Calzavara Yoshida"	72	"Naruto Uzumaki"	54
"Gina Maira"	65	"Frederico Krueger"	54
"Marcelo Keese Albertini"	62	"Frederico Krueger"	54
"Rivalino Matias Júnior"	69	"Frederico Krueger"	54
"André Backes"	63	"Frederico Krueger"	54
"Bruno Augusto Nassif Travençolo"	66	"Frederico Krueger"	54
"Luiz Gustavo Almeida Martins"	67	"Frederico Krueger"	54
"Ailton Gonçalves Rodrigues Junior"	69	"Frederico Krueger"	54
"Ariádine Cristine de Almeida"	71	"Frederico Krueger"	54
"Giuliano Buzá Jacobucci"	67	"Frederico Krueger"	54
"Jeamylle Nilin Gonçalves"	70	"Frederico Krueger"	54
"Cassiano Aimberê Dorneles Welker"	69	"Frederico Krueger"	54
"Admilson Lopes dos Santos"	72	"Frederico Krueger"	54
"Adriana Rodrigues da Silva"	68	"Frederico Krueger"	54
"Camila Mariana Ruiz"	71	"Frederico Krueger"	54
"Fernando Rodrigo Rafaeli"	68	"Frederico Krueger"	54
"Taciana Oliveira Souza"	69	"Frederico Krueger"	54
"Jean Ponciano"	69	"Frederico Krueger"	54
"Elaine Ribeiro"	67	"Frederico Krueger"	54
"Alexsandro Soares"	71	"Frederico Krueger"	54
"Pedro Frosi"	70	"Frederico Krueger"	54
"Marcia Aparecida Fernandes"	65	"Frederico Krueger"	54
"Adriano Mota Loyola"	69	"Frederico Krueger"	54
"Alessandra Maia de Castro Prado"	71	"Frederico Krueger"	54
"Álex Moreira Herval"	67	"Frederico Krueger"	54
"Ana Paula Turrioni Hidalgo"	66	"Frederico Krueger"	54
"Ana Paula de Lima Oliveira"	69	"Frederico Krueger"	54
"Belchior de Sousa"	68	"Frederico Krueger"	54
"Elsieni Coelho da Silva"	63	"Frederico Krueger"	54
"Gastao da Cunha Frota"	67	"Frederico Krueger"	54
"Nikoleta Tzvetanova Kerinska"	65	"Frederico Krueger"	54
"Renato Palumbo Doria"	63	"Frederico Krueger"	54
"Adriana Pastorello Buim Arena"	67	"Frederico Krueger"	54
"Aldeci Cacique Calixto"	72	"Frederico Krueger"	54
"Aléxia Pádua Franco"	69	"Frederico Krueger"	54
"Ana Beatriz da Silva Duarte"	62	"Frederico Krueger"	54
"Andrea Maturano Longarezi"	72	"Frederico Krueger"	54
"Jailson Mendes"	70	"Frederico Krueger"	54
"Gabriel Jesus"	68	"Frederico Krueger"	54
"Luciano Hulk"	70	"Frederico Krueger"	54
"João Guilherme"	70	"Frederico Krueger"	54
"Péricles Mendes"	63	"Frederico Krueger"	54
"Alcino Eduardo Bonella"	64	"Frederico Krueger"	54
"Alexandre Guimarães Tadeu de Soares"	68	"Frederico Krueger"	54
"Ana Maria Said"	70	"Frederico Krueger"	54
"Anselmo Tadeu Ferreira"	63	"Frederico Krueger"	54
"Dennys Garcia Xavier"	70	"Frederico Krueger"	54
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Frederico Krueger"	54
"Lucas de Assis Ribeiro"	72	"Frederico Krueger"	54
"Natália Mundim Tôrres"	72	"Frederico Krueger"	54
"Tiago Wilson Patriarca Mineo "	68	"Frederico Krueger"	54
"Neide Maria da Silva "	64	"Frederico Krueger"	54
"Alexandre Garrido da Silva"	71	"Frederico Krueger"	54
"Beatriz Corrêa Camargo"	72	"Frederico Krueger"	54
"Daniela de Melo Crosara"	68	"Frederico Krueger"	54
"Fernando Rodrigues Martins"	69	"Frederico Krueger"	54
"Gustavo de Carvalho Marin"	69	"Frederico Krueger"	54
"Ademir Cavalheiro"	64	"Frederico Krueger"	54
"Adevailton Bernardo dos Santos"	68	"Frederico Krueger"	54
"Alessandra Riposati Arantes"	65	"Frederico Krueger"	54
"Djalmir Nestor Messias"	66	"Frederico Krueger"	54
"Marcel Novaes"	66	"Frederico Krueger"	54
"Alberto da Silva Morais"	70	"Frederico Krueger"	54
"Carlos Hernrique Gomes"	65	"Frederico Krueger"	54
"Daniela Cristina de Oliveira"	72	"Frederico Krueger"	54
"Disney Oliver"	71	"Frederico Krueger"	54
"Henrique Tomaz Gonzaga"	68	"Frederico Krueger"	54
"Jamil Salem"	66	"Frederico Krueger"	54
"Julia Vingadora"	71	"Frederico Krueger"	54
"Roberto Carlos"	65	"Frederico Krueger"	54
"Cláudio Assembly"	64	"Frederico Krueger"	54
"Elaine Java"	63	"Frederico Krueger"	54
"Lilian Rodrigues Sant’ Anna Campos"	70	"Frederico Krueger"	54
"Clelia Regina Cafer"	66	"Frederico Krueger"	54
"Marisa Aparecida Elias"	70	"Frederico Krueger"	54
"Barbara Dias Rezende Gontijo"	63	"Frederico Krueger"	54
"Tatiana Carneiro de Resende"	63	"Frederico Krueger"	54
"Alessandro Gomes Enoque"	70	"Frederico Krueger"	54
"Alex Fernando Borges"	68	"Frederico Krueger"	54
"Alexandre Alves Alvenha"	70	"Frederico Krueger"	54
"Alexandre Cacheffo"	71	"Frederico Krueger"	54
"Alexandre Calzavara Yoshida"	72	"Frederico Krueger"	54
"Gina Maira"	65	"Jason Thirtenn"	54
"Marcelo Keese Albertini"	62	"Jason Thirtenn"	54
"Rivalino Matias Júnior"	69	"Jason Thirtenn"	54
"André Backes"	63	"Jason Thirtenn"	54
"Bruno Augusto Nassif Travençolo"	66	"Jason Thirtenn"	54
"Luiz Gustavo Almeida Martins"	67	"Jason Thirtenn"	54
"Ailton Gonçalves Rodrigues Junior"	69	"Jason Thirtenn"	54
"Ariádine Cristine de Almeida"	71	"Jason Thirtenn"	54
"Giuliano Buzá Jacobucci"	67	"Jason Thirtenn"	54
"Jeamylle Nilin Gonçalves"	70	"Jason Thirtenn"	54
"Cassiano Aimberê Dorneles Welker"	69	"Jason Thirtenn"	54
"Admilson Lopes dos Santos"	72	"Jason Thirtenn"	54
"Adriana Rodrigues da Silva"	68	"Jason Thirtenn"	54
"Camila Mariana Ruiz"	71	"Jason Thirtenn"	54
"Fernando Rodrigo Rafaeli"	68	"Jason Thirtenn"	54
"Taciana Oliveira Souza"	69	"Jason Thirtenn"	54
"Jean Ponciano"	69	"Jason Thirtenn"	54
"Elaine Ribeiro"	67	"Jason Thirtenn"	54
"Alexsandro Soares"	71	"Jason Thirtenn"	54
"Pedro Frosi"	70	"Jason Thirtenn"	54
"Marcia Aparecida Fernandes"	65	"Jason Thirtenn"	54
"Adriano Mota Loyola"	69	"Jason Thirtenn"	54
"Alessandra Maia de Castro Prado"	71	"Jason Thirtenn"	54
"Álex Moreira Herval"	67	"Jason Thirtenn"	54
"Ana Paula Turrioni Hidalgo"	66	"Jason Thirtenn"	54
"Ana Paula de Lima Oliveira"	69	"Jason Thirtenn"	54
"Belchior de Sousa"	68	"Jason Thirtenn"	54
"Elsieni Coelho da Silva"	63	"Jason Thirtenn"	54
"Gastao da Cunha Frota"	67	"Jason Thirtenn"	54
"Nikoleta Tzvetanova Kerinska"	65	"Jason Thirtenn"	54
"Renato Palumbo Doria"	63	"Jason Thirtenn"	54
"Adriana Pastorello Buim Arena"	67	"Jason Thirtenn"	54
"Aldeci Cacique Calixto"	72	"Jason Thirtenn"	54
"Aléxia Pádua Franco"	69	"Jason Thirtenn"	54
"Ana Beatriz da Silva Duarte"	62	"Jason Thirtenn"	54
"Andrea Maturano Longarezi"	72	"Jason Thirtenn"	54
"Jailson Mendes"	70	"Jason Thirtenn"	54
"Gabriel Jesus"	68	"Jason Thirtenn"	54
"Luciano Hulk"	70	"Jason Thirtenn"	54
"João Guilherme"	70	"Jason Thirtenn"	54
"Péricles Mendes"	63	"Jason Thirtenn"	54
"Alcino Eduardo Bonella"	64	"Jason Thirtenn"	54
"Alexandre Guimarães Tadeu de Soares"	68	"Jason Thirtenn"	54
"Ana Maria Said"	70	"Jason Thirtenn"	54
"Anselmo Tadeu Ferreira"	63	"Jason Thirtenn"	54
"Dennys Garcia Xavier"	70	"Jason Thirtenn"	54
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Jason Thirtenn"	54
"Lucas de Assis Ribeiro"	72	"Jason Thirtenn"	54
"Natália Mundim Tôrres"	72	"Jason Thirtenn"	54
"Tiago Wilson Patriarca Mineo "	68	"Jason Thirtenn"	54
"Neide Maria da Silva "	64	"Jason Thirtenn"	54
"Alexandre Garrido da Silva"	71	"Jason Thirtenn"	54
"Beatriz Corrêa Camargo"	72	"Jason Thirtenn"	54
"Daniela de Melo Crosara"	68	"Jason Thirtenn"	54
"Fernando Rodrigues Martins"	69	"Jason Thirtenn"	54
"Gustavo de Carvalho Marin"	69	"Jason Thirtenn"	54
"Ademir Cavalheiro"	64	"Jason Thirtenn"	54
"Adevailton Bernardo dos Santos"	68	"Jason Thirtenn"	54
"Alessandra Riposati Arantes"	65	"Jason Thirtenn"	54
"Djalmir Nestor Messias"	66	"Jason Thirtenn"	54
"Marcel Novaes"	66	"Jason Thirtenn"	54
"Alberto da Silva Morais"	70	"Jason Thirtenn"	54
"Carlos Hernrique Gomes"	65	"Jason Thirtenn"	54
"Daniela Cristina de Oliveira"	72	"Jason Thirtenn"	54
"Disney Oliver"	71	"Jason Thirtenn"	54
"Henrique Tomaz Gonzaga"	68	"Jason Thirtenn"	54
"Jamil Salem"	66	"Jason Thirtenn"	54
"Julia Vingadora"	71	"Jason Thirtenn"	54
"Roberto Carlos"	65	"Jason Thirtenn"	54
"Cláudio Assembly"	64	"Jason Thirtenn"	54
"Elaine Java"	63	"Jason Thirtenn"	54
"Lilian Rodrigues Sant’ Anna Campos"	70	"Jason Thirtenn"	54
"Clelia Regina Cafer"	66	"Jason Thirtenn"	54
"Marisa Aparecida Elias"	70	"Jason Thirtenn"	54
"Barbara Dias Rezende Gontijo"	63	"Jason Thirtenn"	54
"Tatiana Carneiro de Resende"	63	"Jason Thirtenn"	54
"Alessandro Gomes Enoque"	70	"Jason Thirtenn"	54
"Alex Fernando Borges"	68	"Jason Thirtenn"	54
"Alexandre Alves Alvenha"	70	"Jason Thirtenn"	54
"Alexandre Cacheffo"	71	"Jason Thirtenn"	54
"Alexandre Calzavara Yoshida"	72	"Jason Thirtenn"	54
"Gina Maira"	65	"Aline Ferreira Magalhaes"	22
"Marcelo Keese Albertini"	62	"Aline Ferreira Magalhaes"	22
"Rivalino Matias Júnior"	69	"Aline Ferreira Magalhaes"	22
"André Backes"	63	"Aline Ferreira Magalhaes"	22
"Bruno Augusto Nassif Travençolo"	66	"Aline Ferreira Magalhaes"	22
"Luiz Gustavo Almeida Martins"	67	"Aline Ferreira Magalhaes"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Aline Ferreira Magalhaes"	22
"Ariádine Cristine de Almeida"	71	"Aline Ferreira Magalhaes"	22
"Giuliano Buzá Jacobucci"	67	"Aline Ferreira Magalhaes"	22
"Jeamylle Nilin Gonçalves"	70	"Aline Ferreira Magalhaes"	22
"Cassiano Aimberê Dorneles Welker"	69	"Aline Ferreira Magalhaes"	22
"Admilson Lopes dos Santos"	72	"Aline Ferreira Magalhaes"	22
"Adriana Rodrigues da Silva"	68	"Aline Ferreira Magalhaes"	22
"Camila Mariana Ruiz"	71	"Aline Ferreira Magalhaes"	22
"Fernando Rodrigo Rafaeli"	68	"Aline Ferreira Magalhaes"	22
"Taciana Oliveira Souza"	69	"Aline Ferreira Magalhaes"	22
"Jean Ponciano"	69	"Aline Ferreira Magalhaes"	22
"Elaine Ribeiro"	67	"Aline Ferreira Magalhaes"	22
"Alexsandro Soares"	71	"Aline Ferreira Magalhaes"	22
"Pedro Frosi"	70	"Aline Ferreira Magalhaes"	22
"Marcia Aparecida Fernandes"	65	"Aline Ferreira Magalhaes"	22
"Adriano Mota Loyola"	69	"Aline Ferreira Magalhaes"	22
"Alessandra Maia de Castro Prado"	71	"Aline Ferreira Magalhaes"	22
"Álex Moreira Herval"	67	"Aline Ferreira Magalhaes"	22
"Ana Paula Turrioni Hidalgo"	66	"Aline Ferreira Magalhaes"	22
"Ana Paula de Lima Oliveira"	69	"Aline Ferreira Magalhaes"	22
"Belchior de Sousa"	68	"Aline Ferreira Magalhaes"	22
"Elsieni Coelho da Silva"	63	"Aline Ferreira Magalhaes"	22
"Gastao da Cunha Frota"	67	"Aline Ferreira Magalhaes"	22
"Nikoleta Tzvetanova Kerinska"	65	"Aline Ferreira Magalhaes"	22
"Renato Palumbo Doria"	63	"Aline Ferreira Magalhaes"	22
"Adriana Pastorello Buim Arena"	67	"Aline Ferreira Magalhaes"	22
"Aldeci Cacique Calixto"	72	"Aline Ferreira Magalhaes"	22
"Aléxia Pádua Franco"	69	"Aline Ferreira Magalhaes"	22
"Ana Beatriz da Silva Duarte"	62	"Aline Ferreira Magalhaes"	22
"Andrea Maturano Longarezi"	72	"Aline Ferreira Magalhaes"	22
"Jailson Mendes"	70	"Aline Ferreira Magalhaes"	22
"Gabriel Jesus"	68	"Aline Ferreira Magalhaes"	22
"Luciano Hulk"	70	"Aline Ferreira Magalhaes"	22
"João Guilherme"	70	"Aline Ferreira Magalhaes"	22
"Péricles Mendes"	63	"Aline Ferreira Magalhaes"	22
"Alcino Eduardo Bonella"	64	"Aline Ferreira Magalhaes"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Aline Ferreira Magalhaes"	22
"Ana Maria Said"	70	"Aline Ferreira Magalhaes"	22
"Anselmo Tadeu Ferreira"	63	"Aline Ferreira Magalhaes"	22
"Dennys Garcia Xavier"	70	"Aline Ferreira Magalhaes"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Aline Ferreira Magalhaes"	22
"Lucas de Assis Ribeiro"	72	"Aline Ferreira Magalhaes"	22
"Natália Mundim Tôrres"	72	"Aline Ferreira Magalhaes"	22
"Tiago Wilson Patriarca Mineo "	68	"Aline Ferreira Magalhaes"	22
"Neide Maria da Silva "	64	"Aline Ferreira Magalhaes"	22
"Alexandre Garrido da Silva"	71	"Aline Ferreira Magalhaes"	22
"Beatriz Corrêa Camargo"	72	"Aline Ferreira Magalhaes"	22
"Daniela de Melo Crosara"	68	"Aline Ferreira Magalhaes"	22
"Fernando Rodrigues Martins"	69	"Aline Ferreira Magalhaes"	22
"Gustavo de Carvalho Marin"	69	"Aline Ferreira Magalhaes"	22
"Ademir Cavalheiro"	64	"Aline Ferreira Magalhaes"	22
"Adevailton Bernardo dos Santos"	68	"Aline Ferreira Magalhaes"	22
"Alessandra Riposati Arantes"	65	"Aline Ferreira Magalhaes"	22
"Djalmir Nestor Messias"	66	"Aline Ferreira Magalhaes"	22
"Marcel Novaes"	66	"Aline Ferreira Magalhaes"	22
"Alberto da Silva Morais"	70	"Aline Ferreira Magalhaes"	22
"Carlos Hernrique Gomes"	65	"Aline Ferreira Magalhaes"	22
"Daniela Cristina de Oliveira"	72	"Aline Ferreira Magalhaes"	22
"Disney Oliver"	71	"Aline Ferreira Magalhaes"	22
"Henrique Tomaz Gonzaga"	68	"Aline Ferreira Magalhaes"	22
"Jamil Salem"	66	"Aline Ferreira Magalhaes"	22
"Julia Vingadora"	71	"Aline Ferreira Magalhaes"	22
"Roberto Carlos"	65	"Aline Ferreira Magalhaes"	22
"Cláudio Assembly"	64	"Aline Ferreira Magalhaes"	22
"Elaine Java"	63	"Aline Ferreira Magalhaes"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Aline Ferreira Magalhaes"	22
"Clelia Regina Cafer"	66	"Aline Ferreira Magalhaes"	22
"Marisa Aparecida Elias"	70	"Aline Ferreira Magalhaes"	22
"Barbara Dias Rezende Gontijo"	63	"Aline Ferreira Magalhaes"	22
"Tatiana Carneiro de Resende"	63	"Aline Ferreira Magalhaes"	22
"Alessandro Gomes Enoque"	70	"Aline Ferreira Magalhaes"	22
"Alex Fernando Borges"	68	"Aline Ferreira Magalhaes"	22
"Alexandre Alves Alvenha"	70	"Aline Ferreira Magalhaes"	22
"Alexandre Cacheffo"	71	"Aline Ferreira Magalhaes"	22
"Alexandre Calzavara Yoshida"	72	"Aline Ferreira Magalhaes"	22
"Severo Snape"	54	"Aline Ferreira Magalhaes"	22
"Gina Maira"	65	"Cristiano Bueno de Almeida"	20
"Marcelo Keese Albertini"	62	"Cristiano Bueno de Almeida"	20
"Rivalino Matias Júnior"	69	"Cristiano Bueno de Almeida"	20
"André Backes"	63	"Cristiano Bueno de Almeida"	20
"Bruno Augusto Nassif Travençolo"	66	"Cristiano Bueno de Almeida"	20
"Luiz Gustavo Almeida Martins"	67	"Cristiano Bueno de Almeida"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Cristiano Bueno de Almeida"	20
"Ariádine Cristine de Almeida"	71	"Cristiano Bueno de Almeida"	20
"Giuliano Buzá Jacobucci"	67	"Cristiano Bueno de Almeida"	20
"Jeamylle Nilin Gonçalves"	70	"Cristiano Bueno de Almeida"	20
"Cassiano Aimberê Dorneles Welker"	69	"Cristiano Bueno de Almeida"	20
"Admilson Lopes dos Santos"	72	"Cristiano Bueno de Almeida"	20
"Adriana Rodrigues da Silva"	68	"Cristiano Bueno de Almeida"	20
"Camila Mariana Ruiz"	71	"Cristiano Bueno de Almeida"	20
"Fernando Rodrigo Rafaeli"	68	"Cristiano Bueno de Almeida"	20
"Taciana Oliveira Souza"	69	"Cristiano Bueno de Almeida"	20
"Jean Ponciano"	69	"Cristiano Bueno de Almeida"	20
"Elaine Ribeiro"	67	"Cristiano Bueno de Almeida"	20
"Alexsandro Soares"	71	"Cristiano Bueno de Almeida"	20
"Pedro Frosi"	70	"Cristiano Bueno de Almeida"	20
"Marcia Aparecida Fernandes"	65	"Cristiano Bueno de Almeida"	20
"Adriano Mota Loyola"	69	"Cristiano Bueno de Almeida"	20
"Alessandra Maia de Castro Prado"	71	"Cristiano Bueno de Almeida"	20
"Álex Moreira Herval"	67	"Cristiano Bueno de Almeida"	20
"Ana Paula Turrioni Hidalgo"	66	"Cristiano Bueno de Almeida"	20
"Ana Paula de Lima Oliveira"	69	"Cristiano Bueno de Almeida"	20
"Belchior de Sousa"	68	"Cristiano Bueno de Almeida"	20
"Elsieni Coelho da Silva"	63	"Cristiano Bueno de Almeida"	20
"Gastao da Cunha Frota"	67	"Cristiano Bueno de Almeida"	20
"Nikoleta Tzvetanova Kerinska"	65	"Cristiano Bueno de Almeida"	20
"Renato Palumbo Doria"	63	"Cristiano Bueno de Almeida"	20
"Adriana Pastorello Buim Arena"	67	"Cristiano Bueno de Almeida"	20
"Aldeci Cacique Calixto"	72	"Cristiano Bueno de Almeida"	20
"Aléxia Pádua Franco"	69	"Cristiano Bueno de Almeida"	20
"Ana Beatriz da Silva Duarte"	62	"Cristiano Bueno de Almeida"	20
"Andrea Maturano Longarezi"	72	"Cristiano Bueno de Almeida"	20
"Jailson Mendes"	70	"Cristiano Bueno de Almeida"	20
"Gabriel Jesus"	68	"Cristiano Bueno de Almeida"	20
"Luciano Hulk"	70	"Cristiano Bueno de Almeida"	20
"João Guilherme"	70	"Cristiano Bueno de Almeida"	20
"Péricles Mendes"	63	"Cristiano Bueno de Almeida"	20
"Alcino Eduardo Bonella"	64	"Cristiano Bueno de Almeida"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Cristiano Bueno de Almeida"	20
"Ana Maria Said"	70	"Cristiano Bueno de Almeida"	20
"Anselmo Tadeu Ferreira"	63	"Cristiano Bueno de Almeida"	20
"Dennys Garcia Xavier"	70	"Cristiano Bueno de Almeida"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Cristiano Bueno de Almeida"	20
"Lucas de Assis Ribeiro"	72	"Cristiano Bueno de Almeida"	20
"Natália Mundim Tôrres"	72	"Cristiano Bueno de Almeida"	20
"Tiago Wilson Patriarca Mineo "	68	"Cristiano Bueno de Almeida"	20
"Neide Maria da Silva "	64	"Cristiano Bueno de Almeida"	20
"Alexandre Garrido da Silva"	71	"Cristiano Bueno de Almeida"	20
"Beatriz Corrêa Camargo"	72	"Cristiano Bueno de Almeida"	20
"Daniela de Melo Crosara"	68	"Cristiano Bueno de Almeida"	20
"Fernando Rodrigues Martins"	69	"Cristiano Bueno de Almeida"	20
"Gustavo de Carvalho Marin"	69	"Cristiano Bueno de Almeida"	20
"Ademir Cavalheiro"	64	"Cristiano Bueno de Almeida"	20
"Adevailton Bernardo dos Santos"	68	"Cristiano Bueno de Almeida"	20
"Alessandra Riposati Arantes"	65	"Cristiano Bueno de Almeida"	20
"Djalmir Nestor Messias"	66	"Cristiano Bueno de Almeida"	20
"Marcel Novaes"	66	"Cristiano Bueno de Almeida"	20
"Alberto da Silva Morais"	70	"Cristiano Bueno de Almeida"	20
"Carlos Hernrique Gomes"	65	"Cristiano Bueno de Almeida"	20
"Daniela Cristina de Oliveira"	72	"Cristiano Bueno de Almeida"	20
"Disney Oliver"	71	"Cristiano Bueno de Almeida"	20
"Henrique Tomaz Gonzaga"	68	"Cristiano Bueno de Almeida"	20
"Jamil Salem"	66	"Cristiano Bueno de Almeida"	20
"Julia Vingadora"	71	"Cristiano Bueno de Almeida"	20
"Roberto Carlos"	65	"Cristiano Bueno de Almeida"	20
"Cláudio Assembly"	64	"Cristiano Bueno de Almeida"	20
"Elaine Java"	63	"Cristiano Bueno de Almeida"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Cristiano Bueno de Almeida"	20
"Clelia Regina Cafer"	66	"Cristiano Bueno de Almeida"	20
"Marisa Aparecida Elias"	70	"Cristiano Bueno de Almeida"	20
"Barbara Dias Rezende Gontijo"	63	"Cristiano Bueno de Almeida"	20
"Tatiana Carneiro de Resende"	63	"Cristiano Bueno de Almeida"	20
"Alessandro Gomes Enoque"	70	"Cristiano Bueno de Almeida"	20
"Alex Fernando Borges"	68	"Cristiano Bueno de Almeida"	20
"Alexandre Alves Alvenha"	70	"Cristiano Bueno de Almeida"	20
"Alexandre Cacheffo"	71	"Cristiano Bueno de Almeida"	20
"Alexandre Calzavara Yoshida"	72	"Cristiano Bueno de Almeida"	20
"Severo Snape"	54	"Cristiano Bueno de Almeida"	20
"Gina Maira"	65	"Derli Luis Arantes Junior"	20
"Marcelo Keese Albertini"	62	"Derli Luis Arantes Junior"	20
"Rivalino Matias Júnior"	69	"Derli Luis Arantes Junior"	20
"André Backes"	63	"Derli Luis Arantes Junior"	20
"Bruno Augusto Nassif Travençolo"	66	"Derli Luis Arantes Junior"	20
"Luiz Gustavo Almeida Martins"	67	"Derli Luis Arantes Junior"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Derli Luis Arantes Junior"	20
"Ariádine Cristine de Almeida"	71	"Derli Luis Arantes Junior"	20
"Giuliano Buzá Jacobucci"	67	"Derli Luis Arantes Junior"	20
"Jeamylle Nilin Gonçalves"	70	"Derli Luis Arantes Junior"	20
"Cassiano Aimberê Dorneles Welker"	69	"Derli Luis Arantes Junior"	20
"Admilson Lopes dos Santos"	72	"Derli Luis Arantes Junior"	20
"Adriana Rodrigues da Silva"	68	"Derli Luis Arantes Junior"	20
"Camila Mariana Ruiz"	71	"Derli Luis Arantes Junior"	20
"Fernando Rodrigo Rafaeli"	68	"Derli Luis Arantes Junior"	20
"Taciana Oliveira Souza"	69	"Derli Luis Arantes Junior"	20
"Jean Ponciano"	69	"Derli Luis Arantes Junior"	20
"Elaine Ribeiro"	67	"Derli Luis Arantes Junior"	20
"Alexsandro Soares"	71	"Derli Luis Arantes Junior"	20
"Pedro Frosi"	70	"Derli Luis Arantes Junior"	20
"Marcia Aparecida Fernandes"	65	"Derli Luis Arantes Junior"	20
"Adriano Mota Loyola"	69	"Derli Luis Arantes Junior"	20
"Alessandra Maia de Castro Prado"	71	"Derli Luis Arantes Junior"	20
"Álex Moreira Herval"	67	"Derli Luis Arantes Junior"	20
"Ana Paula Turrioni Hidalgo"	66	"Derli Luis Arantes Junior"	20
"Ana Paula de Lima Oliveira"	69	"Derli Luis Arantes Junior"	20
"Belchior de Sousa"	68	"Derli Luis Arantes Junior"	20
"Elsieni Coelho da Silva"	63	"Derli Luis Arantes Junior"	20
"Gastao da Cunha Frota"	67	"Derli Luis Arantes Junior"	20
"Nikoleta Tzvetanova Kerinska"	65	"Derli Luis Arantes Junior"	20
"Renato Palumbo Doria"	63	"Derli Luis Arantes Junior"	20
"Adriana Pastorello Buim Arena"	67	"Derli Luis Arantes Junior"	20
"Aldeci Cacique Calixto"	72	"Derli Luis Arantes Junior"	20
"Aléxia Pádua Franco"	69	"Derli Luis Arantes Junior"	20
"Ana Beatriz da Silva Duarte"	62	"Derli Luis Arantes Junior"	20
"Andrea Maturano Longarezi"	72	"Derli Luis Arantes Junior"	20
"Jailson Mendes"	70	"Derli Luis Arantes Junior"	20
"Gabriel Jesus"	68	"Derli Luis Arantes Junior"	20
"Luciano Hulk"	70	"Derli Luis Arantes Junior"	20
"João Guilherme"	70	"Derli Luis Arantes Junior"	20
"Péricles Mendes"	63	"Derli Luis Arantes Junior"	20
"Alcino Eduardo Bonella"	64	"Derli Luis Arantes Junior"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Derli Luis Arantes Junior"	20
"Ana Maria Said"	70	"Derli Luis Arantes Junior"	20
"Anselmo Tadeu Ferreira"	63	"Derli Luis Arantes Junior"	20
"Dennys Garcia Xavier"	70	"Derli Luis Arantes Junior"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Derli Luis Arantes Junior"	20
"Lucas de Assis Ribeiro"	72	"Derli Luis Arantes Junior"	20
"Natália Mundim Tôrres"	72	"Derli Luis Arantes Junior"	20
"Tiago Wilson Patriarca Mineo "	68	"Derli Luis Arantes Junior"	20
"Neide Maria da Silva "	64	"Derli Luis Arantes Junior"	20
"Alexandre Garrido da Silva"	71	"Derli Luis Arantes Junior"	20
"Beatriz Corrêa Camargo"	72	"Derli Luis Arantes Junior"	20
"Daniela de Melo Crosara"	68	"Derli Luis Arantes Junior"	20
"Fernando Rodrigues Martins"	69	"Derli Luis Arantes Junior"	20
"Gustavo de Carvalho Marin"	69	"Derli Luis Arantes Junior"	20
"Ademir Cavalheiro"	64	"Derli Luis Arantes Junior"	20
"Adevailton Bernardo dos Santos"	68	"Derli Luis Arantes Junior"	20
"Alessandra Riposati Arantes"	65	"Derli Luis Arantes Junior"	20
"Djalmir Nestor Messias"	66	"Derli Luis Arantes Junior"	20
"Marcel Novaes"	66	"Derli Luis Arantes Junior"	20
"Alberto da Silva Morais"	70	"Derli Luis Arantes Junior"	20
"Carlos Hernrique Gomes"	65	"Derli Luis Arantes Junior"	20
"Daniela Cristina de Oliveira"	72	"Derli Luis Arantes Junior"	20
"Disney Oliver"	71	"Derli Luis Arantes Junior"	20
"Henrique Tomaz Gonzaga"	68	"Derli Luis Arantes Junior"	20
"Jamil Salem"	66	"Derli Luis Arantes Junior"	20
"Julia Vingadora"	71	"Derli Luis Arantes Junior"	20
"Roberto Carlos"	65	"Derli Luis Arantes Junior"	20
"Cláudio Assembly"	64	"Derli Luis Arantes Junior"	20
"Elaine Java"	63	"Derli Luis Arantes Junior"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Derli Luis Arantes Junior"	20
"Clelia Regina Cafer"	66	"Derli Luis Arantes Junior"	20
"Marisa Aparecida Elias"	70	"Derli Luis Arantes Junior"	20
"Barbara Dias Rezende Gontijo"	63	"Derli Luis Arantes Junior"	20
"Tatiana Carneiro de Resende"	63	"Derli Luis Arantes Junior"	20
"Alessandro Gomes Enoque"	70	"Derli Luis Arantes Junior"	20
"Alex Fernando Borges"	68	"Derli Luis Arantes Junior"	20
"Alexandre Alves Alvenha"	70	"Derli Luis Arantes Junior"	20
"Alexandre Cacheffo"	71	"Derli Luis Arantes Junior"	20
"Alexandre Calzavara Yoshida"	72	"Derli Luis Arantes Junior"	20
"Severo Snape"	54	"Derli Luis Arantes Junior"	20
"Gina Maira"	65	"Gladston Marcelo Pereira do Vale"	22
"Marcelo Keese Albertini"	62	"Gladston Marcelo Pereira do Vale"	22
"Rivalino Matias Júnior"	69	"Gladston Marcelo Pereira do Vale"	22
"André Backes"	63	"Gladston Marcelo Pereira do Vale"	22
"Bruno Augusto Nassif Travençolo"	66	"Gladston Marcelo Pereira do Vale"	22
"Luiz Gustavo Almeida Martins"	67	"Gladston Marcelo Pereira do Vale"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Gladston Marcelo Pereira do Vale"	22
"Ariádine Cristine de Almeida"	71	"Gladston Marcelo Pereira do Vale"	22
"Giuliano Buzá Jacobucci"	67	"Gladston Marcelo Pereira do Vale"	22
"Jeamylle Nilin Gonçalves"	70	"Gladston Marcelo Pereira do Vale"	22
"Cassiano Aimberê Dorneles Welker"	69	"Gladston Marcelo Pereira do Vale"	22
"Admilson Lopes dos Santos"	72	"Gladston Marcelo Pereira do Vale"	22
"Adriana Rodrigues da Silva"	68	"Gladston Marcelo Pereira do Vale"	22
"Camila Mariana Ruiz"	71	"Gladston Marcelo Pereira do Vale"	22
"Fernando Rodrigo Rafaeli"	68	"Gladston Marcelo Pereira do Vale"	22
"Taciana Oliveira Souza"	69	"Gladston Marcelo Pereira do Vale"	22
"Jean Ponciano"	69	"Gladston Marcelo Pereira do Vale"	22
"Elaine Ribeiro"	67	"Gladston Marcelo Pereira do Vale"	22
"Alexsandro Soares"	71	"Gladston Marcelo Pereira do Vale"	22
"Pedro Frosi"	70	"Gladston Marcelo Pereira do Vale"	22
"Marcia Aparecida Fernandes"	65	"Gladston Marcelo Pereira do Vale"	22
"Adriano Mota Loyola"	69	"Gladston Marcelo Pereira do Vale"	22
"Alessandra Maia de Castro Prado"	71	"Gladston Marcelo Pereira do Vale"	22
"Álex Moreira Herval"	67	"Gladston Marcelo Pereira do Vale"	22
"Ana Paula Turrioni Hidalgo"	66	"Gladston Marcelo Pereira do Vale"	22
"Ana Paula de Lima Oliveira"	69	"Gladston Marcelo Pereira do Vale"	22
"Belchior de Sousa"	68	"Gladston Marcelo Pereira do Vale"	22
"Elsieni Coelho da Silva"	63	"Gladston Marcelo Pereira do Vale"	22
"Gastao da Cunha Frota"	67	"Gladston Marcelo Pereira do Vale"	22
"Nikoleta Tzvetanova Kerinska"	65	"Gladston Marcelo Pereira do Vale"	22
"Renato Palumbo Doria"	63	"Gladston Marcelo Pereira do Vale"	22
"Adriana Pastorello Buim Arena"	67	"Gladston Marcelo Pereira do Vale"	22
"Aldeci Cacique Calixto"	72	"Gladston Marcelo Pereira do Vale"	22
"Aléxia Pádua Franco"	69	"Gladston Marcelo Pereira do Vale"	22
"Ana Beatriz da Silva Duarte"	62	"Gladston Marcelo Pereira do Vale"	22
"Andrea Maturano Longarezi"	72	"Gladston Marcelo Pereira do Vale"	22
"Jailson Mendes"	70	"Gladston Marcelo Pereira do Vale"	22
"Gabriel Jesus"	68	"Gladston Marcelo Pereira do Vale"	22
"Luciano Hulk"	70	"Gladston Marcelo Pereira do Vale"	22
"João Guilherme"	70	"Gladston Marcelo Pereira do Vale"	22
"Péricles Mendes"	63	"Gladston Marcelo Pereira do Vale"	22
"Alcino Eduardo Bonella"	64	"Gladston Marcelo Pereira do Vale"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Gladston Marcelo Pereira do Vale"	22
"Ana Maria Said"	70	"Gladston Marcelo Pereira do Vale"	22
"Anselmo Tadeu Ferreira"	63	"Gladston Marcelo Pereira do Vale"	22
"Dennys Garcia Xavier"	70	"Gladston Marcelo Pereira do Vale"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Gladston Marcelo Pereira do Vale"	22
"Lucas de Assis Ribeiro"	72	"Gladston Marcelo Pereira do Vale"	22
"Natália Mundim Tôrres"	72	"Gladston Marcelo Pereira do Vale"	22
"Tiago Wilson Patriarca Mineo "	68	"Gladston Marcelo Pereira do Vale"	22
"Neide Maria da Silva "	64	"Gladston Marcelo Pereira do Vale"	22
"Alexandre Garrido da Silva"	71	"Gladston Marcelo Pereira do Vale"	22
"Beatriz Corrêa Camargo"	72	"Gladston Marcelo Pereira do Vale"	22
"Daniela de Melo Crosara"	68	"Gladston Marcelo Pereira do Vale"	22
"Fernando Rodrigues Martins"	69	"Gladston Marcelo Pereira do Vale"	22
"Gustavo de Carvalho Marin"	69	"Gladston Marcelo Pereira do Vale"	22
"Ademir Cavalheiro"	64	"Gladston Marcelo Pereira do Vale"	22
"Adevailton Bernardo dos Santos"	68	"Gladston Marcelo Pereira do Vale"	22
"Alessandra Riposati Arantes"	65	"Gladston Marcelo Pereira do Vale"	22
"Djalmir Nestor Messias"	66	"Gladston Marcelo Pereira do Vale"	22
"Marcel Novaes"	66	"Gladston Marcelo Pereira do Vale"	22
"Alberto da Silva Morais"	70	"Gladston Marcelo Pereira do Vale"	22
"Carlos Hernrique Gomes"	65	"Gladston Marcelo Pereira do Vale"	22
"Daniela Cristina de Oliveira"	72	"Gladston Marcelo Pereira do Vale"	22
"Disney Oliver"	71	"Gladston Marcelo Pereira do Vale"	22
"Henrique Tomaz Gonzaga"	68	"Gladston Marcelo Pereira do Vale"	22
"Jamil Salem"	66	"Gladston Marcelo Pereira do Vale"	22
"Julia Vingadora"	71	"Gladston Marcelo Pereira do Vale"	22
"Roberto Carlos"	65	"Gladston Marcelo Pereira do Vale"	22
"Cláudio Assembly"	64	"Gladston Marcelo Pereira do Vale"	22
"Elaine Java"	63	"Gladston Marcelo Pereira do Vale"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Gladston Marcelo Pereira do Vale"	22
"Clelia Regina Cafer"	66	"Gladston Marcelo Pereira do Vale"	22
"Marisa Aparecida Elias"	70	"Gladston Marcelo Pereira do Vale"	22
"Barbara Dias Rezende Gontijo"	63	"Gladston Marcelo Pereira do Vale"	22
"Tatiana Carneiro de Resende"	63	"Gladston Marcelo Pereira do Vale"	22
"Alessandro Gomes Enoque"	70	"Gladston Marcelo Pereira do Vale"	22
"Alex Fernando Borges"	68	"Gladston Marcelo Pereira do Vale"	22
"Alexandre Alves Alvenha"	70	"Gladston Marcelo Pereira do Vale"	22
"Alexandre Cacheffo"	71	"Gladston Marcelo Pereira do Vale"	22
"Alexandre Calzavara Yoshida"	72	"Gladston Marcelo Pereira do Vale"	22
"Severo Snape"	54	"Gladston Marcelo Pereira do Vale"	22
"Gina Maira"	65	"Kamila Stephany Alves Santos"	17
"Marcelo Keese Albertini"	62	"Kamila Stephany Alves Santos"	17
"Rivalino Matias Júnior"	69	"Kamila Stephany Alves Santos"	17
"André Backes"	63	"Kamila Stephany Alves Santos"	17
"Bruno Augusto Nassif Travençolo"	66	"Kamila Stephany Alves Santos"	17
"Luiz Gustavo Almeida Martins"	67	"Kamila Stephany Alves Santos"	17
"Ailton Gonçalves Rodrigues Junior"	69	"Kamila Stephany Alves Santos"	17
"Ariádine Cristine de Almeida"	71	"Kamila Stephany Alves Santos"	17
"Giuliano Buzá Jacobucci"	67	"Kamila Stephany Alves Santos"	17
"Jeamylle Nilin Gonçalves"	70	"Kamila Stephany Alves Santos"	17
"Cassiano Aimberê Dorneles Welker"	69	"Kamila Stephany Alves Santos"	17
"Admilson Lopes dos Santos"	72	"Kamila Stephany Alves Santos"	17
"Adriana Rodrigues da Silva"	68	"Kamila Stephany Alves Santos"	17
"Camila Mariana Ruiz"	71	"Kamila Stephany Alves Santos"	17
"Fernando Rodrigo Rafaeli"	68	"Kamila Stephany Alves Santos"	17
"Taciana Oliveira Souza"	69	"Kamila Stephany Alves Santos"	17
"Jean Ponciano"	69	"Kamila Stephany Alves Santos"	17
"Elaine Ribeiro"	67	"Kamila Stephany Alves Santos"	17
"Alexsandro Soares"	71	"Kamila Stephany Alves Santos"	17
"Pedro Frosi"	70	"Kamila Stephany Alves Santos"	17
"Marcia Aparecida Fernandes"	65	"Kamila Stephany Alves Santos"	17
"Adriano Mota Loyola"	69	"Kamila Stephany Alves Santos"	17
"Alessandra Maia de Castro Prado"	71	"Kamila Stephany Alves Santos"	17
"Álex Moreira Herval"	67	"Kamila Stephany Alves Santos"	17
"Ana Paula Turrioni Hidalgo"	66	"Kamila Stephany Alves Santos"	17
"Ana Paula de Lima Oliveira"	69	"Kamila Stephany Alves Santos"	17
"Belchior de Sousa"	68	"Kamila Stephany Alves Santos"	17
"Elsieni Coelho da Silva"	63	"Kamila Stephany Alves Santos"	17
"Gastao da Cunha Frota"	67	"Kamila Stephany Alves Santos"	17
"Nikoleta Tzvetanova Kerinska"	65	"Kamila Stephany Alves Santos"	17
"Renato Palumbo Doria"	63	"Kamila Stephany Alves Santos"	17
"Adriana Pastorello Buim Arena"	67	"Kamila Stephany Alves Santos"	17
"Aldeci Cacique Calixto"	72	"Kamila Stephany Alves Santos"	17
"Aléxia Pádua Franco"	69	"Kamila Stephany Alves Santos"	17
"Ana Beatriz da Silva Duarte"	62	"Kamila Stephany Alves Santos"	17
"Andrea Maturano Longarezi"	72	"Kamila Stephany Alves Santos"	17
"Jailson Mendes"	70	"Kamila Stephany Alves Santos"	17
"Gabriel Jesus"	68	"Kamila Stephany Alves Santos"	17
"Luciano Hulk"	70	"Kamila Stephany Alves Santos"	17
"João Guilherme"	70	"Kamila Stephany Alves Santos"	17
"Péricles Mendes"	63	"Kamila Stephany Alves Santos"	17
"Alcino Eduardo Bonella"	64	"Kamila Stephany Alves Santos"	17
"Alexandre Guimarães Tadeu de Soares"	68	"Kamila Stephany Alves Santos"	17
"Ana Maria Said"	70	"Kamila Stephany Alves Santos"	17
"Anselmo Tadeu Ferreira"	63	"Kamila Stephany Alves Santos"	17
"Dennys Garcia Xavier"	70	"Kamila Stephany Alves Santos"	17
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Kamila Stephany Alves Santos"	17
"Lucas de Assis Ribeiro"	72	"Kamila Stephany Alves Santos"	17
"Natália Mundim Tôrres"	72	"Kamila Stephany Alves Santos"	17
"Tiago Wilson Patriarca Mineo "	68	"Kamila Stephany Alves Santos"	17
"Neide Maria da Silva "	64	"Kamila Stephany Alves Santos"	17
"Alexandre Garrido da Silva"	71	"Kamila Stephany Alves Santos"	17
"Beatriz Corrêa Camargo"	72	"Kamila Stephany Alves Santos"	17
"Daniela de Melo Crosara"	68	"Kamila Stephany Alves Santos"	17
"Fernando Rodrigues Martins"	69	"Kamila Stephany Alves Santos"	17
"Gustavo de Carvalho Marin"	69	"Kamila Stephany Alves Santos"	17
"Ademir Cavalheiro"	64	"Kamila Stephany Alves Santos"	17
"Adevailton Bernardo dos Santos"	68	"Kamila Stephany Alves Santos"	17
"Alessandra Riposati Arantes"	65	"Kamila Stephany Alves Santos"	17
"Djalmir Nestor Messias"	66	"Kamila Stephany Alves Santos"	17
"Marcel Novaes"	66	"Kamila Stephany Alves Santos"	17
"Alberto da Silva Morais"	70	"Kamila Stephany Alves Santos"	17
"Carlos Hernrique Gomes"	65	"Kamila Stephany Alves Santos"	17
"Daniela Cristina de Oliveira"	72	"Kamila Stephany Alves Santos"	17
"Disney Oliver"	71	"Kamila Stephany Alves Santos"	17
"Henrique Tomaz Gonzaga"	68	"Kamila Stephany Alves Santos"	17
"Jamil Salem"	66	"Kamila Stephany Alves Santos"	17
"Julia Vingadora"	71	"Kamila Stephany Alves Santos"	17
"Roberto Carlos"	65	"Kamila Stephany Alves Santos"	17
"Cláudio Assembly"	64	"Kamila Stephany Alves Santos"	17
"Elaine Java"	63	"Kamila Stephany Alves Santos"	17
"Lilian Rodrigues Sant’ Anna Campos"	70	"Kamila Stephany Alves Santos"	17
"Clelia Regina Cafer"	66	"Kamila Stephany Alves Santos"	17
"Marisa Aparecida Elias"	70	"Kamila Stephany Alves Santos"	17
"Barbara Dias Rezende Gontijo"	63	"Kamila Stephany Alves Santos"	17
"Tatiana Carneiro de Resende"	63	"Kamila Stephany Alves Santos"	17
"Alessandro Gomes Enoque"	70	"Kamila Stephany Alves Santos"	17
"Alex Fernando Borges"	68	"Kamila Stephany Alves Santos"	17
"Alexandre Alves Alvenha"	70	"Kamila Stephany Alves Santos"	17
"Alexandre Cacheffo"	71	"Kamila Stephany Alves Santos"	17
"Alexandre Calzavara Yoshida"	72	"Kamila Stephany Alves Santos"	17
"Severo Snape"	54	"Kamila Stephany Alves Santos"	17
"Gina Maira"	65	"Alexandre Borba Chiqueta"	23
"Marcelo Keese Albertini"	62	"Alexandre Borba Chiqueta"	23
"Rivalino Matias Júnior"	69	"Alexandre Borba Chiqueta"	23
"André Backes"	63	"Alexandre Borba Chiqueta"	23
"Bruno Augusto Nassif Travençolo"	66	"Alexandre Borba Chiqueta"	23
"Luiz Gustavo Almeida Martins"	67	"Alexandre Borba Chiqueta"	23
"Ailton Gonçalves Rodrigues Junior"	69	"Alexandre Borba Chiqueta"	23
"Ariádine Cristine de Almeida"	71	"Alexandre Borba Chiqueta"	23
"Giuliano Buzá Jacobucci"	67	"Alexandre Borba Chiqueta"	23
"Jeamylle Nilin Gonçalves"	70	"Alexandre Borba Chiqueta"	23
"Cassiano Aimberê Dorneles Welker"	69	"Alexandre Borba Chiqueta"	23
"Admilson Lopes dos Santos"	72	"Alexandre Borba Chiqueta"	23
"Adriana Rodrigues da Silva"	68	"Alexandre Borba Chiqueta"	23
"Camila Mariana Ruiz"	71	"Alexandre Borba Chiqueta"	23
"Fernando Rodrigo Rafaeli"	68	"Alexandre Borba Chiqueta"	23
"Taciana Oliveira Souza"	69	"Alexandre Borba Chiqueta"	23
"Jean Ponciano"	69	"Alexandre Borba Chiqueta"	23
"Elaine Ribeiro"	67	"Alexandre Borba Chiqueta"	23
"Alexsandro Soares"	71	"Alexandre Borba Chiqueta"	23
"Pedro Frosi"	70	"Alexandre Borba Chiqueta"	23
"Marcia Aparecida Fernandes"	65	"Alexandre Borba Chiqueta"	23
"Adriano Mota Loyola"	69	"Alexandre Borba Chiqueta"	23
"Alessandra Maia de Castro Prado"	71	"Alexandre Borba Chiqueta"	23
"Álex Moreira Herval"	67	"Alexandre Borba Chiqueta"	23
"Ana Paula Turrioni Hidalgo"	66	"Alexandre Borba Chiqueta"	23
"Ana Paula de Lima Oliveira"	69	"Alexandre Borba Chiqueta"	23
"Belchior de Sousa"	68	"Alexandre Borba Chiqueta"	23
"Elsieni Coelho da Silva"	63	"Alexandre Borba Chiqueta"	23
"Gastao da Cunha Frota"	67	"Alexandre Borba Chiqueta"	23
"Nikoleta Tzvetanova Kerinska"	65	"Alexandre Borba Chiqueta"	23
"Renato Palumbo Doria"	63	"Alexandre Borba Chiqueta"	23
"Adriana Pastorello Buim Arena"	67	"Alexandre Borba Chiqueta"	23
"Aldeci Cacique Calixto"	72	"Alexandre Borba Chiqueta"	23
"Aléxia Pádua Franco"	69	"Alexandre Borba Chiqueta"	23
"Ana Beatriz da Silva Duarte"	62	"Alexandre Borba Chiqueta"	23
"Andrea Maturano Longarezi"	72	"Alexandre Borba Chiqueta"	23
"Jailson Mendes"	70	"Alexandre Borba Chiqueta"	23
"Gabriel Jesus"	68	"Alexandre Borba Chiqueta"	23
"Luciano Hulk"	70	"Alexandre Borba Chiqueta"	23
"João Guilherme"	70	"Alexandre Borba Chiqueta"	23
"Péricles Mendes"	63	"Alexandre Borba Chiqueta"	23
"Alcino Eduardo Bonella"	64	"Alexandre Borba Chiqueta"	23
"Alexandre Guimarães Tadeu de Soares"	68	"Alexandre Borba Chiqueta"	23
"Ana Maria Said"	70	"Alexandre Borba Chiqueta"	23
"Anselmo Tadeu Ferreira"	63	"Alexandre Borba Chiqueta"	23
"Dennys Garcia Xavier"	70	"Alexandre Borba Chiqueta"	23
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Alexandre Borba Chiqueta"	23
"Lucas de Assis Ribeiro"	72	"Alexandre Borba Chiqueta"	23
"Natália Mundim Tôrres"	72	"Alexandre Borba Chiqueta"	23
"Tiago Wilson Patriarca Mineo "	68	"Alexandre Borba Chiqueta"	23
"Neide Maria da Silva "	64	"Alexandre Borba Chiqueta"	23
"Alexandre Garrido da Silva"	71	"Alexandre Borba Chiqueta"	23
"Beatriz Corrêa Camargo"	72	"Alexandre Borba Chiqueta"	23
"Daniela de Melo Crosara"	68	"Alexandre Borba Chiqueta"	23
"Fernando Rodrigues Martins"	69	"Alexandre Borba Chiqueta"	23
"Gustavo de Carvalho Marin"	69	"Alexandre Borba Chiqueta"	23
"Ademir Cavalheiro"	64	"Alexandre Borba Chiqueta"	23
"Adevailton Bernardo dos Santos"	68	"Alexandre Borba Chiqueta"	23
"Alessandra Riposati Arantes"	65	"Alexandre Borba Chiqueta"	23
"Djalmir Nestor Messias"	66	"Alexandre Borba Chiqueta"	23
"Marcel Novaes"	66	"Alexandre Borba Chiqueta"	23
"Alberto da Silva Morais"	70	"Alexandre Borba Chiqueta"	23
"Carlos Hernrique Gomes"	65	"Alexandre Borba Chiqueta"	23
"Daniela Cristina de Oliveira"	72	"Alexandre Borba Chiqueta"	23
"Disney Oliver"	71	"Alexandre Borba Chiqueta"	23
"Henrique Tomaz Gonzaga"	68	"Alexandre Borba Chiqueta"	23
"Jamil Salem"	66	"Alexandre Borba Chiqueta"	23
"Julia Vingadora"	71	"Alexandre Borba Chiqueta"	23
"Roberto Carlos"	65	"Alexandre Borba Chiqueta"	23
"Cláudio Assembly"	64	"Alexandre Borba Chiqueta"	23
"Elaine Java"	63	"Alexandre Borba Chiqueta"	23
"Lilian Rodrigues Sant’ Anna Campos"	70	"Alexandre Borba Chiqueta"	23
"Clelia Regina Cafer"	66	"Alexandre Borba Chiqueta"	23
"Marisa Aparecida Elias"	70	"Alexandre Borba Chiqueta"	23
"Barbara Dias Rezende Gontijo"	63	"Alexandre Borba Chiqueta"	23
"Tatiana Carneiro de Resende"	63	"Alexandre Borba Chiqueta"	23
"Alessandro Gomes Enoque"	70	"Alexandre Borba Chiqueta"	23
"Alex Fernando Borges"	68	"Alexandre Borba Chiqueta"	23
"Alexandre Alves Alvenha"	70	"Alexandre Borba Chiqueta"	23
"Alexandre Cacheffo"	71	"Alexandre Borba Chiqueta"	23
"Alexandre Calzavara Yoshida"	72	"Alexandre Borba Chiqueta"	23
"Severo Snape"	54	"Alexandre Borba Chiqueta"	23
"Gina Maira"	65	"Flávio Fernandes"	24
"Marcelo Keese Albertini"	62	"Flávio Fernandes"	24
"Rivalino Matias Júnior"	69	"Flávio Fernandes"	24
"André Backes"	63	"Flávio Fernandes"	24
"Bruno Augusto Nassif Travençolo"	66	"Flávio Fernandes"	24
"Luiz Gustavo Almeida Martins"	67	"Flávio Fernandes"	24
"Ailton Gonçalves Rodrigues Junior"	69	"Flávio Fernandes"	24
"Ariádine Cristine de Almeida"	71	"Flávio Fernandes"	24
"Giuliano Buzá Jacobucci"	67	"Flávio Fernandes"	24
"Jeamylle Nilin Gonçalves"	70	"Flávio Fernandes"	24
"Cassiano Aimberê Dorneles Welker"	69	"Flávio Fernandes"	24
"Admilson Lopes dos Santos"	72	"Flávio Fernandes"	24
"Adriana Rodrigues da Silva"	68	"Flávio Fernandes"	24
"Camila Mariana Ruiz"	71	"Flávio Fernandes"	24
"Fernando Rodrigo Rafaeli"	68	"Flávio Fernandes"	24
"Taciana Oliveira Souza"	69	"Flávio Fernandes"	24
"Jean Ponciano"	69	"Flávio Fernandes"	24
"Elaine Ribeiro"	67	"Flávio Fernandes"	24
"Alexsandro Soares"	71	"Flávio Fernandes"	24
"Pedro Frosi"	70	"Flávio Fernandes"	24
"Marcia Aparecida Fernandes"	65	"Flávio Fernandes"	24
"Adriano Mota Loyola"	69	"Flávio Fernandes"	24
"Alessandra Maia de Castro Prado"	71	"Flávio Fernandes"	24
"Álex Moreira Herval"	67	"Flávio Fernandes"	24
"Ana Paula Turrioni Hidalgo"	66	"Flávio Fernandes"	24
"Ana Paula de Lima Oliveira"	69	"Flávio Fernandes"	24
"Belchior de Sousa"	68	"Flávio Fernandes"	24
"Elsieni Coelho da Silva"	63	"Flávio Fernandes"	24
"Gastao da Cunha Frota"	67	"Flávio Fernandes"	24
"Nikoleta Tzvetanova Kerinska"	65	"Flávio Fernandes"	24
"Renato Palumbo Doria"	63	"Flávio Fernandes"	24
"Adriana Pastorello Buim Arena"	67	"Flávio Fernandes"	24
"Aldeci Cacique Calixto"	72	"Flávio Fernandes"	24
"Aléxia Pádua Franco"	69	"Flávio Fernandes"	24
"Ana Beatriz da Silva Duarte"	62	"Flávio Fernandes"	24
"Andrea Maturano Longarezi"	72	"Flávio Fernandes"	24
"Jailson Mendes"	70	"Flávio Fernandes"	24
"Gabriel Jesus"	68	"Flávio Fernandes"	24
"Luciano Hulk"	70	"Flávio Fernandes"	24
"João Guilherme"	70	"Flávio Fernandes"	24
"Péricles Mendes"	63	"Flávio Fernandes"	24
"Alcino Eduardo Bonella"	64	"Flávio Fernandes"	24
"Alexandre Guimarães Tadeu de Soares"	68	"Flávio Fernandes"	24
"Ana Maria Said"	70	"Flávio Fernandes"	24
"Anselmo Tadeu Ferreira"	63	"Flávio Fernandes"	24
"Dennys Garcia Xavier"	70	"Flávio Fernandes"	24
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Flávio Fernandes"	24
"Lucas de Assis Ribeiro"	72	"Flávio Fernandes"	24
"Natália Mundim Tôrres"	72	"Flávio Fernandes"	24
"Tiago Wilson Patriarca Mineo "	68	"Flávio Fernandes"	24
"Neide Maria da Silva "	64	"Flávio Fernandes"	24
"Alexandre Garrido da Silva"	71	"Flávio Fernandes"	24
"Beatriz Corrêa Camargo"	72	"Flávio Fernandes"	24
"Daniela de Melo Crosara"	68	"Flávio Fernandes"	24
"Fernando Rodrigues Martins"	69	"Flávio Fernandes"	24
"Gustavo de Carvalho Marin"	69	"Flávio Fernandes"	24
"Ademir Cavalheiro"	64	"Flávio Fernandes"	24
"Adevailton Bernardo dos Santos"	68	"Flávio Fernandes"	24
"Alessandra Riposati Arantes"	65	"Flávio Fernandes"	24
"Djalmir Nestor Messias"	66	"Flávio Fernandes"	24
"Marcel Novaes"	66	"Flávio Fernandes"	24
"Alberto da Silva Morais"	70	"Flávio Fernandes"	24
"Carlos Hernrique Gomes"	65	"Flávio Fernandes"	24
"Daniela Cristina de Oliveira"	72	"Flávio Fernandes"	24
"Disney Oliver"	71	"Flávio Fernandes"	24
"Henrique Tomaz Gonzaga"	68	"Flávio Fernandes"	24
"Jamil Salem"	66	"Flávio Fernandes"	24
"Julia Vingadora"	71	"Flávio Fernandes"	24
"Roberto Carlos"	65	"Flávio Fernandes"	24
"Cláudio Assembly"	64	"Flávio Fernandes"	24
"Elaine Java"	63	"Flávio Fernandes"	24
"Lilian Rodrigues Sant’ Anna Campos"	70	"Flávio Fernandes"	24
"Clelia Regina Cafer"	66	"Flávio Fernandes"	24
"Marisa Aparecida Elias"	70	"Flávio Fernandes"	24
"Barbara Dias Rezende Gontijo"	63	"Flávio Fernandes"	24
"Tatiana Carneiro de Resende"	63	"Flávio Fernandes"	24
"Alessandro Gomes Enoque"	70	"Flávio Fernandes"	24
"Alex Fernando Borges"	68	"Flávio Fernandes"	24
"Alexandre Alves Alvenha"	70	"Flávio Fernandes"	24
"Alexandre Cacheffo"	71	"Flávio Fernandes"	24
"Alexandre Calzavara Yoshida"	72	"Flávio Fernandes"	24
"Severo Snape"	54	"Flávio Fernandes"	24
"Gina Maira"	65	"Gabrel Toledo"	39
"Marcelo Keese Albertini"	62	"Gabrel Toledo"	39
"Rivalino Matias Júnior"	69	"Gabrel Toledo"	39
"André Backes"	63	"Gabrel Toledo"	39
"Bruno Augusto Nassif Travençolo"	66	"Gabrel Toledo"	39
"Luiz Gustavo Almeida Martins"	67	"Gabrel Toledo"	39
"Ailton Gonçalves Rodrigues Junior"	69	"Gabrel Toledo"	39
"Ariádine Cristine de Almeida"	71	"Gabrel Toledo"	39
"Giuliano Buzá Jacobucci"	67	"Gabrel Toledo"	39
"Jeamylle Nilin Gonçalves"	70	"Gabrel Toledo"	39
"Cassiano Aimberê Dorneles Welker"	69	"Gabrel Toledo"	39
"Admilson Lopes dos Santos"	72	"Gabrel Toledo"	39
"Adriana Rodrigues da Silva"	68	"Gabrel Toledo"	39
"Camila Mariana Ruiz"	71	"Gabrel Toledo"	39
"Fernando Rodrigo Rafaeli"	68	"Gabrel Toledo"	39
"Taciana Oliveira Souza"	69	"Gabrel Toledo"	39
"Jean Ponciano"	69	"Gabrel Toledo"	39
"Elaine Ribeiro"	67	"Gabrel Toledo"	39
"Alexsandro Soares"	71	"Gabrel Toledo"	39
"Pedro Frosi"	70	"Gabrel Toledo"	39
"Marcia Aparecida Fernandes"	65	"Gabrel Toledo"	39
"Adriano Mota Loyola"	69	"Gabrel Toledo"	39
"Alessandra Maia de Castro Prado"	71	"Gabrel Toledo"	39
"Álex Moreira Herval"	67	"Gabrel Toledo"	39
"Ana Paula Turrioni Hidalgo"	66	"Gabrel Toledo"	39
"Ana Paula de Lima Oliveira"	69	"Gabrel Toledo"	39
"Belchior de Sousa"	68	"Gabrel Toledo"	39
"Elsieni Coelho da Silva"	63	"Gabrel Toledo"	39
"Gastao da Cunha Frota"	67	"Gabrel Toledo"	39
"Nikoleta Tzvetanova Kerinska"	65	"Gabrel Toledo"	39
"Renato Palumbo Doria"	63	"Gabrel Toledo"	39
"Adriana Pastorello Buim Arena"	67	"Gabrel Toledo"	39
"Aldeci Cacique Calixto"	72	"Gabrel Toledo"	39
"Aléxia Pádua Franco"	69	"Gabrel Toledo"	39
"Ana Beatriz da Silva Duarte"	62	"Gabrel Toledo"	39
"Andrea Maturano Longarezi"	72	"Gabrel Toledo"	39
"Jailson Mendes"	70	"Gabrel Toledo"	39
"Gabriel Jesus"	68	"Gabrel Toledo"	39
"Luciano Hulk"	70	"Gabrel Toledo"	39
"João Guilherme"	70	"Gabrel Toledo"	39
"Péricles Mendes"	63	"Gabrel Toledo"	39
"Alcino Eduardo Bonella"	64	"Gabrel Toledo"	39
"Alexandre Guimarães Tadeu de Soares"	68	"Gabrel Toledo"	39
"Ana Maria Said"	70	"Gabrel Toledo"	39
"Anselmo Tadeu Ferreira"	63	"Gabrel Toledo"	39
"Dennys Garcia Xavier"	70	"Gabrel Toledo"	39
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Gabrel Toledo"	39
"Lucas de Assis Ribeiro"	72	"Gabrel Toledo"	39
"Natália Mundim Tôrres"	72	"Gabrel Toledo"	39
"Tiago Wilson Patriarca Mineo "	68	"Gabrel Toledo"	39
"Neide Maria da Silva "	64	"Gabrel Toledo"	39
"Alexandre Garrido da Silva"	71	"Gabrel Toledo"	39
"Beatriz Corrêa Camargo"	72	"Gabrel Toledo"	39
"Daniela de Melo Crosara"	68	"Gabrel Toledo"	39
"Fernando Rodrigues Martins"	69	"Gabrel Toledo"	39
"Gustavo de Carvalho Marin"	69	"Gabrel Toledo"	39
"Ademir Cavalheiro"	64	"Gabrel Toledo"	39
"Adevailton Bernardo dos Santos"	68	"Gabrel Toledo"	39
"Alessandra Riposati Arantes"	65	"Gabrel Toledo"	39
"Djalmir Nestor Messias"	66	"Gabrel Toledo"	39
"Marcel Novaes"	66	"Gabrel Toledo"	39
"Alberto da Silva Morais"	70	"Gabrel Toledo"	39
"Carlos Hernrique Gomes"	65	"Gabrel Toledo"	39
"Daniela Cristina de Oliveira"	72	"Gabrel Toledo"	39
"Disney Oliver"	71	"Gabrel Toledo"	39
"Henrique Tomaz Gonzaga"	68	"Gabrel Toledo"	39
"Jamil Salem"	66	"Gabrel Toledo"	39
"Julia Vingadora"	71	"Gabrel Toledo"	39
"Roberto Carlos"	65	"Gabrel Toledo"	39
"Cláudio Assembly"	64	"Gabrel Toledo"	39
"Elaine Java"	63	"Gabrel Toledo"	39
"Lilian Rodrigues Sant’ Anna Campos"	70	"Gabrel Toledo"	39
"Clelia Regina Cafer"	66	"Gabrel Toledo"	39
"Marisa Aparecida Elias"	70	"Gabrel Toledo"	39
"Barbara Dias Rezende Gontijo"	63	"Gabrel Toledo"	39
"Tatiana Carneiro de Resende"	63	"Gabrel Toledo"	39
"Alessandro Gomes Enoque"	70	"Gabrel Toledo"	39
"Alex Fernando Borges"	68	"Gabrel Toledo"	39
"Alexandre Alves Alvenha"	70	"Gabrel Toledo"	39
"Alexandre Cacheffo"	71	"Gabrel Toledo"	39
"Alexandre Calzavara Yoshida"	72	"Gabrel Toledo"	39
"Severo Snape"	54	"Gabrel Toledo"	39
"Gina Maira"	65	"Nicolas Paolinelli"	27
"Marcelo Keese Albertini"	62	"Nicolas Paolinelli"	27
"Rivalino Matias Júnior"	69	"Nicolas Paolinelli"	27
"André Backes"	63	"Nicolas Paolinelli"	27
"Bruno Augusto Nassif Travençolo"	66	"Nicolas Paolinelli"	27
"Luiz Gustavo Almeida Martins"	67	"Nicolas Paolinelli"	27
"Ailton Gonçalves Rodrigues Junior"	69	"Nicolas Paolinelli"	27
"Ariádine Cristine de Almeida"	71	"Nicolas Paolinelli"	27
"Giuliano Buzá Jacobucci"	67	"Nicolas Paolinelli"	27
"Jeamylle Nilin Gonçalves"	70	"Nicolas Paolinelli"	27
"Cassiano Aimberê Dorneles Welker"	69	"Nicolas Paolinelli"	27
"Admilson Lopes dos Santos"	72	"Nicolas Paolinelli"	27
"Adriana Rodrigues da Silva"	68	"Nicolas Paolinelli"	27
"Camila Mariana Ruiz"	71	"Nicolas Paolinelli"	27
"Fernando Rodrigo Rafaeli"	68	"Nicolas Paolinelli"	27
"Taciana Oliveira Souza"	69	"Nicolas Paolinelli"	27
"Jean Ponciano"	69	"Nicolas Paolinelli"	27
"Elaine Ribeiro"	67	"Nicolas Paolinelli"	27
"Alexsandro Soares"	71	"Nicolas Paolinelli"	27
"Pedro Frosi"	70	"Nicolas Paolinelli"	27
"Marcia Aparecida Fernandes"	65	"Nicolas Paolinelli"	27
"Adriano Mota Loyola"	69	"Nicolas Paolinelli"	27
"Alessandra Maia de Castro Prado"	71	"Nicolas Paolinelli"	27
"Álex Moreira Herval"	67	"Nicolas Paolinelli"	27
"Ana Paula Turrioni Hidalgo"	66	"Nicolas Paolinelli"	27
"Ana Paula de Lima Oliveira"	69	"Nicolas Paolinelli"	27
"Belchior de Sousa"	68	"Nicolas Paolinelli"	27
"Elsieni Coelho da Silva"	63	"Nicolas Paolinelli"	27
"Gastao da Cunha Frota"	67	"Nicolas Paolinelli"	27
"Nikoleta Tzvetanova Kerinska"	65	"Nicolas Paolinelli"	27
"Renato Palumbo Doria"	63	"Nicolas Paolinelli"	27
"Adriana Pastorello Buim Arena"	67	"Nicolas Paolinelli"	27
"Aldeci Cacique Calixto"	72	"Nicolas Paolinelli"	27
"Aléxia Pádua Franco"	69	"Nicolas Paolinelli"	27
"Ana Beatriz da Silva Duarte"	62	"Nicolas Paolinelli"	27
"Andrea Maturano Longarezi"	72	"Nicolas Paolinelli"	27
"Jailson Mendes"	70	"Nicolas Paolinelli"	27
"Gabriel Jesus"	68	"Nicolas Paolinelli"	27
"Luciano Hulk"	70	"Nicolas Paolinelli"	27
"João Guilherme"	70	"Nicolas Paolinelli"	27
"Péricles Mendes"	63	"Nicolas Paolinelli"	27
"Alcino Eduardo Bonella"	64	"Nicolas Paolinelli"	27
"Alexandre Guimarães Tadeu de Soares"	68	"Nicolas Paolinelli"	27
"Ana Maria Said"	70	"Nicolas Paolinelli"	27
"Anselmo Tadeu Ferreira"	63	"Nicolas Paolinelli"	27
"Dennys Garcia Xavier"	70	"Nicolas Paolinelli"	27
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Nicolas Paolinelli"	27
"Lucas de Assis Ribeiro"	72	"Nicolas Paolinelli"	27
"Natália Mundim Tôrres"	72	"Nicolas Paolinelli"	27
"Tiago Wilson Patriarca Mineo "	68	"Nicolas Paolinelli"	27
"Neide Maria da Silva "	64	"Nicolas Paolinelli"	27
"Alexandre Garrido da Silva"	71	"Nicolas Paolinelli"	27
"Beatriz Corrêa Camargo"	72	"Nicolas Paolinelli"	27
"Daniela de Melo Crosara"	68	"Nicolas Paolinelli"	27
"Fernando Rodrigues Martins"	69	"Nicolas Paolinelli"	27
"Gustavo de Carvalho Marin"	69	"Nicolas Paolinelli"	27
"Ademir Cavalheiro"	64	"Nicolas Paolinelli"	27
"Adevailton Bernardo dos Santos"	68	"Nicolas Paolinelli"	27
"Alessandra Riposati Arantes"	65	"Nicolas Paolinelli"	27
"Djalmir Nestor Messias"	66	"Nicolas Paolinelli"	27
"Marcel Novaes"	66	"Nicolas Paolinelli"	27
"Alberto da Silva Morais"	70	"Nicolas Paolinelli"	27
"Carlos Hernrique Gomes"	65	"Nicolas Paolinelli"	27
"Daniela Cristina de Oliveira"	72	"Nicolas Paolinelli"	27
"Disney Oliver"	71	"Nicolas Paolinelli"	27
"Henrique Tomaz Gonzaga"	68	"Nicolas Paolinelli"	27
"Jamil Salem"	66	"Nicolas Paolinelli"	27
"Julia Vingadora"	71	"Nicolas Paolinelli"	27
"Roberto Carlos"	65	"Nicolas Paolinelli"	27
"Cláudio Assembly"	64	"Nicolas Paolinelli"	27
"Elaine Java"	63	"Nicolas Paolinelli"	27
"Lilian Rodrigues Sant’ Anna Campos"	70	"Nicolas Paolinelli"	27
"Clelia Regina Cafer"	66	"Nicolas Paolinelli"	27
"Marisa Aparecida Elias"	70	"Nicolas Paolinelli"	27
"Barbara Dias Rezende Gontijo"	63	"Nicolas Paolinelli"	27
"Tatiana Carneiro de Resende"	63	"Nicolas Paolinelli"	27
"Alessandro Gomes Enoque"	70	"Nicolas Paolinelli"	27
"Alex Fernando Borges"	68	"Nicolas Paolinelli"	27
"Alexandre Alves Alvenha"	70	"Nicolas Paolinelli"	27
"Alexandre Cacheffo"	71	"Nicolas Paolinelli"	27
"Alexandre Calzavara Yoshida"	72	"Nicolas Paolinelli"	27
"Severo Snape"	54	"Nicolas Paolinelli"	27
"Gina Maira"	65	"Matheus Brasileiro Aguiar"	32
"Marcelo Keese Albertini"	62	"Matheus Brasileiro Aguiar"	32
"Rivalino Matias Júnior"	69	"Matheus Brasileiro Aguiar"	32
"André Backes"	63	"Matheus Brasileiro Aguiar"	32
"Bruno Augusto Nassif Travençolo"	66	"Matheus Brasileiro Aguiar"	32
"Luiz Gustavo Almeida Martins"	67	"Matheus Brasileiro Aguiar"	32
"Ailton Gonçalves Rodrigues Junior"	69	"Matheus Brasileiro Aguiar"	32
"Ariádine Cristine de Almeida"	71	"Matheus Brasileiro Aguiar"	32
"Giuliano Buzá Jacobucci"	67	"Matheus Brasileiro Aguiar"	32
"Jeamylle Nilin Gonçalves"	70	"Matheus Brasileiro Aguiar"	32
"Cassiano Aimberê Dorneles Welker"	69	"Matheus Brasileiro Aguiar"	32
"Admilson Lopes dos Santos"	72	"Matheus Brasileiro Aguiar"	32
"Adriana Rodrigues da Silva"	68	"Matheus Brasileiro Aguiar"	32
"Camila Mariana Ruiz"	71	"Matheus Brasileiro Aguiar"	32
"Fernando Rodrigo Rafaeli"	68	"Matheus Brasileiro Aguiar"	32
"Taciana Oliveira Souza"	69	"Matheus Brasileiro Aguiar"	32
"Jean Ponciano"	69	"Matheus Brasileiro Aguiar"	32
"Elaine Ribeiro"	67	"Matheus Brasileiro Aguiar"	32
"Alexsandro Soares"	71	"Matheus Brasileiro Aguiar"	32
"Pedro Frosi"	70	"Matheus Brasileiro Aguiar"	32
"Marcia Aparecida Fernandes"	65	"Matheus Brasileiro Aguiar"	32
"Adriano Mota Loyola"	69	"Matheus Brasileiro Aguiar"	32
"Alessandra Maia de Castro Prado"	71	"Matheus Brasileiro Aguiar"	32
"Álex Moreira Herval"	67	"Matheus Brasileiro Aguiar"	32
"Ana Paula Turrioni Hidalgo"	66	"Matheus Brasileiro Aguiar"	32
"Ana Paula de Lima Oliveira"	69	"Matheus Brasileiro Aguiar"	32
"Belchior de Sousa"	68	"Matheus Brasileiro Aguiar"	32
"Elsieni Coelho da Silva"	63	"Matheus Brasileiro Aguiar"	32
"Gastao da Cunha Frota"	67	"Matheus Brasileiro Aguiar"	32
"Nikoleta Tzvetanova Kerinska"	65	"Matheus Brasileiro Aguiar"	32
"Renato Palumbo Doria"	63	"Matheus Brasileiro Aguiar"	32
"Adriana Pastorello Buim Arena"	67	"Matheus Brasileiro Aguiar"	32
"Aldeci Cacique Calixto"	72	"Matheus Brasileiro Aguiar"	32
"Aléxia Pádua Franco"	69	"Matheus Brasileiro Aguiar"	32
"Ana Beatriz da Silva Duarte"	62	"Matheus Brasileiro Aguiar"	32
"Andrea Maturano Longarezi"	72	"Matheus Brasileiro Aguiar"	32
"Jailson Mendes"	70	"Matheus Brasileiro Aguiar"	32
"Gabriel Jesus"	68	"Matheus Brasileiro Aguiar"	32
"Luciano Hulk"	70	"Matheus Brasileiro Aguiar"	32
"João Guilherme"	70	"Matheus Brasileiro Aguiar"	32
"Péricles Mendes"	63	"Matheus Brasileiro Aguiar"	32
"Alcino Eduardo Bonella"	64	"Matheus Brasileiro Aguiar"	32
"Alexandre Guimarães Tadeu de Soares"	68	"Matheus Brasileiro Aguiar"	32
"Ana Maria Said"	70	"Matheus Brasileiro Aguiar"	32
"Anselmo Tadeu Ferreira"	63	"Matheus Brasileiro Aguiar"	32
"Dennys Garcia Xavier"	70	"Matheus Brasileiro Aguiar"	32
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Matheus Brasileiro Aguiar"	32
"Lucas de Assis Ribeiro"	72	"Matheus Brasileiro Aguiar"	32
"Natália Mundim Tôrres"	72	"Matheus Brasileiro Aguiar"	32
"Tiago Wilson Patriarca Mineo "	68	"Matheus Brasileiro Aguiar"	32
"Neide Maria da Silva "	64	"Matheus Brasileiro Aguiar"	32
"Alexandre Garrido da Silva"	71	"Matheus Brasileiro Aguiar"	32
"Beatriz Corrêa Camargo"	72	"Matheus Brasileiro Aguiar"	32
"Daniela de Melo Crosara"	68	"Matheus Brasileiro Aguiar"	32
"Fernando Rodrigues Martins"	69	"Matheus Brasileiro Aguiar"	32
"Gustavo de Carvalho Marin"	69	"Matheus Brasileiro Aguiar"	32
"Ademir Cavalheiro"	64	"Matheus Brasileiro Aguiar"	32
"Adevailton Bernardo dos Santos"	68	"Matheus Brasileiro Aguiar"	32
"Alessandra Riposati Arantes"	65	"Matheus Brasileiro Aguiar"	32
"Djalmir Nestor Messias"	66	"Matheus Brasileiro Aguiar"	32
"Marcel Novaes"	66	"Matheus Brasileiro Aguiar"	32
"Alberto da Silva Morais"	70	"Matheus Brasileiro Aguiar"	32
"Carlos Hernrique Gomes"	65	"Matheus Brasileiro Aguiar"	32
"Daniela Cristina de Oliveira"	72	"Matheus Brasileiro Aguiar"	32
"Disney Oliver"	71	"Matheus Brasileiro Aguiar"	32
"Henrique Tomaz Gonzaga"	68	"Matheus Brasileiro Aguiar"	32
"Jamil Salem"	66	"Matheus Brasileiro Aguiar"	32
"Julia Vingadora"	71	"Matheus Brasileiro Aguiar"	32
"Roberto Carlos"	65	"Matheus Brasileiro Aguiar"	32
"Cláudio Assembly"	64	"Matheus Brasileiro Aguiar"	32
"Elaine Java"	63	"Matheus Brasileiro Aguiar"	32
"Lilian Rodrigues Sant’ Anna Campos"	70	"Matheus Brasileiro Aguiar"	32
"Clelia Regina Cafer"	66	"Matheus Brasileiro Aguiar"	32
"Marisa Aparecida Elias"	70	"Matheus Brasileiro Aguiar"	32
"Barbara Dias Rezende Gontijo"	63	"Matheus Brasileiro Aguiar"	32
"Tatiana Carneiro de Resende"	63	"Matheus Brasileiro Aguiar"	32
"Alessandro Gomes Enoque"	70	"Matheus Brasileiro Aguiar"	32
"Alex Fernando Borges"	68	"Matheus Brasileiro Aguiar"	32
"Alexandre Alves Alvenha"	70	"Matheus Brasileiro Aguiar"	32
"Alexandre Cacheffo"	71	"Matheus Brasileiro Aguiar"	32
"Alexandre Calzavara Yoshida"	72	"Matheus Brasileiro Aguiar"	32
"Severo Snape"	54	"Matheus Brasileiro Aguiar"	32
"Gina Maira"	65	"João Augusto Silva"	22
"Marcelo Keese Albertini"	62	"João Augusto Silva"	22
"Rivalino Matias Júnior"	69	"João Augusto Silva"	22
"André Backes"	63	"João Augusto Silva"	22
"Bruno Augusto Nassif Travençolo"	66	"João Augusto Silva"	22
"Luiz Gustavo Almeida Martins"	67	"João Augusto Silva"	22
"Ailton Gonçalves Rodrigues Junior"	69	"João Augusto Silva"	22
"Ariádine Cristine de Almeida"	71	"João Augusto Silva"	22
"Giuliano Buzá Jacobucci"	67	"João Augusto Silva"	22
"Jeamylle Nilin Gonçalves"	70	"João Augusto Silva"	22
"Cassiano Aimberê Dorneles Welker"	69	"João Augusto Silva"	22
"Admilson Lopes dos Santos"	72	"João Augusto Silva"	22
"Adriana Rodrigues da Silva"	68	"João Augusto Silva"	22
"Camila Mariana Ruiz"	71	"João Augusto Silva"	22
"Fernando Rodrigo Rafaeli"	68	"João Augusto Silva"	22
"Taciana Oliveira Souza"	69	"João Augusto Silva"	22
"Jean Ponciano"	69	"João Augusto Silva"	22
"Elaine Ribeiro"	67	"João Augusto Silva"	22
"Alexsandro Soares"	71	"João Augusto Silva"	22
"Pedro Frosi"	70	"João Augusto Silva"	22
"Marcia Aparecida Fernandes"	65	"João Augusto Silva"	22
"Adriano Mota Loyola"	69	"João Augusto Silva"	22
"Alessandra Maia de Castro Prado"	71	"João Augusto Silva"	22
"Álex Moreira Herval"	67	"João Augusto Silva"	22
"Ana Paula Turrioni Hidalgo"	66	"João Augusto Silva"	22
"Ana Paula de Lima Oliveira"	69	"João Augusto Silva"	22
"Belchior de Sousa"	68	"João Augusto Silva"	22
"Elsieni Coelho da Silva"	63	"João Augusto Silva"	22
"Gastao da Cunha Frota"	67	"João Augusto Silva"	22
"Nikoleta Tzvetanova Kerinska"	65	"João Augusto Silva"	22
"Renato Palumbo Doria"	63	"João Augusto Silva"	22
"Adriana Pastorello Buim Arena"	67	"João Augusto Silva"	22
"Aldeci Cacique Calixto"	72	"João Augusto Silva"	22
"Aléxia Pádua Franco"	69	"João Augusto Silva"	22
"Ana Beatriz da Silva Duarte"	62	"João Augusto Silva"	22
"Andrea Maturano Longarezi"	72	"João Augusto Silva"	22
"Jailson Mendes"	70	"João Augusto Silva"	22
"Gabriel Jesus"	68	"João Augusto Silva"	22
"Luciano Hulk"	70	"João Augusto Silva"	22
"João Guilherme"	70	"João Augusto Silva"	22
"Péricles Mendes"	63	"João Augusto Silva"	22
"Alcino Eduardo Bonella"	64	"João Augusto Silva"	22
"Alexandre Guimarães Tadeu de Soares"	68	"João Augusto Silva"	22
"Ana Maria Said"	70	"João Augusto Silva"	22
"Anselmo Tadeu Ferreira"	63	"João Augusto Silva"	22
"Dennys Garcia Xavier"	70	"João Augusto Silva"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"João Augusto Silva"	22
"Lucas de Assis Ribeiro"	72	"João Augusto Silva"	22
"Natália Mundim Tôrres"	72	"João Augusto Silva"	22
"Tiago Wilson Patriarca Mineo "	68	"João Augusto Silva"	22
"Neide Maria da Silva "	64	"João Augusto Silva"	22
"Alexandre Garrido da Silva"	71	"João Augusto Silva"	22
"Beatriz Corrêa Camargo"	72	"João Augusto Silva"	22
"Daniela de Melo Crosara"	68	"João Augusto Silva"	22
"Fernando Rodrigues Martins"	69	"João Augusto Silva"	22
"Gustavo de Carvalho Marin"	69	"João Augusto Silva"	22
"Ademir Cavalheiro"	64	"João Augusto Silva"	22
"Adevailton Bernardo dos Santos"	68	"João Augusto Silva"	22
"Alessandra Riposati Arantes"	65	"João Augusto Silva"	22
"Djalmir Nestor Messias"	66	"João Augusto Silva"	22
"Marcel Novaes"	66	"João Augusto Silva"	22
"Alberto da Silva Morais"	70	"João Augusto Silva"	22
"Carlos Hernrique Gomes"	65	"João Augusto Silva"	22
"Daniela Cristina de Oliveira"	72	"João Augusto Silva"	22
"Disney Oliver"	71	"João Augusto Silva"	22
"Henrique Tomaz Gonzaga"	68	"João Augusto Silva"	22
"Jamil Salem"	66	"João Augusto Silva"	22
"Julia Vingadora"	71	"João Augusto Silva"	22
"Roberto Carlos"	65	"João Augusto Silva"	22
"Cláudio Assembly"	64	"João Augusto Silva"	22
"Elaine Java"	63	"João Augusto Silva"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"João Augusto Silva"	22
"Clelia Regina Cafer"	66	"João Augusto Silva"	22
"Marisa Aparecida Elias"	70	"João Augusto Silva"	22
"Barbara Dias Rezende Gontijo"	63	"João Augusto Silva"	22
"Tatiana Carneiro de Resende"	63	"João Augusto Silva"	22
"Alessandro Gomes Enoque"	70	"João Augusto Silva"	22
"Alex Fernando Borges"	68	"João Augusto Silva"	22
"Alexandre Alves Alvenha"	70	"João Augusto Silva"	22
"Alexandre Cacheffo"	71	"João Augusto Silva"	22
"Alexandre Calzavara Yoshida"	72	"João Augusto Silva"	22
"Severo Snape"	54	"João Augusto Silva"	22
"Gina Maira"	65	"Pedro Nunes"	20
"Marcelo Keese Albertini"	62	"Pedro Nunes"	20
"Rivalino Matias Júnior"	69	"Pedro Nunes"	20
"André Backes"	63	"Pedro Nunes"	20
"Bruno Augusto Nassif Travençolo"	66	"Pedro Nunes"	20
"Luiz Gustavo Almeida Martins"	67	"Pedro Nunes"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Pedro Nunes"	20
"Ariádine Cristine de Almeida"	71	"Pedro Nunes"	20
"Giuliano Buzá Jacobucci"	67	"Pedro Nunes"	20
"Jeamylle Nilin Gonçalves"	70	"Pedro Nunes"	20
"Cassiano Aimberê Dorneles Welker"	69	"Pedro Nunes"	20
"Admilson Lopes dos Santos"	72	"Pedro Nunes"	20
"Adriana Rodrigues da Silva"	68	"Pedro Nunes"	20
"Camila Mariana Ruiz"	71	"Pedro Nunes"	20
"Fernando Rodrigo Rafaeli"	68	"Pedro Nunes"	20
"Taciana Oliveira Souza"	69	"Pedro Nunes"	20
"Jean Ponciano"	69	"Pedro Nunes"	20
"Elaine Ribeiro"	67	"Pedro Nunes"	20
"Alexsandro Soares"	71	"Pedro Nunes"	20
"Pedro Frosi"	70	"Pedro Nunes"	20
"Marcia Aparecida Fernandes"	65	"Pedro Nunes"	20
"Adriano Mota Loyola"	69	"Pedro Nunes"	20
"Alessandra Maia de Castro Prado"	71	"Pedro Nunes"	20
"Álex Moreira Herval"	67	"Pedro Nunes"	20
"Ana Paula Turrioni Hidalgo"	66	"Pedro Nunes"	20
"Ana Paula de Lima Oliveira"	69	"Pedro Nunes"	20
"Belchior de Sousa"	68	"Pedro Nunes"	20
"Elsieni Coelho da Silva"	63	"Pedro Nunes"	20
"Gastao da Cunha Frota"	67	"Pedro Nunes"	20
"Nikoleta Tzvetanova Kerinska"	65	"Pedro Nunes"	20
"Renato Palumbo Doria"	63	"Pedro Nunes"	20
"Adriana Pastorello Buim Arena"	67	"Pedro Nunes"	20
"Aldeci Cacique Calixto"	72	"Pedro Nunes"	20
"Aléxia Pádua Franco"	69	"Pedro Nunes"	20
"Ana Beatriz da Silva Duarte"	62	"Pedro Nunes"	20
"Andrea Maturano Longarezi"	72	"Pedro Nunes"	20
"Jailson Mendes"	70	"Pedro Nunes"	20
"Gabriel Jesus"	68	"Pedro Nunes"	20
"Luciano Hulk"	70	"Pedro Nunes"	20
"João Guilherme"	70	"Pedro Nunes"	20
"Péricles Mendes"	63	"Pedro Nunes"	20
"Alcino Eduardo Bonella"	64	"Pedro Nunes"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Pedro Nunes"	20
"Ana Maria Said"	70	"Pedro Nunes"	20
"Anselmo Tadeu Ferreira"	63	"Pedro Nunes"	20
"Dennys Garcia Xavier"	70	"Pedro Nunes"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Pedro Nunes"	20
"Lucas de Assis Ribeiro"	72	"Pedro Nunes"	20
"Natália Mundim Tôrres"	72	"Pedro Nunes"	20
"Tiago Wilson Patriarca Mineo "	68	"Pedro Nunes"	20
"Neide Maria da Silva "	64	"Pedro Nunes"	20
"Alexandre Garrido da Silva"	71	"Pedro Nunes"	20
"Beatriz Corrêa Camargo"	72	"Pedro Nunes"	20
"Daniela de Melo Crosara"	68	"Pedro Nunes"	20
"Fernando Rodrigues Martins"	69	"Pedro Nunes"	20
"Gustavo de Carvalho Marin"	69	"Pedro Nunes"	20
"Ademir Cavalheiro"	64	"Pedro Nunes"	20
"Adevailton Bernardo dos Santos"	68	"Pedro Nunes"	20
"Alessandra Riposati Arantes"	65	"Pedro Nunes"	20
"Djalmir Nestor Messias"	66	"Pedro Nunes"	20
"Marcel Novaes"	66	"Pedro Nunes"	20
"Alberto da Silva Morais"	70	"Pedro Nunes"	20
"Carlos Hernrique Gomes"	65	"Pedro Nunes"	20
"Daniela Cristina de Oliveira"	72	"Pedro Nunes"	20
"Disney Oliver"	71	"Pedro Nunes"	20
"Henrique Tomaz Gonzaga"	68	"Pedro Nunes"	20
"Jamil Salem"	66	"Pedro Nunes"	20
"Julia Vingadora"	71	"Pedro Nunes"	20
"Roberto Carlos"	65	"Pedro Nunes"	20
"Cláudio Assembly"	64	"Pedro Nunes"	20
"Elaine Java"	63	"Pedro Nunes"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Pedro Nunes"	20
"Clelia Regina Cafer"	66	"Pedro Nunes"	20
"Marisa Aparecida Elias"	70	"Pedro Nunes"	20
"Barbara Dias Rezende Gontijo"	63	"Pedro Nunes"	20
"Tatiana Carneiro de Resende"	63	"Pedro Nunes"	20
"Alessandro Gomes Enoque"	70	"Pedro Nunes"	20
"Alex Fernando Borges"	68	"Pedro Nunes"	20
"Alexandre Alves Alvenha"	70	"Pedro Nunes"	20
"Alexandre Cacheffo"	71	"Pedro Nunes"	20
"Alexandre Calzavara Yoshida"	72	"Pedro Nunes"	20
"Severo Snape"	54	"Pedro Nunes"	20
"Gina Maira"	65	"Augusto Pereira"	23
"Marcelo Keese Albertini"	62	"Augusto Pereira"	23
"Rivalino Matias Júnior"	69	"Augusto Pereira"	23
"André Backes"	63	"Augusto Pereira"	23
"Bruno Augusto Nassif Travençolo"	66	"Augusto Pereira"	23
"Luiz Gustavo Almeida Martins"	67	"Augusto Pereira"	23
"Ailton Gonçalves Rodrigues Junior"	69	"Augusto Pereira"	23
"Ariádine Cristine de Almeida"	71	"Augusto Pereira"	23
"Giuliano Buzá Jacobucci"	67	"Augusto Pereira"	23
"Jeamylle Nilin Gonçalves"	70	"Augusto Pereira"	23
"Cassiano Aimberê Dorneles Welker"	69	"Augusto Pereira"	23
"Admilson Lopes dos Santos"	72	"Augusto Pereira"	23
"Adriana Rodrigues da Silva"	68	"Augusto Pereira"	23
"Camila Mariana Ruiz"	71	"Augusto Pereira"	23
"Fernando Rodrigo Rafaeli"	68	"Augusto Pereira"	23
"Taciana Oliveira Souza"	69	"Augusto Pereira"	23
"Jean Ponciano"	69	"Augusto Pereira"	23
"Elaine Ribeiro"	67	"Augusto Pereira"	23
"Alexsandro Soares"	71	"Augusto Pereira"	23
"Pedro Frosi"	70	"Augusto Pereira"	23
"Marcia Aparecida Fernandes"	65	"Augusto Pereira"	23
"Adriano Mota Loyola"	69	"Augusto Pereira"	23
"Alessandra Maia de Castro Prado"	71	"Augusto Pereira"	23
"Álex Moreira Herval"	67	"Augusto Pereira"	23
"Ana Paula Turrioni Hidalgo"	66	"Augusto Pereira"	23
"Ana Paula de Lima Oliveira"	69	"Augusto Pereira"	23
"Belchior de Sousa"	68	"Augusto Pereira"	23
"Elsieni Coelho da Silva"	63	"Augusto Pereira"	23
"Gastao da Cunha Frota"	67	"Augusto Pereira"	23
"Nikoleta Tzvetanova Kerinska"	65	"Augusto Pereira"	23
"Renato Palumbo Doria"	63	"Augusto Pereira"	23
"Adriana Pastorello Buim Arena"	67	"Augusto Pereira"	23
"Aldeci Cacique Calixto"	72	"Augusto Pereira"	23
"Aléxia Pádua Franco"	69	"Augusto Pereira"	23
"Ana Beatriz da Silva Duarte"	62	"Augusto Pereira"	23
"Andrea Maturano Longarezi"	72	"Augusto Pereira"	23
"Jailson Mendes"	70	"Augusto Pereira"	23
"Gabriel Jesus"	68	"Augusto Pereira"	23
"Luciano Hulk"	70	"Augusto Pereira"	23
"João Guilherme"	70	"Augusto Pereira"	23
"Péricles Mendes"	63	"Augusto Pereira"	23
"Alcino Eduardo Bonella"	64	"Augusto Pereira"	23
"Alexandre Guimarães Tadeu de Soares"	68	"Augusto Pereira"	23
"Ana Maria Said"	70	"Augusto Pereira"	23
"Anselmo Tadeu Ferreira"	63	"Augusto Pereira"	23
"Dennys Garcia Xavier"	70	"Augusto Pereira"	23
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Augusto Pereira"	23
"Lucas de Assis Ribeiro"	72	"Augusto Pereira"	23
"Natália Mundim Tôrres"	72	"Augusto Pereira"	23
"Tiago Wilson Patriarca Mineo "	68	"Augusto Pereira"	23
"Neide Maria da Silva "	64	"Augusto Pereira"	23
"Alexandre Garrido da Silva"	71	"Augusto Pereira"	23
"Beatriz Corrêa Camargo"	72	"Augusto Pereira"	23
"Daniela de Melo Crosara"	68	"Augusto Pereira"	23
"Fernando Rodrigues Martins"	69	"Augusto Pereira"	23
"Gustavo de Carvalho Marin"	69	"Augusto Pereira"	23
"Ademir Cavalheiro"	64	"Augusto Pereira"	23
"Adevailton Bernardo dos Santos"	68	"Augusto Pereira"	23
"Alessandra Riposati Arantes"	65	"Augusto Pereira"	23
"Djalmir Nestor Messias"	66	"Augusto Pereira"	23
"Marcel Novaes"	66	"Augusto Pereira"	23
"Alberto da Silva Morais"	70	"Augusto Pereira"	23
"Carlos Hernrique Gomes"	65	"Augusto Pereira"	23
"Daniela Cristina de Oliveira"	72	"Augusto Pereira"	23
"Disney Oliver"	71	"Augusto Pereira"	23
"Henrique Tomaz Gonzaga"	68	"Augusto Pereira"	23
"Jamil Salem"	66	"Augusto Pereira"	23
"Julia Vingadora"	71	"Augusto Pereira"	23
"Roberto Carlos"	65	"Augusto Pereira"	23
"Cláudio Assembly"	64	"Augusto Pereira"	23
"Elaine Java"	63	"Augusto Pereira"	23
"Lilian Rodrigues Sant’ Anna Campos"	70	"Augusto Pereira"	23
"Clelia Regina Cafer"	66	"Augusto Pereira"	23
"Marisa Aparecida Elias"	70	"Augusto Pereira"	23
"Barbara Dias Rezende Gontijo"	63	"Augusto Pereira"	23
"Tatiana Carneiro de Resende"	63	"Augusto Pereira"	23
"Alessandro Gomes Enoque"	70	"Augusto Pereira"	23
"Alex Fernando Borges"	68	"Augusto Pereira"	23
"Alexandre Alves Alvenha"	70	"Augusto Pereira"	23
"Alexandre Cacheffo"	71	"Augusto Pereira"	23
"Alexandre Calzavara Yoshida"	72	"Augusto Pereira"	23
"Severo Snape"	54	"Augusto Pereira"	23
"Gina Maira"	65	"Maria Ferreira"	22
"Marcelo Keese Albertini"	62	"Maria Ferreira"	22
"Rivalino Matias Júnior"	69	"Maria Ferreira"	22
"André Backes"	63	"Maria Ferreira"	22
"Bruno Augusto Nassif Travençolo"	66	"Maria Ferreira"	22
"Luiz Gustavo Almeida Martins"	67	"Maria Ferreira"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Maria Ferreira"	22
"Ariádine Cristine de Almeida"	71	"Maria Ferreira"	22
"Giuliano Buzá Jacobucci"	67	"Maria Ferreira"	22
"Jeamylle Nilin Gonçalves"	70	"Maria Ferreira"	22
"Cassiano Aimberê Dorneles Welker"	69	"Maria Ferreira"	22
"Admilson Lopes dos Santos"	72	"Maria Ferreira"	22
"Adriana Rodrigues da Silva"	68	"Maria Ferreira"	22
"Camila Mariana Ruiz"	71	"Maria Ferreira"	22
"Fernando Rodrigo Rafaeli"	68	"Maria Ferreira"	22
"Taciana Oliveira Souza"	69	"Maria Ferreira"	22
"Jean Ponciano"	69	"Maria Ferreira"	22
"Elaine Ribeiro"	67	"Maria Ferreira"	22
"Alexsandro Soares"	71	"Maria Ferreira"	22
"Pedro Frosi"	70	"Maria Ferreira"	22
"Marcia Aparecida Fernandes"	65	"Maria Ferreira"	22
"Adriano Mota Loyola"	69	"Maria Ferreira"	22
"Alessandra Maia de Castro Prado"	71	"Maria Ferreira"	22
"Álex Moreira Herval"	67	"Maria Ferreira"	22
"Ana Paula Turrioni Hidalgo"	66	"Maria Ferreira"	22
"Ana Paula de Lima Oliveira"	69	"Maria Ferreira"	22
"Belchior de Sousa"	68	"Maria Ferreira"	22
"Elsieni Coelho da Silva"	63	"Maria Ferreira"	22
"Gastao da Cunha Frota"	67	"Maria Ferreira"	22
"Nikoleta Tzvetanova Kerinska"	65	"Maria Ferreira"	22
"Renato Palumbo Doria"	63	"Maria Ferreira"	22
"Adriana Pastorello Buim Arena"	67	"Maria Ferreira"	22
"Aldeci Cacique Calixto"	72	"Maria Ferreira"	22
"Aléxia Pádua Franco"	69	"Maria Ferreira"	22
"Ana Beatriz da Silva Duarte"	62	"Maria Ferreira"	22
"Andrea Maturano Longarezi"	72	"Maria Ferreira"	22
"Jailson Mendes"	70	"Maria Ferreira"	22
"Gabriel Jesus"	68	"Maria Ferreira"	22
"Luciano Hulk"	70	"Maria Ferreira"	22
"João Guilherme"	70	"Maria Ferreira"	22
"Péricles Mendes"	63	"Maria Ferreira"	22
"Alcino Eduardo Bonella"	64	"Maria Ferreira"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Maria Ferreira"	22
"Ana Maria Said"	70	"Maria Ferreira"	22
"Anselmo Tadeu Ferreira"	63	"Maria Ferreira"	22
"Dennys Garcia Xavier"	70	"Maria Ferreira"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Maria Ferreira"	22
"Lucas de Assis Ribeiro"	72	"Maria Ferreira"	22
"Natália Mundim Tôrres"	72	"Maria Ferreira"	22
"Tiago Wilson Patriarca Mineo "	68	"Maria Ferreira"	22
"Neide Maria da Silva "	64	"Maria Ferreira"	22
"Alexandre Garrido da Silva"	71	"Maria Ferreira"	22
"Beatriz Corrêa Camargo"	72	"Maria Ferreira"	22
"Daniela de Melo Crosara"	68	"Maria Ferreira"	22
"Fernando Rodrigues Martins"	69	"Maria Ferreira"	22
"Gustavo de Carvalho Marin"	69	"Maria Ferreira"	22
"Ademir Cavalheiro"	64	"Maria Ferreira"	22
"Adevailton Bernardo dos Santos"	68	"Maria Ferreira"	22
"Alessandra Riposati Arantes"	65	"Maria Ferreira"	22
"Djalmir Nestor Messias"	66	"Maria Ferreira"	22
"Marcel Novaes"	66	"Maria Ferreira"	22
"Alberto da Silva Morais"	70	"Maria Ferreira"	22
"Carlos Hernrique Gomes"	65	"Maria Ferreira"	22
"Daniela Cristina de Oliveira"	72	"Maria Ferreira"	22
"Disney Oliver"	71	"Maria Ferreira"	22
"Henrique Tomaz Gonzaga"	68	"Maria Ferreira"	22
"Jamil Salem"	66	"Maria Ferreira"	22
"Julia Vingadora"	71	"Maria Ferreira"	22
"Roberto Carlos"	65	"Maria Ferreira"	22
"Cláudio Assembly"	64	"Maria Ferreira"	22
"Elaine Java"	63	"Maria Ferreira"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Maria Ferreira"	22
"Clelia Regina Cafer"	66	"Maria Ferreira"	22
"Marisa Aparecida Elias"	70	"Maria Ferreira"	22
"Barbara Dias Rezende Gontijo"	63	"Maria Ferreira"	22
"Tatiana Carneiro de Resende"	63	"Maria Ferreira"	22
"Alessandro Gomes Enoque"	70	"Maria Ferreira"	22
"Alex Fernando Borges"	68	"Maria Ferreira"	22
"Alexandre Alves Alvenha"	70	"Maria Ferreira"	22
"Alexandre Cacheffo"	71	"Maria Ferreira"	22
"Alexandre Calzavara Yoshida"	72	"Maria Ferreira"	22
"Severo Snape"	54	"Maria Ferreira"	22
"Gina Maira"	65	"Ana Paula Freitas"	20
"Marcelo Keese Albertini"	62	"Ana Paula Freitas"	20
"Rivalino Matias Júnior"	69	"Ana Paula Freitas"	20
"André Backes"	63	"Ana Paula Freitas"	20
"Bruno Augusto Nassif Travençolo"	66	"Ana Paula Freitas"	20
"Luiz Gustavo Almeida Martins"	67	"Ana Paula Freitas"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Ana Paula Freitas"	20
"Ariádine Cristine de Almeida"	71	"Ana Paula Freitas"	20
"Giuliano Buzá Jacobucci"	67	"Ana Paula Freitas"	20
"Jeamylle Nilin Gonçalves"	70	"Ana Paula Freitas"	20
"Cassiano Aimberê Dorneles Welker"	69	"Ana Paula Freitas"	20
"Admilson Lopes dos Santos"	72	"Ana Paula Freitas"	20
"Adriana Rodrigues da Silva"	68	"Ana Paula Freitas"	20
"Camila Mariana Ruiz"	71	"Ana Paula Freitas"	20
"Fernando Rodrigo Rafaeli"	68	"Ana Paula Freitas"	20
"Taciana Oliveira Souza"	69	"Ana Paula Freitas"	20
"Jean Ponciano"	69	"Ana Paula Freitas"	20
"Elaine Ribeiro"	67	"Ana Paula Freitas"	20
"Alexsandro Soares"	71	"Ana Paula Freitas"	20
"Pedro Frosi"	70	"Ana Paula Freitas"	20
"Marcia Aparecida Fernandes"	65	"Ana Paula Freitas"	20
"Adriano Mota Loyola"	69	"Ana Paula Freitas"	20
"Alessandra Maia de Castro Prado"	71	"Ana Paula Freitas"	20
"Álex Moreira Herval"	67	"Ana Paula Freitas"	20
"Ana Paula Turrioni Hidalgo"	66	"Ana Paula Freitas"	20
"Ana Paula de Lima Oliveira"	69	"Ana Paula Freitas"	20
"Belchior de Sousa"	68	"Ana Paula Freitas"	20
"Elsieni Coelho da Silva"	63	"Ana Paula Freitas"	20
"Gastao da Cunha Frota"	67	"Ana Paula Freitas"	20
"Nikoleta Tzvetanova Kerinska"	65	"Ana Paula Freitas"	20
"Renato Palumbo Doria"	63	"Ana Paula Freitas"	20
"Adriana Pastorello Buim Arena"	67	"Ana Paula Freitas"	20
"Aldeci Cacique Calixto"	72	"Ana Paula Freitas"	20
"Aléxia Pádua Franco"	69	"Ana Paula Freitas"	20
"Ana Beatriz da Silva Duarte"	62	"Ana Paula Freitas"	20
"Andrea Maturano Longarezi"	72	"Ana Paula Freitas"	20
"Jailson Mendes"	70	"Ana Paula Freitas"	20
"Gabriel Jesus"	68	"Ana Paula Freitas"	20
"Luciano Hulk"	70	"Ana Paula Freitas"	20
"João Guilherme"	70	"Ana Paula Freitas"	20
"Péricles Mendes"	63	"Ana Paula Freitas"	20
"Alcino Eduardo Bonella"	64	"Ana Paula Freitas"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Ana Paula Freitas"	20
"Ana Maria Said"	70	"Ana Paula Freitas"	20
"Anselmo Tadeu Ferreira"	63	"Ana Paula Freitas"	20
"Dennys Garcia Xavier"	70	"Ana Paula Freitas"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Ana Paula Freitas"	20
"Lucas de Assis Ribeiro"	72	"Ana Paula Freitas"	20
"Natália Mundim Tôrres"	72	"Ana Paula Freitas"	20
"Tiago Wilson Patriarca Mineo "	68	"Ana Paula Freitas"	20
"Neide Maria da Silva "	64	"Ana Paula Freitas"	20
"Alexandre Garrido da Silva"	71	"Ana Paula Freitas"	20
"Beatriz Corrêa Camargo"	72	"Ana Paula Freitas"	20
"Daniela de Melo Crosara"	68	"Ana Paula Freitas"	20
"Fernando Rodrigues Martins"	69	"Ana Paula Freitas"	20
"Gustavo de Carvalho Marin"	69	"Ana Paula Freitas"	20
"Ademir Cavalheiro"	64	"Ana Paula Freitas"	20
"Adevailton Bernardo dos Santos"	68	"Ana Paula Freitas"	20
"Alessandra Riposati Arantes"	65	"Ana Paula Freitas"	20
"Djalmir Nestor Messias"	66	"Ana Paula Freitas"	20
"Marcel Novaes"	66	"Ana Paula Freitas"	20
"Alberto da Silva Morais"	70	"Ana Paula Freitas"	20
"Carlos Hernrique Gomes"	65	"Ana Paula Freitas"	20
"Daniela Cristina de Oliveira"	72	"Ana Paula Freitas"	20
"Disney Oliver"	71	"Ana Paula Freitas"	20
"Henrique Tomaz Gonzaga"	68	"Ana Paula Freitas"	20
"Jamil Salem"	66	"Ana Paula Freitas"	20
"Julia Vingadora"	71	"Ana Paula Freitas"	20
"Roberto Carlos"	65	"Ana Paula Freitas"	20
"Cláudio Assembly"	64	"Ana Paula Freitas"	20
"Elaine Java"	63	"Ana Paula Freitas"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Ana Paula Freitas"	20
"Clelia Regina Cafer"	66	"Ana Paula Freitas"	20
"Marisa Aparecida Elias"	70	"Ana Paula Freitas"	20
"Barbara Dias Rezende Gontijo"	63	"Ana Paula Freitas"	20
"Tatiana Carneiro de Resende"	63	"Ana Paula Freitas"	20
"Alessandro Gomes Enoque"	70	"Ana Paula Freitas"	20
"Alex Fernando Borges"	68	"Ana Paula Freitas"	20
"Alexandre Alves Alvenha"	70	"Ana Paula Freitas"	20
"Alexandre Cacheffo"	71	"Ana Paula Freitas"	20
"Alexandre Calzavara Yoshida"	72	"Ana Paula Freitas"	20
"Severo Snape"	54	"Ana Paula Freitas"	20
"Gina Maira"	65	"Elaine Ribeiro de Faria Paiva"	24
"Marcelo Keese Albertini"	62	"Elaine Ribeiro de Faria Paiva"	24
"Rivalino Matias Júnior"	69	"Elaine Ribeiro de Faria Paiva"	24
"André Backes"	63	"Elaine Ribeiro de Faria Paiva"	24
"Bruno Augusto Nassif Travençolo"	66	"Elaine Ribeiro de Faria Paiva"	24
"Luiz Gustavo Almeida Martins"	67	"Elaine Ribeiro de Faria Paiva"	24
"Ailton Gonçalves Rodrigues Junior"	69	"Elaine Ribeiro de Faria Paiva"	24
"Ariádine Cristine de Almeida"	71	"Elaine Ribeiro de Faria Paiva"	24
"Giuliano Buzá Jacobucci"	67	"Elaine Ribeiro de Faria Paiva"	24
"Jeamylle Nilin Gonçalves"	70	"Elaine Ribeiro de Faria Paiva"	24
"Cassiano Aimberê Dorneles Welker"	69	"Elaine Ribeiro de Faria Paiva"	24
"Admilson Lopes dos Santos"	72	"Elaine Ribeiro de Faria Paiva"	24
"Adriana Rodrigues da Silva"	68	"Elaine Ribeiro de Faria Paiva"	24
"Camila Mariana Ruiz"	71	"Elaine Ribeiro de Faria Paiva"	24
"Fernando Rodrigo Rafaeli"	68	"Elaine Ribeiro de Faria Paiva"	24
"Taciana Oliveira Souza"	69	"Elaine Ribeiro de Faria Paiva"	24
"Jean Ponciano"	69	"Elaine Ribeiro de Faria Paiva"	24
"Elaine Ribeiro"	67	"Elaine Ribeiro de Faria Paiva"	24
"Alexsandro Soares"	71	"Elaine Ribeiro de Faria Paiva"	24
"Pedro Frosi"	70	"Elaine Ribeiro de Faria Paiva"	24
"Marcia Aparecida Fernandes"	65	"Elaine Ribeiro de Faria Paiva"	24
"Adriano Mota Loyola"	69	"Elaine Ribeiro de Faria Paiva"	24
"Alessandra Maia de Castro Prado"	71	"Elaine Ribeiro de Faria Paiva"	24
"Álex Moreira Herval"	67	"Elaine Ribeiro de Faria Paiva"	24
"Ana Paula Turrioni Hidalgo"	66	"Elaine Ribeiro de Faria Paiva"	24
"Ana Paula de Lima Oliveira"	69	"Elaine Ribeiro de Faria Paiva"	24
"Belchior de Sousa"	68	"Elaine Ribeiro de Faria Paiva"	24
"Elsieni Coelho da Silva"	63	"Elaine Ribeiro de Faria Paiva"	24
"Gastao da Cunha Frota"	67	"Elaine Ribeiro de Faria Paiva"	24
"Nikoleta Tzvetanova Kerinska"	65	"Elaine Ribeiro de Faria Paiva"	24
"Renato Palumbo Doria"	63	"Elaine Ribeiro de Faria Paiva"	24
"Adriana Pastorello Buim Arena"	67	"Elaine Ribeiro de Faria Paiva"	24
"Aldeci Cacique Calixto"	72	"Elaine Ribeiro de Faria Paiva"	24
"Aléxia Pádua Franco"	69	"Elaine Ribeiro de Faria Paiva"	24
"Ana Beatriz da Silva Duarte"	62	"Elaine Ribeiro de Faria Paiva"	24
"Andrea Maturano Longarezi"	72	"Elaine Ribeiro de Faria Paiva"	24
"Jailson Mendes"	70	"Elaine Ribeiro de Faria Paiva"	24
"Gabriel Jesus"	68	"Elaine Ribeiro de Faria Paiva"	24
"Luciano Hulk"	70	"Elaine Ribeiro de Faria Paiva"	24
"João Guilherme"	70	"Elaine Ribeiro de Faria Paiva"	24
"Péricles Mendes"	63	"Elaine Ribeiro de Faria Paiva"	24
"Alcino Eduardo Bonella"	64	"Elaine Ribeiro de Faria Paiva"	24
"Alexandre Guimarães Tadeu de Soares"	68	"Elaine Ribeiro de Faria Paiva"	24
"Ana Maria Said"	70	"Elaine Ribeiro de Faria Paiva"	24
"Anselmo Tadeu Ferreira"	63	"Elaine Ribeiro de Faria Paiva"	24
"Dennys Garcia Xavier"	70	"Elaine Ribeiro de Faria Paiva"	24
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Elaine Ribeiro de Faria Paiva"	24
"Lucas de Assis Ribeiro"	72	"Elaine Ribeiro de Faria Paiva"	24
"Natália Mundim Tôrres"	72	"Elaine Ribeiro de Faria Paiva"	24
"Tiago Wilson Patriarca Mineo "	68	"Elaine Ribeiro de Faria Paiva"	24
"Neide Maria da Silva "	64	"Elaine Ribeiro de Faria Paiva"	24
"Alexandre Garrido da Silva"	71	"Elaine Ribeiro de Faria Paiva"	24
"Beatriz Corrêa Camargo"	72	"Elaine Ribeiro de Faria Paiva"	24
"Daniela de Melo Crosara"	68	"Elaine Ribeiro de Faria Paiva"	24
"Fernando Rodrigues Martins"	69	"Elaine Ribeiro de Faria Paiva"	24
"Gustavo de Carvalho Marin"	69	"Elaine Ribeiro de Faria Paiva"	24
"Ademir Cavalheiro"	64	"Elaine Ribeiro de Faria Paiva"	24
"Adevailton Bernardo dos Santos"	68	"Elaine Ribeiro de Faria Paiva"	24
"Alessandra Riposati Arantes"	65	"Elaine Ribeiro de Faria Paiva"	24
"Djalmir Nestor Messias"	66	"Elaine Ribeiro de Faria Paiva"	24
"Marcel Novaes"	66	"Elaine Ribeiro de Faria Paiva"	24
"Alberto da Silva Morais"	70	"Elaine Ribeiro de Faria Paiva"	24
"Carlos Hernrique Gomes"	65	"Elaine Ribeiro de Faria Paiva"	24
"Daniela Cristina de Oliveira"	72	"Elaine Ribeiro de Faria Paiva"	24
"Disney Oliver"	71	"Elaine Ribeiro de Faria Paiva"	24
"Henrique Tomaz Gonzaga"	68	"Elaine Ribeiro de Faria Paiva"	24
"Jamil Salem"	66	"Elaine Ribeiro de Faria Paiva"	24
"Julia Vingadora"	71	"Elaine Ribeiro de Faria Paiva"	24
"Roberto Carlos"	65	"Elaine Ribeiro de Faria Paiva"	24
"Cláudio Assembly"	64	"Elaine Ribeiro de Faria Paiva"	24
"Elaine Java"	63	"Elaine Ribeiro de Faria Paiva"	24
"Lilian Rodrigues Sant’ Anna Campos"	70	"Elaine Ribeiro de Faria Paiva"	24
"Clelia Regina Cafer"	66	"Elaine Ribeiro de Faria Paiva"	24
"Marisa Aparecida Elias"	70	"Elaine Ribeiro de Faria Paiva"	24
"Barbara Dias Rezende Gontijo"	63	"Elaine Ribeiro de Faria Paiva"	24
"Tatiana Carneiro de Resende"	63	"Elaine Ribeiro de Faria Paiva"	24
"Alessandro Gomes Enoque"	70	"Elaine Ribeiro de Faria Paiva"	24
"Alex Fernando Borges"	68	"Elaine Ribeiro de Faria Paiva"	24
"Alexandre Alves Alvenha"	70	"Elaine Ribeiro de Faria Paiva"	24
"Alexandre Cacheffo"	71	"Elaine Ribeiro de Faria Paiva"	24
"Alexandre Calzavara Yoshida"	72	"Elaine Ribeiro de Faria Paiva"	24
"Severo Snape"	54	"Elaine Ribeiro de Faria Paiva"	24
"Gina Maira"	65	"Fernando Souza"	23
"Marcelo Keese Albertini"	62	"Fernando Souza"	23
"Rivalino Matias Júnior"	69	"Fernando Souza"	23
"André Backes"	63	"Fernando Souza"	23
"Bruno Augusto Nassif Travençolo"	66	"Fernando Souza"	23
"Luiz Gustavo Almeida Martins"	67	"Fernando Souza"	23
"Ailton Gonçalves Rodrigues Junior"	69	"Fernando Souza"	23
"Ariádine Cristine de Almeida"	71	"Fernando Souza"	23
"Giuliano Buzá Jacobucci"	67	"Fernando Souza"	23
"Jeamylle Nilin Gonçalves"	70	"Fernando Souza"	23
"Cassiano Aimberê Dorneles Welker"	69	"Fernando Souza"	23
"Admilson Lopes dos Santos"	72	"Fernando Souza"	23
"Adriana Rodrigues da Silva"	68	"Fernando Souza"	23
"Camila Mariana Ruiz"	71	"Fernando Souza"	23
"Fernando Rodrigo Rafaeli"	68	"Fernando Souza"	23
"Taciana Oliveira Souza"	69	"Fernando Souza"	23
"Jean Ponciano"	69	"Fernando Souza"	23
"Elaine Ribeiro"	67	"Fernando Souza"	23
"Alexsandro Soares"	71	"Fernando Souza"	23
"Pedro Frosi"	70	"Fernando Souza"	23
"Marcia Aparecida Fernandes"	65	"Fernando Souza"	23
"Adriano Mota Loyola"	69	"Fernando Souza"	23
"Alessandra Maia de Castro Prado"	71	"Fernando Souza"	23
"Álex Moreira Herval"	67	"Fernando Souza"	23
"Ana Paula Turrioni Hidalgo"	66	"Fernando Souza"	23
"Ana Paula de Lima Oliveira"	69	"Fernando Souza"	23
"Belchior de Sousa"	68	"Fernando Souza"	23
"Elsieni Coelho da Silva"	63	"Fernando Souza"	23
"Gastao da Cunha Frota"	67	"Fernando Souza"	23
"Nikoleta Tzvetanova Kerinska"	65	"Fernando Souza"	23
"Renato Palumbo Doria"	63	"Fernando Souza"	23
"Adriana Pastorello Buim Arena"	67	"Fernando Souza"	23
"Aldeci Cacique Calixto"	72	"Fernando Souza"	23
"Aléxia Pádua Franco"	69	"Fernando Souza"	23
"Ana Beatriz da Silva Duarte"	62	"Fernando Souza"	23
"Andrea Maturano Longarezi"	72	"Fernando Souza"	23
"Jailson Mendes"	70	"Fernando Souza"	23
"Gabriel Jesus"	68	"Fernando Souza"	23
"Luciano Hulk"	70	"Fernando Souza"	23
"João Guilherme"	70	"Fernando Souza"	23
"Péricles Mendes"	63	"Fernando Souza"	23
"Alcino Eduardo Bonella"	64	"Fernando Souza"	23
"Alexandre Guimarães Tadeu de Soares"	68	"Fernando Souza"	23
"Ana Maria Said"	70	"Fernando Souza"	23
"Anselmo Tadeu Ferreira"	63	"Fernando Souza"	23
"Dennys Garcia Xavier"	70	"Fernando Souza"	23
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Fernando Souza"	23
"Lucas de Assis Ribeiro"	72	"Fernando Souza"	23
"Natália Mundim Tôrres"	72	"Fernando Souza"	23
"Tiago Wilson Patriarca Mineo "	68	"Fernando Souza"	23
"Neide Maria da Silva "	64	"Fernando Souza"	23
"Alexandre Garrido da Silva"	71	"Fernando Souza"	23
"Beatriz Corrêa Camargo"	72	"Fernando Souza"	23
"Daniela de Melo Crosara"	68	"Fernando Souza"	23
"Fernando Rodrigues Martins"	69	"Fernando Souza"	23
"Gustavo de Carvalho Marin"	69	"Fernando Souza"	23
"Ademir Cavalheiro"	64	"Fernando Souza"	23
"Adevailton Bernardo dos Santos"	68	"Fernando Souza"	23
"Alessandra Riposati Arantes"	65	"Fernando Souza"	23
"Djalmir Nestor Messias"	66	"Fernando Souza"	23
"Marcel Novaes"	66	"Fernando Souza"	23
"Alberto da Silva Morais"	70	"Fernando Souza"	23
"Carlos Hernrique Gomes"	65	"Fernando Souza"	23
"Daniela Cristina de Oliveira"	72	"Fernando Souza"	23
"Disney Oliver"	71	"Fernando Souza"	23
"Henrique Tomaz Gonzaga"	68	"Fernando Souza"	23
"Jamil Salem"	66	"Fernando Souza"	23
"Julia Vingadora"	71	"Fernando Souza"	23
"Roberto Carlos"	65	"Fernando Souza"	23
"Cláudio Assembly"	64	"Fernando Souza"	23
"Elaine Java"	63	"Fernando Souza"	23
"Lilian Rodrigues Sant’ Anna Campos"	70	"Fernando Souza"	23
"Clelia Regina Cafer"	66	"Fernando Souza"	23
"Marisa Aparecida Elias"	70	"Fernando Souza"	23
"Barbara Dias Rezende Gontijo"	63	"Fernando Souza"	23
"Tatiana Carneiro de Resende"	63	"Fernando Souza"	23
"Alessandro Gomes Enoque"	70	"Fernando Souza"	23
"Alex Fernando Borges"	68	"Fernando Souza"	23
"Alexandre Alves Alvenha"	70	"Fernando Souza"	23
"Alexandre Cacheffo"	71	"Fernando Souza"	23
"Alexandre Calzavara Yoshida"	72	"Fernando Souza"	23
"Severo Snape"	54	"Fernando Souza"	23
"Gina Maira"	65	"Rafael Silva"	19
"Marcelo Keese Albertini"	62	"Rafael Silva"	19
"Rivalino Matias Júnior"	69	"Rafael Silva"	19
"André Backes"	63	"Rafael Silva"	19
"Bruno Augusto Nassif Travençolo"	66	"Rafael Silva"	19
"Luiz Gustavo Almeida Martins"	67	"Rafael Silva"	19
"Ailton Gonçalves Rodrigues Junior"	69	"Rafael Silva"	19
"Ariádine Cristine de Almeida"	71	"Rafael Silva"	19
"Giuliano Buzá Jacobucci"	67	"Rafael Silva"	19
"Jeamylle Nilin Gonçalves"	70	"Rafael Silva"	19
"Cassiano Aimberê Dorneles Welker"	69	"Rafael Silva"	19
"Admilson Lopes dos Santos"	72	"Rafael Silva"	19
"Adriana Rodrigues da Silva"	68	"Rafael Silva"	19
"Camila Mariana Ruiz"	71	"Rafael Silva"	19
"Fernando Rodrigo Rafaeli"	68	"Rafael Silva"	19
"Taciana Oliveira Souza"	69	"Rafael Silva"	19
"Jean Ponciano"	69	"Rafael Silva"	19
"Elaine Ribeiro"	67	"Rafael Silva"	19
"Alexsandro Soares"	71	"Rafael Silva"	19
"Pedro Frosi"	70	"Rafael Silva"	19
"Marcia Aparecida Fernandes"	65	"Rafael Silva"	19
"Adriano Mota Loyola"	69	"Rafael Silva"	19
"Alessandra Maia de Castro Prado"	71	"Rafael Silva"	19
"Álex Moreira Herval"	67	"Rafael Silva"	19
"Ana Paula Turrioni Hidalgo"	66	"Rafael Silva"	19
"Ana Paula de Lima Oliveira"	69	"Rafael Silva"	19
"Belchior de Sousa"	68	"Rafael Silva"	19
"Elsieni Coelho da Silva"	63	"Rafael Silva"	19
"Gastao da Cunha Frota"	67	"Rafael Silva"	19
"Nikoleta Tzvetanova Kerinska"	65	"Rafael Silva"	19
"Renato Palumbo Doria"	63	"Rafael Silva"	19
"Adriana Pastorello Buim Arena"	67	"Rafael Silva"	19
"Aldeci Cacique Calixto"	72	"Rafael Silva"	19
"Aléxia Pádua Franco"	69	"Rafael Silva"	19
"Ana Beatriz da Silva Duarte"	62	"Rafael Silva"	19
"Andrea Maturano Longarezi"	72	"Rafael Silva"	19
"Jailson Mendes"	70	"Rafael Silva"	19
"Gabriel Jesus"	68	"Rafael Silva"	19
"Luciano Hulk"	70	"Rafael Silva"	19
"João Guilherme"	70	"Rafael Silva"	19
"Péricles Mendes"	63	"Rafael Silva"	19
"Alcino Eduardo Bonella"	64	"Rafael Silva"	19
"Alexandre Guimarães Tadeu de Soares"	68	"Rafael Silva"	19
"Ana Maria Said"	70	"Rafael Silva"	19
"Anselmo Tadeu Ferreira"	63	"Rafael Silva"	19
"Dennys Garcia Xavier"	70	"Rafael Silva"	19
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Rafael Silva"	19
"Lucas de Assis Ribeiro"	72	"Rafael Silva"	19
"Natália Mundim Tôrres"	72	"Rafael Silva"	19
"Tiago Wilson Patriarca Mineo "	68	"Rafael Silva"	19
"Neide Maria da Silva "	64	"Rafael Silva"	19
"Alexandre Garrido da Silva"	71	"Rafael Silva"	19
"Beatriz Corrêa Camargo"	72	"Rafael Silva"	19
"Daniela de Melo Crosara"	68	"Rafael Silva"	19
"Fernando Rodrigues Martins"	69	"Rafael Silva"	19
"Gustavo de Carvalho Marin"	69	"Rafael Silva"	19
"Ademir Cavalheiro"	64	"Rafael Silva"	19
"Adevailton Bernardo dos Santos"	68	"Rafael Silva"	19
"Alessandra Riposati Arantes"	65	"Rafael Silva"	19
"Djalmir Nestor Messias"	66	"Rafael Silva"	19
"Marcel Novaes"	66	"Rafael Silva"	19
"Alberto da Silva Morais"	70	"Rafael Silva"	19
"Carlos Hernrique Gomes"	65	"Rafael Silva"	19
"Daniela Cristina de Oliveira"	72	"Rafael Silva"	19
"Disney Oliver"	71	"Rafael Silva"	19
"Henrique Tomaz Gonzaga"	68	"Rafael Silva"	19
"Jamil Salem"	66	"Rafael Silva"	19
"Julia Vingadora"	71	"Rafael Silva"	19
"Roberto Carlos"	65	"Rafael Silva"	19
"Cláudio Assembly"	64	"Rafael Silva"	19
"Elaine Java"	63	"Rafael Silva"	19
"Lilian Rodrigues Sant’ Anna Campos"	70	"Rafael Silva"	19
"Clelia Regina Cafer"	66	"Rafael Silva"	19
"Marisa Aparecida Elias"	70	"Rafael Silva"	19
"Barbara Dias Rezende Gontijo"	63	"Rafael Silva"	19
"Tatiana Carneiro de Resende"	63	"Rafael Silva"	19
"Alessandro Gomes Enoque"	70	"Rafael Silva"	19
"Alex Fernando Borges"	68	"Rafael Silva"	19
"Alexandre Alves Alvenha"	70	"Rafael Silva"	19
"Alexandre Cacheffo"	71	"Rafael Silva"	19
"Alexandre Calzavara Yoshida"	72	"Rafael Silva"	19
"Severo Snape"	54	"Rafael Silva"	19
"Gina Maira"	65	"João Marcos Ramos"	21
"Marcelo Keese Albertini"	62	"João Marcos Ramos"	21
"Rivalino Matias Júnior"	69	"João Marcos Ramos"	21
"André Backes"	63	"João Marcos Ramos"	21
"Bruno Augusto Nassif Travençolo"	66	"João Marcos Ramos"	21
"Luiz Gustavo Almeida Martins"	67	"João Marcos Ramos"	21
"Ailton Gonçalves Rodrigues Junior"	69	"João Marcos Ramos"	21
"Ariádine Cristine de Almeida"	71	"João Marcos Ramos"	21
"Giuliano Buzá Jacobucci"	67	"João Marcos Ramos"	21
"Jeamylle Nilin Gonçalves"	70	"João Marcos Ramos"	21
"Cassiano Aimberê Dorneles Welker"	69	"João Marcos Ramos"	21
"Admilson Lopes dos Santos"	72	"João Marcos Ramos"	21
"Adriana Rodrigues da Silva"	68	"João Marcos Ramos"	21
"Camila Mariana Ruiz"	71	"João Marcos Ramos"	21
"Fernando Rodrigo Rafaeli"	68	"João Marcos Ramos"	21
"Taciana Oliveira Souza"	69	"João Marcos Ramos"	21
"Jean Ponciano"	69	"João Marcos Ramos"	21
"Elaine Ribeiro"	67	"João Marcos Ramos"	21
"Alexsandro Soares"	71	"João Marcos Ramos"	21
"Pedro Frosi"	70	"João Marcos Ramos"	21
"Marcia Aparecida Fernandes"	65	"João Marcos Ramos"	21
"Adriano Mota Loyola"	69	"João Marcos Ramos"	21
"Alessandra Maia de Castro Prado"	71	"João Marcos Ramos"	21
"Álex Moreira Herval"	67	"João Marcos Ramos"	21
"Ana Paula Turrioni Hidalgo"	66	"João Marcos Ramos"	21
"Ana Paula de Lima Oliveira"	69	"João Marcos Ramos"	21
"Belchior de Sousa"	68	"João Marcos Ramos"	21
"Elsieni Coelho da Silva"	63	"João Marcos Ramos"	21
"Gastao da Cunha Frota"	67	"João Marcos Ramos"	21
"Nikoleta Tzvetanova Kerinska"	65	"João Marcos Ramos"	21
"Renato Palumbo Doria"	63	"João Marcos Ramos"	21
"Adriana Pastorello Buim Arena"	67	"João Marcos Ramos"	21
"Aldeci Cacique Calixto"	72	"João Marcos Ramos"	21
"Aléxia Pádua Franco"	69	"João Marcos Ramos"	21
"Ana Beatriz da Silva Duarte"	62	"João Marcos Ramos"	21
"Andrea Maturano Longarezi"	72	"João Marcos Ramos"	21
"Jailson Mendes"	70	"João Marcos Ramos"	21
"Gabriel Jesus"	68	"João Marcos Ramos"	21
"Luciano Hulk"	70	"João Marcos Ramos"	21
"João Guilherme"	70	"João Marcos Ramos"	21
"Péricles Mendes"	63	"João Marcos Ramos"	21
"Alcino Eduardo Bonella"	64	"João Marcos Ramos"	21
"Alexandre Guimarães Tadeu de Soares"	68	"João Marcos Ramos"	21
"Ana Maria Said"	70	"João Marcos Ramos"	21
"Anselmo Tadeu Ferreira"	63	"João Marcos Ramos"	21
"Dennys Garcia Xavier"	70	"João Marcos Ramos"	21
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"João Marcos Ramos"	21
"Lucas de Assis Ribeiro"	72	"João Marcos Ramos"	21
"Natália Mundim Tôrres"	72	"João Marcos Ramos"	21
"Tiago Wilson Patriarca Mineo "	68	"João Marcos Ramos"	21
"Neide Maria da Silva "	64	"João Marcos Ramos"	21
"Alexandre Garrido da Silva"	71	"João Marcos Ramos"	21
"Beatriz Corrêa Camargo"	72	"João Marcos Ramos"	21
"Daniela de Melo Crosara"	68	"João Marcos Ramos"	21
"Fernando Rodrigues Martins"	69	"João Marcos Ramos"	21
"Gustavo de Carvalho Marin"	69	"João Marcos Ramos"	21
"Ademir Cavalheiro"	64	"João Marcos Ramos"	21
"Adevailton Bernardo dos Santos"	68	"João Marcos Ramos"	21
"Alessandra Riposati Arantes"	65	"João Marcos Ramos"	21
"Djalmir Nestor Messias"	66	"João Marcos Ramos"	21
"Marcel Novaes"	66	"João Marcos Ramos"	21
"Alberto da Silva Morais"	70	"João Marcos Ramos"	21
"Carlos Hernrique Gomes"	65	"João Marcos Ramos"	21
"Daniela Cristina de Oliveira"	72	"João Marcos Ramos"	21
"Disney Oliver"	71	"João Marcos Ramos"	21
"Henrique Tomaz Gonzaga"	68	"João Marcos Ramos"	21
"Jamil Salem"	66	"João Marcos Ramos"	21
"Julia Vingadora"	71	"João Marcos Ramos"	21
"Roberto Carlos"	65	"João Marcos Ramos"	21
"Cláudio Assembly"	64	"João Marcos Ramos"	21
"Elaine Java"	63	"João Marcos Ramos"	21
"Lilian Rodrigues Sant’ Anna Campos"	70	"João Marcos Ramos"	21
"Clelia Regina Cafer"	66	"João Marcos Ramos"	21
"Marisa Aparecida Elias"	70	"João Marcos Ramos"	21
"Barbara Dias Rezende Gontijo"	63	"João Marcos Ramos"	21
"Tatiana Carneiro de Resende"	63	"João Marcos Ramos"	21
"Alessandro Gomes Enoque"	70	"João Marcos Ramos"	21
"Alex Fernando Borges"	68	"João Marcos Ramos"	21
"Alexandre Alves Alvenha"	70	"João Marcos Ramos"	21
"Alexandre Cacheffo"	71	"João Marcos Ramos"	21
"Alexandre Calzavara Yoshida"	72	"João Marcos Ramos"	21
"Severo Snape"	54	"João Marcos Ramos"	21
"Gina Maira"	65	"Marcos Estefam"	22
"Marcelo Keese Albertini"	62	"Marcos Estefam"	22
"Rivalino Matias Júnior"	69	"Marcos Estefam"	22
"André Backes"	63	"Marcos Estefam"	22
"Bruno Augusto Nassif Travençolo"	66	"Marcos Estefam"	22
"Luiz Gustavo Almeida Martins"	67	"Marcos Estefam"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Marcos Estefam"	22
"Ariádine Cristine de Almeida"	71	"Marcos Estefam"	22
"Giuliano Buzá Jacobucci"	67	"Marcos Estefam"	22
"Jeamylle Nilin Gonçalves"	70	"Marcos Estefam"	22
"Cassiano Aimberê Dorneles Welker"	69	"Marcos Estefam"	22
"Admilson Lopes dos Santos"	72	"Marcos Estefam"	22
"Adriana Rodrigues da Silva"	68	"Marcos Estefam"	22
"Camila Mariana Ruiz"	71	"Marcos Estefam"	22
"Fernando Rodrigo Rafaeli"	68	"Marcos Estefam"	22
"Taciana Oliveira Souza"	69	"Marcos Estefam"	22
"Jean Ponciano"	69	"Marcos Estefam"	22
"Elaine Ribeiro"	67	"Marcos Estefam"	22
"Alexsandro Soares"	71	"Marcos Estefam"	22
"Pedro Frosi"	70	"Marcos Estefam"	22
"Marcia Aparecida Fernandes"	65	"Marcos Estefam"	22
"Adriano Mota Loyola"	69	"Marcos Estefam"	22
"Alessandra Maia de Castro Prado"	71	"Marcos Estefam"	22
"Álex Moreira Herval"	67	"Marcos Estefam"	22
"Ana Paula Turrioni Hidalgo"	66	"Marcos Estefam"	22
"Ana Paula de Lima Oliveira"	69	"Marcos Estefam"	22
"Belchior de Sousa"	68	"Marcos Estefam"	22
"Elsieni Coelho da Silva"	63	"Marcos Estefam"	22
"Gastao da Cunha Frota"	67	"Marcos Estefam"	22
"Nikoleta Tzvetanova Kerinska"	65	"Marcos Estefam"	22
"Renato Palumbo Doria"	63	"Marcos Estefam"	22
"Adriana Pastorello Buim Arena"	67	"Marcos Estefam"	22
"Aldeci Cacique Calixto"	72	"Marcos Estefam"	22
"Aléxia Pádua Franco"	69	"Marcos Estefam"	22
"Ana Beatriz da Silva Duarte"	62	"Marcos Estefam"	22
"Andrea Maturano Longarezi"	72	"Marcos Estefam"	22
"Jailson Mendes"	70	"Marcos Estefam"	22
"Gabriel Jesus"	68	"Marcos Estefam"	22
"Luciano Hulk"	70	"Marcos Estefam"	22
"João Guilherme"	70	"Marcos Estefam"	22
"Péricles Mendes"	63	"Marcos Estefam"	22
"Alcino Eduardo Bonella"	64	"Marcos Estefam"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Marcos Estefam"	22
"Ana Maria Said"	70	"Marcos Estefam"	22
"Anselmo Tadeu Ferreira"	63	"Marcos Estefam"	22
"Dennys Garcia Xavier"	70	"Marcos Estefam"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Marcos Estefam"	22
"Lucas de Assis Ribeiro"	72	"Marcos Estefam"	22
"Natália Mundim Tôrres"	72	"Marcos Estefam"	22
"Tiago Wilson Patriarca Mineo "	68	"Marcos Estefam"	22
"Neide Maria da Silva "	64	"Marcos Estefam"	22
"Alexandre Garrido da Silva"	71	"Marcos Estefam"	22
"Beatriz Corrêa Camargo"	72	"Marcos Estefam"	22
"Daniela de Melo Crosara"	68	"Marcos Estefam"	22
"Fernando Rodrigues Martins"	69	"Marcos Estefam"	22
"Gustavo de Carvalho Marin"	69	"Marcos Estefam"	22
"Ademir Cavalheiro"	64	"Marcos Estefam"	22
"Adevailton Bernardo dos Santos"	68	"Marcos Estefam"	22
"Alessandra Riposati Arantes"	65	"Marcos Estefam"	22
"Djalmir Nestor Messias"	66	"Marcos Estefam"	22
"Marcel Novaes"	66	"Marcos Estefam"	22
"Alberto da Silva Morais"	70	"Marcos Estefam"	22
"Carlos Hernrique Gomes"	65	"Marcos Estefam"	22
"Daniela Cristina de Oliveira"	72	"Marcos Estefam"	22
"Disney Oliver"	71	"Marcos Estefam"	22
"Henrique Tomaz Gonzaga"	68	"Marcos Estefam"	22
"Jamil Salem"	66	"Marcos Estefam"	22
"Julia Vingadora"	71	"Marcos Estefam"	22
"Roberto Carlos"	65	"Marcos Estefam"	22
"Cláudio Assembly"	64	"Marcos Estefam"	22
"Elaine Java"	63	"Marcos Estefam"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Marcos Estefam"	22
"Clelia Regina Cafer"	66	"Marcos Estefam"	22
"Marisa Aparecida Elias"	70	"Marcos Estefam"	22
"Barbara Dias Rezende Gontijo"	63	"Marcos Estefam"	22
"Tatiana Carneiro de Resende"	63	"Marcos Estefam"	22
"Alessandro Gomes Enoque"	70	"Marcos Estefam"	22
"Alex Fernando Borges"	68	"Marcos Estefam"	22
"Alexandre Alves Alvenha"	70	"Marcos Estefam"	22
"Alexandre Cacheffo"	71	"Marcos Estefam"	22
"Alexandre Calzavara Yoshida"	72	"Marcos Estefam"	22
"Severo Snape"	54	"Marcos Estefam"	22
"Gina Maira"	65	"Neil Gaiman"	22
"Marcelo Keese Albertini"	62	"Neil Gaiman"	22
"Rivalino Matias Júnior"	69	"Neil Gaiman"	22
"André Backes"	63	"Neil Gaiman"	22
"Bruno Augusto Nassif Travençolo"	66	"Neil Gaiman"	22
"Luiz Gustavo Almeida Martins"	67	"Neil Gaiman"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Neil Gaiman"	22
"Ariádine Cristine de Almeida"	71	"Neil Gaiman"	22
"Giuliano Buzá Jacobucci"	67	"Neil Gaiman"	22
"Jeamylle Nilin Gonçalves"	70	"Neil Gaiman"	22
"Cassiano Aimberê Dorneles Welker"	69	"Neil Gaiman"	22
"Admilson Lopes dos Santos"	72	"Neil Gaiman"	22
"Adriana Rodrigues da Silva"	68	"Neil Gaiman"	22
"Camila Mariana Ruiz"	71	"Neil Gaiman"	22
"Fernando Rodrigo Rafaeli"	68	"Neil Gaiman"	22
"Taciana Oliveira Souza"	69	"Neil Gaiman"	22
"Jean Ponciano"	69	"Neil Gaiman"	22
"Elaine Ribeiro"	67	"Neil Gaiman"	22
"Alexsandro Soares"	71	"Neil Gaiman"	22
"Pedro Frosi"	70	"Neil Gaiman"	22
"Marcia Aparecida Fernandes"	65	"Neil Gaiman"	22
"Adriano Mota Loyola"	69	"Neil Gaiman"	22
"Alessandra Maia de Castro Prado"	71	"Neil Gaiman"	22
"Álex Moreira Herval"	67	"Neil Gaiman"	22
"Ana Paula Turrioni Hidalgo"	66	"Neil Gaiman"	22
"Ana Paula de Lima Oliveira"	69	"Neil Gaiman"	22
"Belchior de Sousa"	68	"Neil Gaiman"	22
"Elsieni Coelho da Silva"	63	"Neil Gaiman"	22
"Gastao da Cunha Frota"	67	"Neil Gaiman"	22
"Nikoleta Tzvetanova Kerinska"	65	"Neil Gaiman"	22
"Renato Palumbo Doria"	63	"Neil Gaiman"	22
"Adriana Pastorello Buim Arena"	67	"Neil Gaiman"	22
"Aldeci Cacique Calixto"	72	"Neil Gaiman"	22
"Aléxia Pádua Franco"	69	"Neil Gaiman"	22
"Ana Beatriz da Silva Duarte"	62	"Neil Gaiman"	22
"Andrea Maturano Longarezi"	72	"Neil Gaiman"	22
"Jailson Mendes"	70	"Neil Gaiman"	22
"Gabriel Jesus"	68	"Neil Gaiman"	22
"Luciano Hulk"	70	"Neil Gaiman"	22
"João Guilherme"	70	"Neil Gaiman"	22
"Péricles Mendes"	63	"Neil Gaiman"	22
"Alcino Eduardo Bonella"	64	"Neil Gaiman"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Neil Gaiman"	22
"Ana Maria Said"	70	"Neil Gaiman"	22
"Anselmo Tadeu Ferreira"	63	"Neil Gaiman"	22
"Dennys Garcia Xavier"	70	"Neil Gaiman"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Neil Gaiman"	22
"Lucas de Assis Ribeiro"	72	"Neil Gaiman"	22
"Natália Mundim Tôrres"	72	"Neil Gaiman"	22
"Tiago Wilson Patriarca Mineo "	68	"Neil Gaiman"	22
"Neide Maria da Silva "	64	"Neil Gaiman"	22
"Alexandre Garrido da Silva"	71	"Neil Gaiman"	22
"Beatriz Corrêa Camargo"	72	"Neil Gaiman"	22
"Daniela de Melo Crosara"	68	"Neil Gaiman"	22
"Fernando Rodrigues Martins"	69	"Neil Gaiman"	22
"Gustavo de Carvalho Marin"	69	"Neil Gaiman"	22
"Ademir Cavalheiro"	64	"Neil Gaiman"	22
"Adevailton Bernardo dos Santos"	68	"Neil Gaiman"	22
"Alessandra Riposati Arantes"	65	"Neil Gaiman"	22
"Djalmir Nestor Messias"	66	"Neil Gaiman"	22
"Marcel Novaes"	66	"Neil Gaiman"	22
"Alberto da Silva Morais"	70	"Neil Gaiman"	22
"Carlos Hernrique Gomes"	65	"Neil Gaiman"	22
"Daniela Cristina de Oliveira"	72	"Neil Gaiman"	22
"Disney Oliver"	71	"Neil Gaiman"	22
"Henrique Tomaz Gonzaga"	68	"Neil Gaiman"	22
"Jamil Salem"	66	"Neil Gaiman"	22
"Julia Vingadora"	71	"Neil Gaiman"	22
"Roberto Carlos"	65	"Neil Gaiman"	22
"Cláudio Assembly"	64	"Neil Gaiman"	22
"Elaine Java"	63	"Neil Gaiman"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Neil Gaiman"	22
"Clelia Regina Cafer"	66	"Neil Gaiman"	22
"Marisa Aparecida Elias"	70	"Neil Gaiman"	22
"Barbara Dias Rezende Gontijo"	63	"Neil Gaiman"	22
"Tatiana Carneiro de Resende"	63	"Neil Gaiman"	22
"Alessandro Gomes Enoque"	70	"Neil Gaiman"	22
"Alex Fernando Borges"	68	"Neil Gaiman"	22
"Alexandre Alves Alvenha"	70	"Neil Gaiman"	22
"Alexandre Cacheffo"	71	"Neil Gaiman"	22
"Alexandre Calzavara Yoshida"	72	"Neil Gaiman"	22
"Severo Snape"	54	"Neil Gaiman"	22
"Gina Maira"	65	"Robert Louis Stevenson"	23
"Marcelo Keese Albertini"	62	"Robert Louis Stevenson"	23
"Rivalino Matias Júnior"	69	"Robert Louis Stevenson"	23
"André Backes"	63	"Robert Louis Stevenson"	23
"Bruno Augusto Nassif Travençolo"	66	"Robert Louis Stevenson"	23
"Luiz Gustavo Almeida Martins"	67	"Robert Louis Stevenson"	23
"Ailton Gonçalves Rodrigues Junior"	69	"Robert Louis Stevenson"	23
"Ariádine Cristine de Almeida"	71	"Robert Louis Stevenson"	23
"Giuliano Buzá Jacobucci"	67	"Robert Louis Stevenson"	23
"Jeamylle Nilin Gonçalves"	70	"Robert Louis Stevenson"	23
"Cassiano Aimberê Dorneles Welker"	69	"Robert Louis Stevenson"	23
"Admilson Lopes dos Santos"	72	"Robert Louis Stevenson"	23
"Adriana Rodrigues da Silva"	68	"Robert Louis Stevenson"	23
"Camila Mariana Ruiz"	71	"Robert Louis Stevenson"	23
"Fernando Rodrigo Rafaeli"	68	"Robert Louis Stevenson"	23
"Taciana Oliveira Souza"	69	"Robert Louis Stevenson"	23
"Jean Ponciano"	69	"Robert Louis Stevenson"	23
"Elaine Ribeiro"	67	"Robert Louis Stevenson"	23
"Alexsandro Soares"	71	"Robert Louis Stevenson"	23
"Pedro Frosi"	70	"Robert Louis Stevenson"	23
"Marcia Aparecida Fernandes"	65	"Robert Louis Stevenson"	23
"Adriano Mota Loyola"	69	"Robert Louis Stevenson"	23
"Alessandra Maia de Castro Prado"	71	"Robert Louis Stevenson"	23
"Álex Moreira Herval"	67	"Robert Louis Stevenson"	23
"Ana Paula Turrioni Hidalgo"	66	"Robert Louis Stevenson"	23
"Ana Paula de Lima Oliveira"	69	"Robert Louis Stevenson"	23
"Belchior de Sousa"	68	"Robert Louis Stevenson"	23
"Elsieni Coelho da Silva"	63	"Robert Louis Stevenson"	23
"Gastao da Cunha Frota"	67	"Robert Louis Stevenson"	23
"Nikoleta Tzvetanova Kerinska"	65	"Robert Louis Stevenson"	23
"Renato Palumbo Doria"	63	"Robert Louis Stevenson"	23
"Adriana Pastorello Buim Arena"	67	"Robert Louis Stevenson"	23
"Aldeci Cacique Calixto"	72	"Robert Louis Stevenson"	23
"Aléxia Pádua Franco"	69	"Robert Louis Stevenson"	23
"Ana Beatriz da Silva Duarte"	62	"Robert Louis Stevenson"	23
"Andrea Maturano Longarezi"	72	"Robert Louis Stevenson"	23
"Jailson Mendes"	70	"Robert Louis Stevenson"	23
"Gabriel Jesus"	68	"Robert Louis Stevenson"	23
"Luciano Hulk"	70	"Robert Louis Stevenson"	23
"João Guilherme"	70	"Robert Louis Stevenson"	23
"Péricles Mendes"	63	"Robert Louis Stevenson"	23
"Alcino Eduardo Bonella"	64	"Robert Louis Stevenson"	23
"Alexandre Guimarães Tadeu de Soares"	68	"Robert Louis Stevenson"	23
"Ana Maria Said"	70	"Robert Louis Stevenson"	23
"Anselmo Tadeu Ferreira"	63	"Robert Louis Stevenson"	23
"Dennys Garcia Xavier"	70	"Robert Louis Stevenson"	23
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Robert Louis Stevenson"	23
"Lucas de Assis Ribeiro"	72	"Robert Louis Stevenson"	23
"Natália Mundim Tôrres"	72	"Robert Louis Stevenson"	23
"Tiago Wilson Patriarca Mineo "	68	"Robert Louis Stevenson"	23
"Neide Maria da Silva "	64	"Robert Louis Stevenson"	23
"Alexandre Garrido da Silva"	71	"Robert Louis Stevenson"	23
"Beatriz Corrêa Camargo"	72	"Robert Louis Stevenson"	23
"Daniela de Melo Crosara"	68	"Robert Louis Stevenson"	23
"Fernando Rodrigues Martins"	69	"Robert Louis Stevenson"	23
"Gustavo de Carvalho Marin"	69	"Robert Louis Stevenson"	23
"Ademir Cavalheiro"	64	"Robert Louis Stevenson"	23
"Adevailton Bernardo dos Santos"	68	"Robert Louis Stevenson"	23
"Alessandra Riposati Arantes"	65	"Robert Louis Stevenson"	23
"Djalmir Nestor Messias"	66	"Robert Louis Stevenson"	23
"Marcel Novaes"	66	"Robert Louis Stevenson"	23
"Alberto da Silva Morais"	70	"Robert Louis Stevenson"	23
"Carlos Hernrique Gomes"	65	"Robert Louis Stevenson"	23
"Daniela Cristina de Oliveira"	72	"Robert Louis Stevenson"	23
"Disney Oliver"	71	"Robert Louis Stevenson"	23
"Henrique Tomaz Gonzaga"	68	"Robert Louis Stevenson"	23
"Jamil Salem"	66	"Robert Louis Stevenson"	23
"Julia Vingadora"	71	"Robert Louis Stevenson"	23
"Roberto Carlos"	65	"Robert Louis Stevenson"	23
"Cláudio Assembly"	64	"Robert Louis Stevenson"	23
"Elaine Java"	63	"Robert Louis Stevenson"	23
"Lilian Rodrigues Sant’ Anna Campos"	70	"Robert Louis Stevenson"	23
"Clelia Regina Cafer"	66	"Robert Louis Stevenson"	23
"Marisa Aparecida Elias"	70	"Robert Louis Stevenson"	23
"Barbara Dias Rezende Gontijo"	63	"Robert Louis Stevenson"	23
"Tatiana Carneiro de Resende"	63	"Robert Louis Stevenson"	23
"Alessandro Gomes Enoque"	70	"Robert Louis Stevenson"	23
"Alex Fernando Borges"	68	"Robert Louis Stevenson"	23
"Alexandre Alves Alvenha"	70	"Robert Louis Stevenson"	23
"Alexandre Cacheffo"	71	"Robert Louis Stevenson"	23
"Alexandre Calzavara Yoshida"	72	"Robert Louis Stevenson"	23
"Severo Snape"	54	"Robert Louis Stevenson"	23
"Gina Maira"	65	"Anne Rice"	22
"Marcelo Keese Albertini"	62	"Anne Rice"	22
"Rivalino Matias Júnior"	69	"Anne Rice"	22
"André Backes"	63	"Anne Rice"	22
"Bruno Augusto Nassif Travençolo"	66	"Anne Rice"	22
"Luiz Gustavo Almeida Martins"	67	"Anne Rice"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Anne Rice"	22
"Ariádine Cristine de Almeida"	71	"Anne Rice"	22
"Giuliano Buzá Jacobucci"	67	"Anne Rice"	22
"Jeamylle Nilin Gonçalves"	70	"Anne Rice"	22
"Cassiano Aimberê Dorneles Welker"	69	"Anne Rice"	22
"Admilson Lopes dos Santos"	72	"Anne Rice"	22
"Adriana Rodrigues da Silva"	68	"Anne Rice"	22
"Camila Mariana Ruiz"	71	"Anne Rice"	22
"Fernando Rodrigo Rafaeli"	68	"Anne Rice"	22
"Taciana Oliveira Souza"	69	"Anne Rice"	22
"Jean Ponciano"	69	"Anne Rice"	22
"Elaine Ribeiro"	67	"Anne Rice"	22
"Alexsandro Soares"	71	"Anne Rice"	22
"Pedro Frosi"	70	"Anne Rice"	22
"Marcia Aparecida Fernandes"	65	"Anne Rice"	22
"Adriano Mota Loyola"	69	"Anne Rice"	22
"Alessandra Maia de Castro Prado"	71	"Anne Rice"	22
"Álex Moreira Herval"	67	"Anne Rice"	22
"Ana Paula Turrioni Hidalgo"	66	"Anne Rice"	22
"Ana Paula de Lima Oliveira"	69	"Anne Rice"	22
"Belchior de Sousa"	68	"Anne Rice"	22
"Elsieni Coelho da Silva"	63	"Anne Rice"	22
"Gastao da Cunha Frota"	67	"Anne Rice"	22
"Nikoleta Tzvetanova Kerinska"	65	"Anne Rice"	22
"Renato Palumbo Doria"	63	"Anne Rice"	22
"Adriana Pastorello Buim Arena"	67	"Anne Rice"	22
"Aldeci Cacique Calixto"	72	"Anne Rice"	22
"Aléxia Pádua Franco"	69	"Anne Rice"	22
"Ana Beatriz da Silva Duarte"	62	"Anne Rice"	22
"Andrea Maturano Longarezi"	72	"Anne Rice"	22
"Jailson Mendes"	70	"Anne Rice"	22
"Gabriel Jesus"	68	"Anne Rice"	22
"Luciano Hulk"	70	"Anne Rice"	22
"João Guilherme"	70	"Anne Rice"	22
"Péricles Mendes"	63	"Anne Rice"	22
"Alcino Eduardo Bonella"	64	"Anne Rice"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Anne Rice"	22
"Ana Maria Said"	70	"Anne Rice"	22
"Anselmo Tadeu Ferreira"	63	"Anne Rice"	22
"Dennys Garcia Xavier"	70	"Anne Rice"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Anne Rice"	22
"Lucas de Assis Ribeiro"	72	"Anne Rice"	22
"Natália Mundim Tôrres"	72	"Anne Rice"	22
"Tiago Wilson Patriarca Mineo "	68	"Anne Rice"	22
"Neide Maria da Silva "	64	"Anne Rice"	22
"Alexandre Garrido da Silva"	71	"Anne Rice"	22
"Beatriz Corrêa Camargo"	72	"Anne Rice"	22
"Daniela de Melo Crosara"	68	"Anne Rice"	22
"Fernando Rodrigues Martins"	69	"Anne Rice"	22
"Gustavo de Carvalho Marin"	69	"Anne Rice"	22
"Ademir Cavalheiro"	64	"Anne Rice"	22
"Adevailton Bernardo dos Santos"	68	"Anne Rice"	22
"Alessandra Riposati Arantes"	65	"Anne Rice"	22
"Djalmir Nestor Messias"	66	"Anne Rice"	22
"Marcel Novaes"	66	"Anne Rice"	22
"Alberto da Silva Morais"	70	"Anne Rice"	22
"Carlos Hernrique Gomes"	65	"Anne Rice"	22
"Daniela Cristina de Oliveira"	72	"Anne Rice"	22
"Disney Oliver"	71	"Anne Rice"	22
"Henrique Tomaz Gonzaga"	68	"Anne Rice"	22
"Jamil Salem"	66	"Anne Rice"	22
"Julia Vingadora"	71	"Anne Rice"	22
"Roberto Carlos"	65	"Anne Rice"	22
"Cláudio Assembly"	64	"Anne Rice"	22
"Elaine Java"	63	"Anne Rice"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Anne Rice"	22
"Clelia Regina Cafer"	66	"Anne Rice"	22
"Marisa Aparecida Elias"	70	"Anne Rice"	22
"Barbara Dias Rezende Gontijo"	63	"Anne Rice"	22
"Tatiana Carneiro de Resende"	63	"Anne Rice"	22
"Alessandro Gomes Enoque"	70	"Anne Rice"	22
"Alex Fernando Borges"	68	"Anne Rice"	22
"Alexandre Alves Alvenha"	70	"Anne Rice"	22
"Alexandre Cacheffo"	71	"Anne Rice"	22
"Alexandre Calzavara Yoshida"	72	"Anne Rice"	22
"Severo Snape"	54	"Anne Rice"	22
"Gina Maira"	65	"Bram Stocker"	22
"Marcelo Keese Albertini"	62	"Bram Stocker"	22
"Rivalino Matias Júnior"	69	"Bram Stocker"	22
"André Backes"	63	"Bram Stocker"	22
"Bruno Augusto Nassif Travençolo"	66	"Bram Stocker"	22
"Luiz Gustavo Almeida Martins"	67	"Bram Stocker"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Bram Stocker"	22
"Ariádine Cristine de Almeida"	71	"Bram Stocker"	22
"Giuliano Buzá Jacobucci"	67	"Bram Stocker"	22
"Jeamylle Nilin Gonçalves"	70	"Bram Stocker"	22
"Cassiano Aimberê Dorneles Welker"	69	"Bram Stocker"	22
"Admilson Lopes dos Santos"	72	"Bram Stocker"	22
"Adriana Rodrigues da Silva"	68	"Bram Stocker"	22
"Camila Mariana Ruiz"	71	"Bram Stocker"	22
"Fernando Rodrigo Rafaeli"	68	"Bram Stocker"	22
"Taciana Oliveira Souza"	69	"Bram Stocker"	22
"Jean Ponciano"	69	"Bram Stocker"	22
"Elaine Ribeiro"	67	"Bram Stocker"	22
"Alexsandro Soares"	71	"Bram Stocker"	22
"Pedro Frosi"	70	"Bram Stocker"	22
"Marcia Aparecida Fernandes"	65	"Bram Stocker"	22
"Adriano Mota Loyola"	69	"Bram Stocker"	22
"Alessandra Maia de Castro Prado"	71	"Bram Stocker"	22
"Álex Moreira Herval"	67	"Bram Stocker"	22
"Ana Paula Turrioni Hidalgo"	66	"Bram Stocker"	22
"Ana Paula de Lima Oliveira"	69	"Bram Stocker"	22
"Belchior de Sousa"	68	"Bram Stocker"	22
"Elsieni Coelho da Silva"	63	"Bram Stocker"	22
"Gastao da Cunha Frota"	67	"Bram Stocker"	22
"Nikoleta Tzvetanova Kerinska"	65	"Bram Stocker"	22
"Renato Palumbo Doria"	63	"Bram Stocker"	22
"Adriana Pastorello Buim Arena"	67	"Bram Stocker"	22
"Aldeci Cacique Calixto"	72	"Bram Stocker"	22
"Aléxia Pádua Franco"	69	"Bram Stocker"	22
"Ana Beatriz da Silva Duarte"	62	"Bram Stocker"	22
"Andrea Maturano Longarezi"	72	"Bram Stocker"	22
"Jailson Mendes"	70	"Bram Stocker"	22
"Gabriel Jesus"	68	"Bram Stocker"	22
"Luciano Hulk"	70	"Bram Stocker"	22
"João Guilherme"	70	"Bram Stocker"	22
"Péricles Mendes"	63	"Bram Stocker"	22
"Alcino Eduardo Bonella"	64	"Bram Stocker"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Bram Stocker"	22
"Ana Maria Said"	70	"Bram Stocker"	22
"Anselmo Tadeu Ferreira"	63	"Bram Stocker"	22
"Dennys Garcia Xavier"	70	"Bram Stocker"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Bram Stocker"	22
"Lucas de Assis Ribeiro"	72	"Bram Stocker"	22
"Natália Mundim Tôrres"	72	"Bram Stocker"	22
"Tiago Wilson Patriarca Mineo "	68	"Bram Stocker"	22
"Neide Maria da Silva "	64	"Bram Stocker"	22
"Alexandre Garrido da Silva"	71	"Bram Stocker"	22
"Beatriz Corrêa Camargo"	72	"Bram Stocker"	22
"Daniela de Melo Crosara"	68	"Bram Stocker"	22
"Fernando Rodrigues Martins"	69	"Bram Stocker"	22
"Gustavo de Carvalho Marin"	69	"Bram Stocker"	22
"Ademir Cavalheiro"	64	"Bram Stocker"	22
"Adevailton Bernardo dos Santos"	68	"Bram Stocker"	22
"Alessandra Riposati Arantes"	65	"Bram Stocker"	22
"Djalmir Nestor Messias"	66	"Bram Stocker"	22
"Marcel Novaes"	66	"Bram Stocker"	22
"Alberto da Silva Morais"	70	"Bram Stocker"	22
"Carlos Hernrique Gomes"	65	"Bram Stocker"	22
"Daniela Cristina de Oliveira"	72	"Bram Stocker"	22
"Disney Oliver"	71	"Bram Stocker"	22
"Henrique Tomaz Gonzaga"	68	"Bram Stocker"	22
"Jamil Salem"	66	"Bram Stocker"	22
"Julia Vingadora"	71	"Bram Stocker"	22
"Roberto Carlos"	65	"Bram Stocker"	22
"Cláudio Assembly"	64	"Bram Stocker"	22
"Elaine Java"	63	"Bram Stocker"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Bram Stocker"	22
"Clelia Regina Cafer"	66	"Bram Stocker"	22
"Marisa Aparecida Elias"	70	"Bram Stocker"	22
"Barbara Dias Rezende Gontijo"	63	"Bram Stocker"	22
"Tatiana Carneiro de Resende"	63	"Bram Stocker"	22
"Alessandro Gomes Enoque"	70	"Bram Stocker"	22
"Alex Fernando Borges"	68	"Bram Stocker"	22
"Alexandre Alves Alvenha"	70	"Bram Stocker"	22
"Alexandre Cacheffo"	71	"Bram Stocker"	22
"Alexandre Calzavara Yoshida"	72	"Bram Stocker"	22
"Severo Snape"	54	"Bram Stocker"	22
"Gina Maira"	65	"Marry Shelley"	23
"Marcelo Keese Albertini"	62	"Marry Shelley"	23
"Rivalino Matias Júnior"	69	"Marry Shelley"	23
"André Backes"	63	"Marry Shelley"	23
"Bruno Augusto Nassif Travençolo"	66	"Marry Shelley"	23
"Luiz Gustavo Almeida Martins"	67	"Marry Shelley"	23
"Ailton Gonçalves Rodrigues Junior"	69	"Marry Shelley"	23
"Ariádine Cristine de Almeida"	71	"Marry Shelley"	23
"Giuliano Buzá Jacobucci"	67	"Marry Shelley"	23
"Jeamylle Nilin Gonçalves"	70	"Marry Shelley"	23
"Cassiano Aimberê Dorneles Welker"	69	"Marry Shelley"	23
"Admilson Lopes dos Santos"	72	"Marry Shelley"	23
"Adriana Rodrigues da Silva"	68	"Marry Shelley"	23
"Camila Mariana Ruiz"	71	"Marry Shelley"	23
"Fernando Rodrigo Rafaeli"	68	"Marry Shelley"	23
"Taciana Oliveira Souza"	69	"Marry Shelley"	23
"Jean Ponciano"	69	"Marry Shelley"	23
"Elaine Ribeiro"	67	"Marry Shelley"	23
"Alexsandro Soares"	71	"Marry Shelley"	23
"Pedro Frosi"	70	"Marry Shelley"	23
"Marcia Aparecida Fernandes"	65	"Marry Shelley"	23
"Adriano Mota Loyola"	69	"Marry Shelley"	23
"Alessandra Maia de Castro Prado"	71	"Marry Shelley"	23
"Álex Moreira Herval"	67	"Marry Shelley"	23
"Ana Paula Turrioni Hidalgo"	66	"Marry Shelley"	23
"Ana Paula de Lima Oliveira"	69	"Marry Shelley"	23
"Belchior de Sousa"	68	"Marry Shelley"	23
"Elsieni Coelho da Silva"	63	"Marry Shelley"	23
"Gastao da Cunha Frota"	67	"Marry Shelley"	23
"Nikoleta Tzvetanova Kerinska"	65	"Marry Shelley"	23
"Renato Palumbo Doria"	63	"Marry Shelley"	23
"Adriana Pastorello Buim Arena"	67	"Marry Shelley"	23
"Aldeci Cacique Calixto"	72	"Marry Shelley"	23
"Aléxia Pádua Franco"	69	"Marry Shelley"	23
"Ana Beatriz da Silva Duarte"	62	"Marry Shelley"	23
"Andrea Maturano Longarezi"	72	"Marry Shelley"	23
"Jailson Mendes"	70	"Marry Shelley"	23
"Gabriel Jesus"	68	"Marry Shelley"	23
"Luciano Hulk"	70	"Marry Shelley"	23
"João Guilherme"	70	"Marry Shelley"	23
"Péricles Mendes"	63	"Marry Shelley"	23
"Alcino Eduardo Bonella"	64	"Marry Shelley"	23
"Alexandre Guimarães Tadeu de Soares"	68	"Marry Shelley"	23
"Ana Maria Said"	70	"Marry Shelley"	23
"Anselmo Tadeu Ferreira"	63	"Marry Shelley"	23
"Dennys Garcia Xavier"	70	"Marry Shelley"	23
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Marry Shelley"	23
"Lucas de Assis Ribeiro"	72	"Marry Shelley"	23
"Natália Mundim Tôrres"	72	"Marry Shelley"	23
"Tiago Wilson Patriarca Mineo "	68	"Marry Shelley"	23
"Neide Maria da Silva "	64	"Marry Shelley"	23
"Alexandre Garrido da Silva"	71	"Marry Shelley"	23
"Beatriz Corrêa Camargo"	72	"Marry Shelley"	23
"Daniela de Melo Crosara"	68	"Marry Shelley"	23
"Fernando Rodrigues Martins"	69	"Marry Shelley"	23
"Gustavo de Carvalho Marin"	69	"Marry Shelley"	23
"Ademir Cavalheiro"	64	"Marry Shelley"	23
"Adevailton Bernardo dos Santos"	68	"Marry Shelley"	23
"Alessandra Riposati Arantes"	65	"Marry Shelley"	23
"Djalmir Nestor Messias"	66	"Marry Shelley"	23
"Marcel Novaes"	66	"Marry Shelley"	23
"Alberto da Silva Morais"	70	"Marry Shelley"	23
"Carlos Hernrique Gomes"	65	"Marry Shelley"	23
"Daniela Cristina de Oliveira"	72	"Marry Shelley"	23
"Disney Oliver"	71	"Marry Shelley"	23
"Henrique Tomaz Gonzaga"	68	"Marry Shelley"	23
"Jamil Salem"	66	"Marry Shelley"	23
"Julia Vingadora"	71	"Marry Shelley"	23
"Roberto Carlos"	65	"Marry Shelley"	23
"Cláudio Assembly"	64	"Marry Shelley"	23
"Elaine Java"	63	"Marry Shelley"	23
"Lilian Rodrigues Sant’ Anna Campos"	70	"Marry Shelley"	23
"Clelia Regina Cafer"	66	"Marry Shelley"	23
"Marisa Aparecida Elias"	70	"Marry Shelley"	23
"Barbara Dias Rezende Gontijo"	63	"Marry Shelley"	23
"Tatiana Carneiro de Resende"	63	"Marry Shelley"	23
"Alessandro Gomes Enoque"	70	"Marry Shelley"	23
"Alex Fernando Borges"	68	"Marry Shelley"	23
"Alexandre Alves Alvenha"	70	"Marry Shelley"	23
"Alexandre Cacheffo"	71	"Marry Shelley"	23
"Alexandre Calzavara Yoshida"	72	"Marry Shelley"	23
"Severo Snape"	54	"Marry Shelley"	23
"Gina Maira"	65	"Peter Benjamin Parker"	29
"Marcelo Keese Albertini"	62	"Peter Benjamin Parker"	29
"Rivalino Matias Júnior"	69	"Peter Benjamin Parker"	29
"André Backes"	63	"Peter Benjamin Parker"	29
"Bruno Augusto Nassif Travençolo"	66	"Peter Benjamin Parker"	29
"Luiz Gustavo Almeida Martins"	67	"Peter Benjamin Parker"	29
"Ailton Gonçalves Rodrigues Junior"	69	"Peter Benjamin Parker"	29
"Ariádine Cristine de Almeida"	71	"Peter Benjamin Parker"	29
"Giuliano Buzá Jacobucci"	67	"Peter Benjamin Parker"	29
"Jeamylle Nilin Gonçalves"	70	"Peter Benjamin Parker"	29
"Cassiano Aimberê Dorneles Welker"	69	"Peter Benjamin Parker"	29
"Admilson Lopes dos Santos"	72	"Peter Benjamin Parker"	29
"Adriana Rodrigues da Silva"	68	"Peter Benjamin Parker"	29
"Camila Mariana Ruiz"	71	"Peter Benjamin Parker"	29
"Fernando Rodrigo Rafaeli"	68	"Peter Benjamin Parker"	29
"Taciana Oliveira Souza"	69	"Peter Benjamin Parker"	29
"Jean Ponciano"	69	"Peter Benjamin Parker"	29
"Elaine Ribeiro"	67	"Peter Benjamin Parker"	29
"Alexsandro Soares"	71	"Peter Benjamin Parker"	29
"Pedro Frosi"	70	"Peter Benjamin Parker"	29
"Marcia Aparecida Fernandes"	65	"Peter Benjamin Parker"	29
"Adriano Mota Loyola"	69	"Peter Benjamin Parker"	29
"Alessandra Maia de Castro Prado"	71	"Peter Benjamin Parker"	29
"Álex Moreira Herval"	67	"Peter Benjamin Parker"	29
"Ana Paula Turrioni Hidalgo"	66	"Peter Benjamin Parker"	29
"Ana Paula de Lima Oliveira"	69	"Peter Benjamin Parker"	29
"Belchior de Sousa"	68	"Peter Benjamin Parker"	29
"Elsieni Coelho da Silva"	63	"Peter Benjamin Parker"	29
"Gastao da Cunha Frota"	67	"Peter Benjamin Parker"	29
"Nikoleta Tzvetanova Kerinska"	65	"Peter Benjamin Parker"	29
"Renato Palumbo Doria"	63	"Peter Benjamin Parker"	29
"Adriana Pastorello Buim Arena"	67	"Peter Benjamin Parker"	29
"Aldeci Cacique Calixto"	72	"Peter Benjamin Parker"	29
"Aléxia Pádua Franco"	69	"Peter Benjamin Parker"	29
"Ana Beatriz da Silva Duarte"	62	"Peter Benjamin Parker"	29
"Andrea Maturano Longarezi"	72	"Peter Benjamin Parker"	29
"Jailson Mendes"	70	"Peter Benjamin Parker"	29
"Gabriel Jesus"	68	"Peter Benjamin Parker"	29
"Luciano Hulk"	70	"Peter Benjamin Parker"	29
"João Guilherme"	70	"Peter Benjamin Parker"	29
"Péricles Mendes"	63	"Peter Benjamin Parker"	29
"Alcino Eduardo Bonella"	64	"Peter Benjamin Parker"	29
"Alexandre Guimarães Tadeu de Soares"	68	"Peter Benjamin Parker"	29
"Ana Maria Said"	70	"Peter Benjamin Parker"	29
"Anselmo Tadeu Ferreira"	63	"Peter Benjamin Parker"	29
"Dennys Garcia Xavier"	70	"Peter Benjamin Parker"	29
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Peter Benjamin Parker"	29
"Lucas de Assis Ribeiro"	72	"Peter Benjamin Parker"	29
"Natália Mundim Tôrres"	72	"Peter Benjamin Parker"	29
"Tiago Wilson Patriarca Mineo "	68	"Peter Benjamin Parker"	29
"Neide Maria da Silva "	64	"Peter Benjamin Parker"	29
"Alexandre Garrido da Silva"	71	"Peter Benjamin Parker"	29
"Beatriz Corrêa Camargo"	72	"Peter Benjamin Parker"	29
"Daniela de Melo Crosara"	68	"Peter Benjamin Parker"	29
"Fernando Rodrigues Martins"	69	"Peter Benjamin Parker"	29
"Gustavo de Carvalho Marin"	69	"Peter Benjamin Parker"	29
"Ademir Cavalheiro"	64	"Peter Benjamin Parker"	29
"Adevailton Bernardo dos Santos"	68	"Peter Benjamin Parker"	29
"Alessandra Riposati Arantes"	65	"Peter Benjamin Parker"	29
"Djalmir Nestor Messias"	66	"Peter Benjamin Parker"	29
"Marcel Novaes"	66	"Peter Benjamin Parker"	29
"Alberto da Silva Morais"	70	"Peter Benjamin Parker"	29
"Carlos Hernrique Gomes"	65	"Peter Benjamin Parker"	29
"Daniela Cristina de Oliveira"	72	"Peter Benjamin Parker"	29
"Disney Oliver"	71	"Peter Benjamin Parker"	29
"Henrique Tomaz Gonzaga"	68	"Peter Benjamin Parker"	29
"Jamil Salem"	66	"Peter Benjamin Parker"	29
"Julia Vingadora"	71	"Peter Benjamin Parker"	29
"Roberto Carlos"	65	"Peter Benjamin Parker"	29
"Cláudio Assembly"	64	"Peter Benjamin Parker"	29
"Elaine Java"	63	"Peter Benjamin Parker"	29
"Lilian Rodrigues Sant’ Anna Campos"	70	"Peter Benjamin Parker"	29
"Clelia Regina Cafer"	66	"Peter Benjamin Parker"	29
"Marisa Aparecida Elias"	70	"Peter Benjamin Parker"	29
"Barbara Dias Rezende Gontijo"	63	"Peter Benjamin Parker"	29
"Tatiana Carneiro de Resende"	63	"Peter Benjamin Parker"	29
"Alessandro Gomes Enoque"	70	"Peter Benjamin Parker"	29
"Alex Fernando Borges"	68	"Peter Benjamin Parker"	29
"Alexandre Alves Alvenha"	70	"Peter Benjamin Parker"	29
"Alexandre Cacheffo"	71	"Peter Benjamin Parker"	29
"Alexandre Calzavara Yoshida"	72	"Peter Benjamin Parker"	29
"Severo Snape"	54	"Peter Benjamin Parker"	29
"Gina Maira"	65	"Peter Kavinsky"	19
"Marcelo Keese Albertini"	62	"Peter Kavinsky"	19
"Rivalino Matias Júnior"	69	"Peter Kavinsky"	19
"André Backes"	63	"Peter Kavinsky"	19
"Bruno Augusto Nassif Travençolo"	66	"Peter Kavinsky"	19
"Luiz Gustavo Almeida Martins"	67	"Peter Kavinsky"	19
"Ailton Gonçalves Rodrigues Junior"	69	"Peter Kavinsky"	19
"Ariádine Cristine de Almeida"	71	"Peter Kavinsky"	19
"Giuliano Buzá Jacobucci"	67	"Peter Kavinsky"	19
"Jeamylle Nilin Gonçalves"	70	"Peter Kavinsky"	19
"Cassiano Aimberê Dorneles Welker"	69	"Peter Kavinsky"	19
"Admilson Lopes dos Santos"	72	"Peter Kavinsky"	19
"Adriana Rodrigues da Silva"	68	"Peter Kavinsky"	19
"Camila Mariana Ruiz"	71	"Peter Kavinsky"	19
"Fernando Rodrigo Rafaeli"	68	"Peter Kavinsky"	19
"Taciana Oliveira Souza"	69	"Peter Kavinsky"	19
"Jean Ponciano"	69	"Peter Kavinsky"	19
"Elaine Ribeiro"	67	"Peter Kavinsky"	19
"Alexsandro Soares"	71	"Peter Kavinsky"	19
"Pedro Frosi"	70	"Peter Kavinsky"	19
"Marcia Aparecida Fernandes"	65	"Peter Kavinsky"	19
"Adriano Mota Loyola"	69	"Peter Kavinsky"	19
"Alessandra Maia de Castro Prado"	71	"Peter Kavinsky"	19
"Álex Moreira Herval"	67	"Peter Kavinsky"	19
"Ana Paula Turrioni Hidalgo"	66	"Peter Kavinsky"	19
"Ana Paula de Lima Oliveira"	69	"Peter Kavinsky"	19
"Belchior de Sousa"	68	"Peter Kavinsky"	19
"Elsieni Coelho da Silva"	63	"Peter Kavinsky"	19
"Gastao da Cunha Frota"	67	"Peter Kavinsky"	19
"Nikoleta Tzvetanova Kerinska"	65	"Peter Kavinsky"	19
"Renato Palumbo Doria"	63	"Peter Kavinsky"	19
"Adriana Pastorello Buim Arena"	67	"Peter Kavinsky"	19
"Aldeci Cacique Calixto"	72	"Peter Kavinsky"	19
"Aléxia Pádua Franco"	69	"Peter Kavinsky"	19
"Ana Beatriz da Silva Duarte"	62	"Peter Kavinsky"	19
"Andrea Maturano Longarezi"	72	"Peter Kavinsky"	19
"Jailson Mendes"	70	"Peter Kavinsky"	19
"Gabriel Jesus"	68	"Peter Kavinsky"	19
"Luciano Hulk"	70	"Peter Kavinsky"	19
"João Guilherme"	70	"Peter Kavinsky"	19
"Péricles Mendes"	63	"Peter Kavinsky"	19
"Alcino Eduardo Bonella"	64	"Peter Kavinsky"	19
"Alexandre Guimarães Tadeu de Soares"	68	"Peter Kavinsky"	19
"Ana Maria Said"	70	"Peter Kavinsky"	19
"Anselmo Tadeu Ferreira"	63	"Peter Kavinsky"	19
"Dennys Garcia Xavier"	70	"Peter Kavinsky"	19
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Peter Kavinsky"	19
"Lucas de Assis Ribeiro"	72	"Peter Kavinsky"	19
"Natália Mundim Tôrres"	72	"Peter Kavinsky"	19
"Tiago Wilson Patriarca Mineo "	68	"Peter Kavinsky"	19
"Neide Maria da Silva "	64	"Peter Kavinsky"	19
"Alexandre Garrido da Silva"	71	"Peter Kavinsky"	19
"Beatriz Corrêa Camargo"	72	"Peter Kavinsky"	19
"Daniela de Melo Crosara"	68	"Peter Kavinsky"	19
"Fernando Rodrigues Martins"	69	"Peter Kavinsky"	19
"Gustavo de Carvalho Marin"	69	"Peter Kavinsky"	19
"Ademir Cavalheiro"	64	"Peter Kavinsky"	19
"Adevailton Bernardo dos Santos"	68	"Peter Kavinsky"	19
"Alessandra Riposati Arantes"	65	"Peter Kavinsky"	19
"Djalmir Nestor Messias"	66	"Peter Kavinsky"	19
"Marcel Novaes"	66	"Peter Kavinsky"	19
"Alberto da Silva Morais"	70	"Peter Kavinsky"	19
"Carlos Hernrique Gomes"	65	"Peter Kavinsky"	19
"Daniela Cristina de Oliveira"	72	"Peter Kavinsky"	19
"Disney Oliver"	71	"Peter Kavinsky"	19
"Henrique Tomaz Gonzaga"	68	"Peter Kavinsky"	19
"Jamil Salem"	66	"Peter Kavinsky"	19
"Julia Vingadora"	71	"Peter Kavinsky"	19
"Roberto Carlos"	65	"Peter Kavinsky"	19
"Cláudio Assembly"	64	"Peter Kavinsky"	19
"Elaine Java"	63	"Peter Kavinsky"	19
"Lilian Rodrigues Sant’ Anna Campos"	70	"Peter Kavinsky"	19
"Clelia Regina Cafer"	66	"Peter Kavinsky"	19
"Marisa Aparecida Elias"	70	"Peter Kavinsky"	19
"Barbara Dias Rezende Gontijo"	63	"Peter Kavinsky"	19
"Tatiana Carneiro de Resende"	63	"Peter Kavinsky"	19
"Alessandro Gomes Enoque"	70	"Peter Kavinsky"	19
"Alex Fernando Borges"	68	"Peter Kavinsky"	19
"Alexandre Alves Alvenha"	70	"Peter Kavinsky"	19
"Alexandre Cacheffo"	71	"Peter Kavinsky"	19
"Alexandre Calzavara Yoshida"	72	"Peter Kavinsky"	19
"Severo Snape"	54	"Peter Kavinsky"	19
"Gina Maira"	65	"Lara Jean"	20
"Marcelo Keese Albertini"	62	"Lara Jean"	20
"Rivalino Matias Júnior"	69	"Lara Jean"	20
"André Backes"	63	"Lara Jean"	20
"Bruno Augusto Nassif Travençolo"	66	"Lara Jean"	20
"Luiz Gustavo Almeida Martins"	67	"Lara Jean"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Lara Jean"	20
"Ariádine Cristine de Almeida"	71	"Lara Jean"	20
"Giuliano Buzá Jacobucci"	67	"Lara Jean"	20
"Jeamylle Nilin Gonçalves"	70	"Lara Jean"	20
"Cassiano Aimberê Dorneles Welker"	69	"Lara Jean"	20
"Admilson Lopes dos Santos"	72	"Lara Jean"	20
"Adriana Rodrigues da Silva"	68	"Lara Jean"	20
"Camila Mariana Ruiz"	71	"Lara Jean"	20
"Fernando Rodrigo Rafaeli"	68	"Lara Jean"	20
"Taciana Oliveira Souza"	69	"Lara Jean"	20
"Jean Ponciano"	69	"Lara Jean"	20
"Elaine Ribeiro"	67	"Lara Jean"	20
"Alexsandro Soares"	71	"Lara Jean"	20
"Pedro Frosi"	70	"Lara Jean"	20
"Marcia Aparecida Fernandes"	65	"Lara Jean"	20
"Adriano Mota Loyola"	69	"Lara Jean"	20
"Alessandra Maia de Castro Prado"	71	"Lara Jean"	20
"Álex Moreira Herval"	67	"Lara Jean"	20
"Ana Paula Turrioni Hidalgo"	66	"Lara Jean"	20
"Ana Paula de Lima Oliveira"	69	"Lara Jean"	20
"Belchior de Sousa"	68	"Lara Jean"	20
"Elsieni Coelho da Silva"	63	"Lara Jean"	20
"Gastao da Cunha Frota"	67	"Lara Jean"	20
"Nikoleta Tzvetanova Kerinska"	65	"Lara Jean"	20
"Renato Palumbo Doria"	63	"Lara Jean"	20
"Adriana Pastorello Buim Arena"	67	"Lara Jean"	20
"Aldeci Cacique Calixto"	72	"Lara Jean"	20
"Aléxia Pádua Franco"	69	"Lara Jean"	20
"Ana Beatriz da Silva Duarte"	62	"Lara Jean"	20
"Andrea Maturano Longarezi"	72	"Lara Jean"	20
"Jailson Mendes"	70	"Lara Jean"	20
"Gabriel Jesus"	68	"Lara Jean"	20
"Luciano Hulk"	70	"Lara Jean"	20
"João Guilherme"	70	"Lara Jean"	20
"Péricles Mendes"	63	"Lara Jean"	20
"Alcino Eduardo Bonella"	64	"Lara Jean"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Lara Jean"	20
"Ana Maria Said"	70	"Lara Jean"	20
"Anselmo Tadeu Ferreira"	63	"Lara Jean"	20
"Dennys Garcia Xavier"	70	"Lara Jean"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Lara Jean"	20
"Lucas de Assis Ribeiro"	72	"Lara Jean"	20
"Natália Mundim Tôrres"	72	"Lara Jean"	20
"Tiago Wilson Patriarca Mineo "	68	"Lara Jean"	20
"Neide Maria da Silva "	64	"Lara Jean"	20
"Alexandre Garrido da Silva"	71	"Lara Jean"	20
"Beatriz Corrêa Camargo"	72	"Lara Jean"	20
"Daniela de Melo Crosara"	68	"Lara Jean"	20
"Fernando Rodrigues Martins"	69	"Lara Jean"	20
"Gustavo de Carvalho Marin"	69	"Lara Jean"	20
"Ademir Cavalheiro"	64	"Lara Jean"	20
"Adevailton Bernardo dos Santos"	68	"Lara Jean"	20
"Alessandra Riposati Arantes"	65	"Lara Jean"	20
"Djalmir Nestor Messias"	66	"Lara Jean"	20
"Marcel Novaes"	66	"Lara Jean"	20
"Alberto da Silva Morais"	70	"Lara Jean"	20
"Carlos Hernrique Gomes"	65	"Lara Jean"	20
"Daniela Cristina de Oliveira"	72	"Lara Jean"	20
"Disney Oliver"	71	"Lara Jean"	20
"Henrique Tomaz Gonzaga"	68	"Lara Jean"	20
"Jamil Salem"	66	"Lara Jean"	20
"Julia Vingadora"	71	"Lara Jean"	20
"Roberto Carlos"	65	"Lara Jean"	20
"Cláudio Assembly"	64	"Lara Jean"	20
"Elaine Java"	63	"Lara Jean"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Lara Jean"	20
"Clelia Regina Cafer"	66	"Lara Jean"	20
"Marisa Aparecida Elias"	70	"Lara Jean"	20
"Barbara Dias Rezende Gontijo"	63	"Lara Jean"	20
"Tatiana Carneiro de Resende"	63	"Lara Jean"	20
"Alessandro Gomes Enoque"	70	"Lara Jean"	20
"Alex Fernando Borges"	68	"Lara Jean"	20
"Alexandre Alves Alvenha"	70	"Lara Jean"	20
"Alexandre Cacheffo"	71	"Lara Jean"	20
"Alexandre Calzavara Yoshida"	72	"Lara Jean"	20
"Severo Snape"	54	"Lara Jean"	20
"Gina Maira"	65	"Percy Jackson"	29
"Marcelo Keese Albertini"	62	"Percy Jackson"	29
"Rivalino Matias Júnior"	69	"Percy Jackson"	29
"André Backes"	63	"Percy Jackson"	29
"Bruno Augusto Nassif Travençolo"	66	"Percy Jackson"	29
"Luiz Gustavo Almeida Martins"	67	"Percy Jackson"	29
"Ailton Gonçalves Rodrigues Junior"	69	"Percy Jackson"	29
"Ariádine Cristine de Almeida"	71	"Percy Jackson"	29
"Giuliano Buzá Jacobucci"	67	"Percy Jackson"	29
"Jeamylle Nilin Gonçalves"	70	"Percy Jackson"	29
"Cassiano Aimberê Dorneles Welker"	69	"Percy Jackson"	29
"Admilson Lopes dos Santos"	72	"Percy Jackson"	29
"Adriana Rodrigues da Silva"	68	"Percy Jackson"	29
"Camila Mariana Ruiz"	71	"Percy Jackson"	29
"Fernando Rodrigo Rafaeli"	68	"Percy Jackson"	29
"Taciana Oliveira Souza"	69	"Percy Jackson"	29
"Jean Ponciano"	69	"Percy Jackson"	29
"Elaine Ribeiro"	67	"Percy Jackson"	29
"Alexsandro Soares"	71	"Percy Jackson"	29
"Pedro Frosi"	70	"Percy Jackson"	29
"Marcia Aparecida Fernandes"	65	"Percy Jackson"	29
"Adriano Mota Loyola"	69	"Percy Jackson"	29
"Alessandra Maia de Castro Prado"	71	"Percy Jackson"	29
"Álex Moreira Herval"	67	"Percy Jackson"	29
"Ana Paula Turrioni Hidalgo"	66	"Percy Jackson"	29
"Ana Paula de Lima Oliveira"	69	"Percy Jackson"	29
"Belchior de Sousa"	68	"Percy Jackson"	29
"Elsieni Coelho da Silva"	63	"Percy Jackson"	29
"Gastao da Cunha Frota"	67	"Percy Jackson"	29
"Nikoleta Tzvetanova Kerinska"	65	"Percy Jackson"	29
"Renato Palumbo Doria"	63	"Percy Jackson"	29
"Adriana Pastorello Buim Arena"	67	"Percy Jackson"	29
"Aldeci Cacique Calixto"	72	"Percy Jackson"	29
"Aléxia Pádua Franco"	69	"Percy Jackson"	29
"Ana Beatriz da Silva Duarte"	62	"Percy Jackson"	29
"Andrea Maturano Longarezi"	72	"Percy Jackson"	29
"Jailson Mendes"	70	"Percy Jackson"	29
"Gabriel Jesus"	68	"Percy Jackson"	29
"Luciano Hulk"	70	"Percy Jackson"	29
"João Guilherme"	70	"Percy Jackson"	29
"Péricles Mendes"	63	"Percy Jackson"	29
"Alcino Eduardo Bonella"	64	"Percy Jackson"	29
"Alexandre Guimarães Tadeu de Soares"	68	"Percy Jackson"	29
"Ana Maria Said"	70	"Percy Jackson"	29
"Anselmo Tadeu Ferreira"	63	"Percy Jackson"	29
"Dennys Garcia Xavier"	70	"Percy Jackson"	29
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Percy Jackson"	29
"Lucas de Assis Ribeiro"	72	"Percy Jackson"	29
"Natália Mundim Tôrres"	72	"Percy Jackson"	29
"Tiago Wilson Patriarca Mineo "	68	"Percy Jackson"	29
"Neide Maria da Silva "	64	"Percy Jackson"	29
"Alexandre Garrido da Silva"	71	"Percy Jackson"	29
"Beatriz Corrêa Camargo"	72	"Percy Jackson"	29
"Daniela de Melo Crosara"	68	"Percy Jackson"	29
"Fernando Rodrigues Martins"	69	"Percy Jackson"	29
"Gustavo de Carvalho Marin"	69	"Percy Jackson"	29
"Ademir Cavalheiro"	64	"Percy Jackson"	29
"Adevailton Bernardo dos Santos"	68	"Percy Jackson"	29
"Alessandra Riposati Arantes"	65	"Percy Jackson"	29
"Djalmir Nestor Messias"	66	"Percy Jackson"	29
"Marcel Novaes"	66	"Percy Jackson"	29
"Alberto da Silva Morais"	70	"Percy Jackson"	29
"Carlos Hernrique Gomes"	65	"Percy Jackson"	29
"Daniela Cristina de Oliveira"	72	"Percy Jackson"	29
"Disney Oliver"	71	"Percy Jackson"	29
"Henrique Tomaz Gonzaga"	68	"Percy Jackson"	29
"Jamil Salem"	66	"Percy Jackson"	29
"Julia Vingadora"	71	"Percy Jackson"	29
"Roberto Carlos"	65	"Percy Jackson"	29
"Cláudio Assembly"	64	"Percy Jackson"	29
"Elaine Java"	63	"Percy Jackson"	29
"Lilian Rodrigues Sant’ Anna Campos"	70	"Percy Jackson"	29
"Clelia Regina Cafer"	66	"Percy Jackson"	29
"Marisa Aparecida Elias"	70	"Percy Jackson"	29
"Barbara Dias Rezende Gontijo"	63	"Percy Jackson"	29
"Tatiana Carneiro de Resende"	63	"Percy Jackson"	29
"Alessandro Gomes Enoque"	70	"Percy Jackson"	29
"Alex Fernando Borges"	68	"Percy Jackson"	29
"Alexandre Alves Alvenha"	70	"Percy Jackson"	29
"Alexandre Cacheffo"	71	"Percy Jackson"	29
"Alexandre Calzavara Yoshida"	72	"Percy Jackson"	29
"Severo Snape"	54	"Percy Jackson"	29
"Gina Maira"	65	"Veronica Lodge"	28
"Marcelo Keese Albertini"	62	"Veronica Lodge"	28
"Rivalino Matias Júnior"	69	"Veronica Lodge"	28
"André Backes"	63	"Veronica Lodge"	28
"Bruno Augusto Nassif Travençolo"	66	"Veronica Lodge"	28
"Luiz Gustavo Almeida Martins"	67	"Veronica Lodge"	28
"Ailton Gonçalves Rodrigues Junior"	69	"Veronica Lodge"	28
"Ariádine Cristine de Almeida"	71	"Veronica Lodge"	28
"Giuliano Buzá Jacobucci"	67	"Veronica Lodge"	28
"Jeamylle Nilin Gonçalves"	70	"Veronica Lodge"	28
"Cassiano Aimberê Dorneles Welker"	69	"Veronica Lodge"	28
"Admilson Lopes dos Santos"	72	"Veronica Lodge"	28
"Adriana Rodrigues da Silva"	68	"Veronica Lodge"	28
"Camila Mariana Ruiz"	71	"Veronica Lodge"	28
"Fernando Rodrigo Rafaeli"	68	"Veronica Lodge"	28
"Taciana Oliveira Souza"	69	"Veronica Lodge"	28
"Jean Ponciano"	69	"Veronica Lodge"	28
"Elaine Ribeiro"	67	"Veronica Lodge"	28
"Alexsandro Soares"	71	"Veronica Lodge"	28
"Pedro Frosi"	70	"Veronica Lodge"	28
"Marcia Aparecida Fernandes"	65	"Veronica Lodge"	28
"Adriano Mota Loyola"	69	"Veronica Lodge"	28
"Alessandra Maia de Castro Prado"	71	"Veronica Lodge"	28
"Álex Moreira Herval"	67	"Veronica Lodge"	28
"Ana Paula Turrioni Hidalgo"	66	"Veronica Lodge"	28
"Ana Paula de Lima Oliveira"	69	"Veronica Lodge"	28
"Belchior de Sousa"	68	"Veronica Lodge"	28
"Elsieni Coelho da Silva"	63	"Veronica Lodge"	28
"Gastao da Cunha Frota"	67	"Veronica Lodge"	28
"Nikoleta Tzvetanova Kerinska"	65	"Veronica Lodge"	28
"Renato Palumbo Doria"	63	"Veronica Lodge"	28
"Adriana Pastorello Buim Arena"	67	"Veronica Lodge"	28
"Aldeci Cacique Calixto"	72	"Veronica Lodge"	28
"Aléxia Pádua Franco"	69	"Veronica Lodge"	28
"Ana Beatriz da Silva Duarte"	62	"Veronica Lodge"	28
"Andrea Maturano Longarezi"	72	"Veronica Lodge"	28
"Jailson Mendes"	70	"Veronica Lodge"	28
"Gabriel Jesus"	68	"Veronica Lodge"	28
"Luciano Hulk"	70	"Veronica Lodge"	28
"João Guilherme"	70	"Veronica Lodge"	28
"Péricles Mendes"	63	"Veronica Lodge"	28
"Alcino Eduardo Bonella"	64	"Veronica Lodge"	28
"Alexandre Guimarães Tadeu de Soares"	68	"Veronica Lodge"	28
"Ana Maria Said"	70	"Veronica Lodge"	28
"Anselmo Tadeu Ferreira"	63	"Veronica Lodge"	28
"Dennys Garcia Xavier"	70	"Veronica Lodge"	28
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Veronica Lodge"	28
"Lucas de Assis Ribeiro"	72	"Veronica Lodge"	28
"Natália Mundim Tôrres"	72	"Veronica Lodge"	28
"Tiago Wilson Patriarca Mineo "	68	"Veronica Lodge"	28
"Neide Maria da Silva "	64	"Veronica Lodge"	28
"Alexandre Garrido da Silva"	71	"Veronica Lodge"	28
"Beatriz Corrêa Camargo"	72	"Veronica Lodge"	28
"Daniela de Melo Crosara"	68	"Veronica Lodge"	28
"Fernando Rodrigues Martins"	69	"Veronica Lodge"	28
"Gustavo de Carvalho Marin"	69	"Veronica Lodge"	28
"Ademir Cavalheiro"	64	"Veronica Lodge"	28
"Adevailton Bernardo dos Santos"	68	"Veronica Lodge"	28
"Alessandra Riposati Arantes"	65	"Veronica Lodge"	28
"Djalmir Nestor Messias"	66	"Veronica Lodge"	28
"Marcel Novaes"	66	"Veronica Lodge"	28
"Alberto da Silva Morais"	70	"Veronica Lodge"	28
"Carlos Hernrique Gomes"	65	"Veronica Lodge"	28
"Daniela Cristina de Oliveira"	72	"Veronica Lodge"	28
"Disney Oliver"	71	"Veronica Lodge"	28
"Henrique Tomaz Gonzaga"	68	"Veronica Lodge"	28
"Jamil Salem"	66	"Veronica Lodge"	28
"Julia Vingadora"	71	"Veronica Lodge"	28
"Roberto Carlos"	65	"Veronica Lodge"	28
"Cláudio Assembly"	64	"Veronica Lodge"	28
"Elaine Java"	63	"Veronica Lodge"	28
"Lilian Rodrigues Sant’ Anna Campos"	70	"Veronica Lodge"	28
"Clelia Regina Cafer"	66	"Veronica Lodge"	28
"Marisa Aparecida Elias"	70	"Veronica Lodge"	28
"Barbara Dias Rezende Gontijo"	63	"Veronica Lodge"	28
"Tatiana Carneiro de Resende"	63	"Veronica Lodge"	28
"Alessandro Gomes Enoque"	70	"Veronica Lodge"	28
"Alex Fernando Borges"	68	"Veronica Lodge"	28
"Alexandre Alves Alvenha"	70	"Veronica Lodge"	28
"Alexandre Cacheffo"	71	"Veronica Lodge"	28
"Alexandre Calzavara Yoshida"	72	"Veronica Lodge"	28
"Severo Snape"	54	"Veronica Lodge"	28
"Gina Maira"	65	"Annelise Salem"	20
"Marcelo Keese Albertini"	62	"Annelise Salem"	20
"Rivalino Matias Júnior"	69	"Annelise Salem"	20
"André Backes"	63	"Annelise Salem"	20
"Bruno Augusto Nassif Travençolo"	66	"Annelise Salem"	20
"Luiz Gustavo Almeida Martins"	67	"Annelise Salem"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Annelise Salem"	20
"Ariádine Cristine de Almeida"	71	"Annelise Salem"	20
"Giuliano Buzá Jacobucci"	67	"Annelise Salem"	20
"Jeamylle Nilin Gonçalves"	70	"Annelise Salem"	20
"Cassiano Aimberê Dorneles Welker"	69	"Annelise Salem"	20
"Admilson Lopes dos Santos"	72	"Annelise Salem"	20
"Adriana Rodrigues da Silva"	68	"Annelise Salem"	20
"Camila Mariana Ruiz"	71	"Annelise Salem"	20
"Fernando Rodrigo Rafaeli"	68	"Annelise Salem"	20
"Taciana Oliveira Souza"	69	"Annelise Salem"	20
"Jean Ponciano"	69	"Annelise Salem"	20
"Elaine Ribeiro"	67	"Annelise Salem"	20
"Alexsandro Soares"	71	"Annelise Salem"	20
"Pedro Frosi"	70	"Annelise Salem"	20
"Marcia Aparecida Fernandes"	65	"Annelise Salem"	20
"Adriano Mota Loyola"	69	"Annelise Salem"	20
"Alessandra Maia de Castro Prado"	71	"Annelise Salem"	20
"Álex Moreira Herval"	67	"Annelise Salem"	20
"Ana Paula Turrioni Hidalgo"	66	"Annelise Salem"	20
"Ana Paula de Lima Oliveira"	69	"Annelise Salem"	20
"Belchior de Sousa"	68	"Annelise Salem"	20
"Elsieni Coelho da Silva"	63	"Annelise Salem"	20
"Gastao da Cunha Frota"	67	"Annelise Salem"	20
"Nikoleta Tzvetanova Kerinska"	65	"Annelise Salem"	20
"Renato Palumbo Doria"	63	"Annelise Salem"	20
"Adriana Pastorello Buim Arena"	67	"Annelise Salem"	20
"Aldeci Cacique Calixto"	72	"Annelise Salem"	20
"Aléxia Pádua Franco"	69	"Annelise Salem"	20
"Ana Beatriz da Silva Duarte"	62	"Annelise Salem"	20
"Andrea Maturano Longarezi"	72	"Annelise Salem"	20
"Jailson Mendes"	70	"Annelise Salem"	20
"Gabriel Jesus"	68	"Annelise Salem"	20
"Luciano Hulk"	70	"Annelise Salem"	20
"João Guilherme"	70	"Annelise Salem"	20
"Péricles Mendes"	63	"Annelise Salem"	20
"Alcino Eduardo Bonella"	64	"Annelise Salem"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Annelise Salem"	20
"Ana Maria Said"	70	"Annelise Salem"	20
"Anselmo Tadeu Ferreira"	63	"Annelise Salem"	20
"Dennys Garcia Xavier"	70	"Annelise Salem"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Annelise Salem"	20
"Lucas de Assis Ribeiro"	72	"Annelise Salem"	20
"Natália Mundim Tôrres"	72	"Annelise Salem"	20
"Tiago Wilson Patriarca Mineo "	68	"Annelise Salem"	20
"Neide Maria da Silva "	64	"Annelise Salem"	20
"Alexandre Garrido da Silva"	71	"Annelise Salem"	20
"Beatriz Corrêa Camargo"	72	"Annelise Salem"	20
"Daniela de Melo Crosara"	68	"Annelise Salem"	20
"Fernando Rodrigues Martins"	69	"Annelise Salem"	20
"Gustavo de Carvalho Marin"	69	"Annelise Salem"	20
"Ademir Cavalheiro"	64	"Annelise Salem"	20
"Adevailton Bernardo dos Santos"	68	"Annelise Salem"	20
"Alessandra Riposati Arantes"	65	"Annelise Salem"	20
"Djalmir Nestor Messias"	66	"Annelise Salem"	20
"Marcel Novaes"	66	"Annelise Salem"	20
"Alberto da Silva Morais"	70	"Annelise Salem"	20
"Carlos Hernrique Gomes"	65	"Annelise Salem"	20
"Daniela Cristina de Oliveira"	72	"Annelise Salem"	20
"Disney Oliver"	71	"Annelise Salem"	20
"Henrique Tomaz Gonzaga"	68	"Annelise Salem"	20
"Jamil Salem"	66	"Annelise Salem"	20
"Julia Vingadora"	71	"Annelise Salem"	20
"Roberto Carlos"	65	"Annelise Salem"	20
"Cláudio Assembly"	64	"Annelise Salem"	20
"Elaine Java"	63	"Annelise Salem"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Annelise Salem"	20
"Clelia Regina Cafer"	66	"Annelise Salem"	20
"Marisa Aparecida Elias"	70	"Annelise Salem"	20
"Barbara Dias Rezende Gontijo"	63	"Annelise Salem"	20
"Tatiana Carneiro de Resende"	63	"Annelise Salem"	20
"Alessandro Gomes Enoque"	70	"Annelise Salem"	20
"Alex Fernando Borges"	68	"Annelise Salem"	20
"Alexandre Alves Alvenha"	70	"Annelise Salem"	20
"Alexandre Cacheffo"	71	"Annelise Salem"	20
"Alexandre Calzavara Yoshida"	72	"Annelise Salem"	20
"Severo Snape"	54	"Annelise Salem"	20
"Gina Maira"	65	"Victor Bagliano"	22
"Marcelo Keese Albertini"	62	"Victor Bagliano"	22
"Rivalino Matias Júnior"	69	"Victor Bagliano"	22
"André Backes"	63	"Victor Bagliano"	22
"Bruno Augusto Nassif Travençolo"	66	"Victor Bagliano"	22
"Luiz Gustavo Almeida Martins"	67	"Victor Bagliano"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Victor Bagliano"	22
"Ariádine Cristine de Almeida"	71	"Victor Bagliano"	22
"Giuliano Buzá Jacobucci"	67	"Victor Bagliano"	22
"Jeamylle Nilin Gonçalves"	70	"Victor Bagliano"	22
"Cassiano Aimberê Dorneles Welker"	69	"Victor Bagliano"	22
"Admilson Lopes dos Santos"	72	"Victor Bagliano"	22
"Adriana Rodrigues da Silva"	68	"Victor Bagliano"	22
"Camila Mariana Ruiz"	71	"Victor Bagliano"	22
"Fernando Rodrigo Rafaeli"	68	"Victor Bagliano"	22
"Taciana Oliveira Souza"	69	"Victor Bagliano"	22
"Jean Ponciano"	69	"Victor Bagliano"	22
"Elaine Ribeiro"	67	"Victor Bagliano"	22
"Alexsandro Soares"	71	"Victor Bagliano"	22
"Pedro Frosi"	70	"Victor Bagliano"	22
"Marcia Aparecida Fernandes"	65	"Victor Bagliano"	22
"Adriano Mota Loyola"	69	"Victor Bagliano"	22
"Alessandra Maia de Castro Prado"	71	"Victor Bagliano"	22
"Álex Moreira Herval"	67	"Victor Bagliano"	22
"Ana Paula Turrioni Hidalgo"	66	"Victor Bagliano"	22
"Ana Paula de Lima Oliveira"	69	"Victor Bagliano"	22
"Belchior de Sousa"	68	"Victor Bagliano"	22
"Elsieni Coelho da Silva"	63	"Victor Bagliano"	22
"Gastao da Cunha Frota"	67	"Victor Bagliano"	22
"Nikoleta Tzvetanova Kerinska"	65	"Victor Bagliano"	22
"Renato Palumbo Doria"	63	"Victor Bagliano"	22
"Adriana Pastorello Buim Arena"	67	"Victor Bagliano"	22
"Aldeci Cacique Calixto"	72	"Victor Bagliano"	22
"Aléxia Pádua Franco"	69	"Victor Bagliano"	22
"Ana Beatriz da Silva Duarte"	62	"Victor Bagliano"	22
"Andrea Maturano Longarezi"	72	"Victor Bagliano"	22
"Jailson Mendes"	70	"Victor Bagliano"	22
"Gabriel Jesus"	68	"Victor Bagliano"	22
"Luciano Hulk"	70	"Victor Bagliano"	22
"João Guilherme"	70	"Victor Bagliano"	22
"Péricles Mendes"	63	"Victor Bagliano"	22
"Alcino Eduardo Bonella"	64	"Victor Bagliano"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Victor Bagliano"	22
"Ana Maria Said"	70	"Victor Bagliano"	22
"Anselmo Tadeu Ferreira"	63	"Victor Bagliano"	22
"Dennys Garcia Xavier"	70	"Victor Bagliano"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Victor Bagliano"	22
"Lucas de Assis Ribeiro"	72	"Victor Bagliano"	22
"Natália Mundim Tôrres"	72	"Victor Bagliano"	22
"Tiago Wilson Patriarca Mineo "	68	"Victor Bagliano"	22
"Neide Maria da Silva "	64	"Victor Bagliano"	22
"Alexandre Garrido da Silva"	71	"Victor Bagliano"	22
"Beatriz Corrêa Camargo"	72	"Victor Bagliano"	22
"Daniela de Melo Crosara"	68	"Victor Bagliano"	22
"Fernando Rodrigues Martins"	69	"Victor Bagliano"	22
"Gustavo de Carvalho Marin"	69	"Victor Bagliano"	22
"Ademir Cavalheiro"	64	"Victor Bagliano"	22
"Adevailton Bernardo dos Santos"	68	"Victor Bagliano"	22
"Alessandra Riposati Arantes"	65	"Victor Bagliano"	22
"Djalmir Nestor Messias"	66	"Victor Bagliano"	22
"Marcel Novaes"	66	"Victor Bagliano"	22
"Alberto da Silva Morais"	70	"Victor Bagliano"	22
"Carlos Hernrique Gomes"	65	"Victor Bagliano"	22
"Daniela Cristina de Oliveira"	72	"Victor Bagliano"	22
"Disney Oliver"	71	"Victor Bagliano"	22
"Henrique Tomaz Gonzaga"	68	"Victor Bagliano"	22
"Jamil Salem"	66	"Victor Bagliano"	22
"Julia Vingadora"	71	"Victor Bagliano"	22
"Roberto Carlos"	65	"Victor Bagliano"	22
"Cláudio Assembly"	64	"Victor Bagliano"	22
"Elaine Java"	63	"Victor Bagliano"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Victor Bagliano"	22
"Clelia Regina Cafer"	66	"Victor Bagliano"	22
"Marisa Aparecida Elias"	70	"Victor Bagliano"	22
"Barbara Dias Rezende Gontijo"	63	"Victor Bagliano"	22
"Tatiana Carneiro de Resende"	63	"Victor Bagliano"	22
"Alessandro Gomes Enoque"	70	"Victor Bagliano"	22
"Alex Fernando Borges"	68	"Victor Bagliano"	22
"Alexandre Alves Alvenha"	70	"Victor Bagliano"	22
"Alexandre Cacheffo"	71	"Victor Bagliano"	22
"Alexandre Calzavara Yoshida"	72	"Victor Bagliano"	22
"Severo Snape"	54	"Victor Bagliano"	22
"Gina Maira"	65	"Leandro Peres"	21
"Marcelo Keese Albertini"	62	"Leandro Peres"	21
"Rivalino Matias Júnior"	69	"Leandro Peres"	21
"André Backes"	63	"Leandro Peres"	21
"Bruno Augusto Nassif Travençolo"	66	"Leandro Peres"	21
"Luiz Gustavo Almeida Martins"	67	"Leandro Peres"	21
"Ailton Gonçalves Rodrigues Junior"	69	"Leandro Peres"	21
"Ariádine Cristine de Almeida"	71	"Leandro Peres"	21
"Giuliano Buzá Jacobucci"	67	"Leandro Peres"	21
"Jeamylle Nilin Gonçalves"	70	"Leandro Peres"	21
"Cassiano Aimberê Dorneles Welker"	69	"Leandro Peres"	21
"Admilson Lopes dos Santos"	72	"Leandro Peres"	21
"Adriana Rodrigues da Silva"	68	"Leandro Peres"	21
"Camila Mariana Ruiz"	71	"Leandro Peres"	21
"Fernando Rodrigo Rafaeli"	68	"Leandro Peres"	21
"Taciana Oliveira Souza"	69	"Leandro Peres"	21
"Jean Ponciano"	69	"Leandro Peres"	21
"Elaine Ribeiro"	67	"Leandro Peres"	21
"Alexsandro Soares"	71	"Leandro Peres"	21
"Pedro Frosi"	70	"Leandro Peres"	21
"Marcia Aparecida Fernandes"	65	"Leandro Peres"	21
"Adriano Mota Loyola"	69	"Leandro Peres"	21
"Alessandra Maia de Castro Prado"	71	"Leandro Peres"	21
"Álex Moreira Herval"	67	"Leandro Peres"	21
"Ana Paula Turrioni Hidalgo"	66	"Leandro Peres"	21
"Ana Paula de Lima Oliveira"	69	"Leandro Peres"	21
"Belchior de Sousa"	68	"Leandro Peres"	21
"Elsieni Coelho da Silva"	63	"Leandro Peres"	21
"Gastao da Cunha Frota"	67	"Leandro Peres"	21
"Nikoleta Tzvetanova Kerinska"	65	"Leandro Peres"	21
"Renato Palumbo Doria"	63	"Leandro Peres"	21
"Adriana Pastorello Buim Arena"	67	"Leandro Peres"	21
"Aldeci Cacique Calixto"	72	"Leandro Peres"	21
"Aléxia Pádua Franco"	69	"Leandro Peres"	21
"Ana Beatriz da Silva Duarte"	62	"Leandro Peres"	21
"Andrea Maturano Longarezi"	72	"Leandro Peres"	21
"Jailson Mendes"	70	"Leandro Peres"	21
"Gabriel Jesus"	68	"Leandro Peres"	21
"Luciano Hulk"	70	"Leandro Peres"	21
"João Guilherme"	70	"Leandro Peres"	21
"Péricles Mendes"	63	"Leandro Peres"	21
"Alcino Eduardo Bonella"	64	"Leandro Peres"	21
"Alexandre Guimarães Tadeu de Soares"	68	"Leandro Peres"	21
"Ana Maria Said"	70	"Leandro Peres"	21
"Anselmo Tadeu Ferreira"	63	"Leandro Peres"	21
"Dennys Garcia Xavier"	70	"Leandro Peres"	21
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Leandro Peres"	21
"Lucas de Assis Ribeiro"	72	"Leandro Peres"	21
"Natália Mundim Tôrres"	72	"Leandro Peres"	21
"Tiago Wilson Patriarca Mineo "	68	"Leandro Peres"	21
"Neide Maria da Silva "	64	"Leandro Peres"	21
"Alexandre Garrido da Silva"	71	"Leandro Peres"	21
"Beatriz Corrêa Camargo"	72	"Leandro Peres"	21
"Daniela de Melo Crosara"	68	"Leandro Peres"	21
"Fernando Rodrigues Martins"	69	"Leandro Peres"	21
"Gustavo de Carvalho Marin"	69	"Leandro Peres"	21
"Ademir Cavalheiro"	64	"Leandro Peres"	21
"Adevailton Bernardo dos Santos"	68	"Leandro Peres"	21
"Alessandra Riposati Arantes"	65	"Leandro Peres"	21
"Djalmir Nestor Messias"	66	"Leandro Peres"	21
"Marcel Novaes"	66	"Leandro Peres"	21
"Alberto da Silva Morais"	70	"Leandro Peres"	21
"Carlos Hernrique Gomes"	65	"Leandro Peres"	21
"Daniela Cristina de Oliveira"	72	"Leandro Peres"	21
"Disney Oliver"	71	"Leandro Peres"	21
"Henrique Tomaz Gonzaga"	68	"Leandro Peres"	21
"Jamil Salem"	66	"Leandro Peres"	21
"Julia Vingadora"	71	"Leandro Peres"	21
"Roberto Carlos"	65	"Leandro Peres"	21
"Cláudio Assembly"	64	"Leandro Peres"	21
"Elaine Java"	63	"Leandro Peres"	21
"Lilian Rodrigues Sant’ Anna Campos"	70	"Leandro Peres"	21
"Clelia Regina Cafer"	66	"Leandro Peres"	21
"Marisa Aparecida Elias"	70	"Leandro Peres"	21
"Barbara Dias Rezende Gontijo"	63	"Leandro Peres"	21
"Tatiana Carneiro de Resende"	63	"Leandro Peres"	21
"Alessandro Gomes Enoque"	70	"Leandro Peres"	21
"Alex Fernando Borges"	68	"Leandro Peres"	21
"Alexandre Alves Alvenha"	70	"Leandro Peres"	21
"Alexandre Cacheffo"	71	"Leandro Peres"	21
"Alexandre Calzavara Yoshida"	72	"Leandro Peres"	21
"Severo Snape"	54	"Leandro Peres"	21
"Gina Maira"	65	"Marina Barcelos"	20
"Marcelo Keese Albertini"	62	"Marina Barcelos"	20
"Rivalino Matias Júnior"	69	"Marina Barcelos"	20
"André Backes"	63	"Marina Barcelos"	20
"Bruno Augusto Nassif Travençolo"	66	"Marina Barcelos"	20
"Luiz Gustavo Almeida Martins"	67	"Marina Barcelos"	20
"Ailton Gonçalves Rodrigues Junior"	69	"Marina Barcelos"	20
"Ariádine Cristine de Almeida"	71	"Marina Barcelos"	20
"Giuliano Buzá Jacobucci"	67	"Marina Barcelos"	20
"Jeamylle Nilin Gonçalves"	70	"Marina Barcelos"	20
"Cassiano Aimberê Dorneles Welker"	69	"Marina Barcelos"	20
"Admilson Lopes dos Santos"	72	"Marina Barcelos"	20
"Adriana Rodrigues da Silva"	68	"Marina Barcelos"	20
"Camila Mariana Ruiz"	71	"Marina Barcelos"	20
"Fernando Rodrigo Rafaeli"	68	"Marina Barcelos"	20
"Taciana Oliveira Souza"	69	"Marina Barcelos"	20
"Jean Ponciano"	69	"Marina Barcelos"	20
"Elaine Ribeiro"	67	"Marina Barcelos"	20
"Alexsandro Soares"	71	"Marina Barcelos"	20
"Pedro Frosi"	70	"Marina Barcelos"	20
"Marcia Aparecida Fernandes"	65	"Marina Barcelos"	20
"Adriano Mota Loyola"	69	"Marina Barcelos"	20
"Alessandra Maia de Castro Prado"	71	"Marina Barcelos"	20
"Álex Moreira Herval"	67	"Marina Barcelos"	20
"Ana Paula Turrioni Hidalgo"	66	"Marina Barcelos"	20
"Ana Paula de Lima Oliveira"	69	"Marina Barcelos"	20
"Belchior de Sousa"	68	"Marina Barcelos"	20
"Elsieni Coelho da Silva"	63	"Marina Barcelos"	20
"Gastao da Cunha Frota"	67	"Marina Barcelos"	20
"Nikoleta Tzvetanova Kerinska"	65	"Marina Barcelos"	20
"Renato Palumbo Doria"	63	"Marina Barcelos"	20
"Adriana Pastorello Buim Arena"	67	"Marina Barcelos"	20
"Aldeci Cacique Calixto"	72	"Marina Barcelos"	20
"Aléxia Pádua Franco"	69	"Marina Barcelos"	20
"Ana Beatriz da Silva Duarte"	62	"Marina Barcelos"	20
"Andrea Maturano Longarezi"	72	"Marina Barcelos"	20
"Jailson Mendes"	70	"Marina Barcelos"	20
"Gabriel Jesus"	68	"Marina Barcelos"	20
"Luciano Hulk"	70	"Marina Barcelos"	20
"João Guilherme"	70	"Marina Barcelos"	20
"Péricles Mendes"	63	"Marina Barcelos"	20
"Alcino Eduardo Bonella"	64	"Marina Barcelos"	20
"Alexandre Guimarães Tadeu de Soares"	68	"Marina Barcelos"	20
"Ana Maria Said"	70	"Marina Barcelos"	20
"Anselmo Tadeu Ferreira"	63	"Marina Barcelos"	20
"Dennys Garcia Xavier"	70	"Marina Barcelos"	20
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Marina Barcelos"	20
"Lucas de Assis Ribeiro"	72	"Marina Barcelos"	20
"Natália Mundim Tôrres"	72	"Marina Barcelos"	20
"Tiago Wilson Patriarca Mineo "	68	"Marina Barcelos"	20
"Neide Maria da Silva "	64	"Marina Barcelos"	20
"Alexandre Garrido da Silva"	71	"Marina Barcelos"	20
"Beatriz Corrêa Camargo"	72	"Marina Barcelos"	20
"Daniela de Melo Crosara"	68	"Marina Barcelos"	20
"Fernando Rodrigues Martins"	69	"Marina Barcelos"	20
"Gustavo de Carvalho Marin"	69	"Marina Barcelos"	20
"Ademir Cavalheiro"	64	"Marina Barcelos"	20
"Adevailton Bernardo dos Santos"	68	"Marina Barcelos"	20
"Alessandra Riposati Arantes"	65	"Marina Barcelos"	20
"Djalmir Nestor Messias"	66	"Marina Barcelos"	20
"Marcel Novaes"	66	"Marina Barcelos"	20
"Alberto da Silva Morais"	70	"Marina Barcelos"	20
"Carlos Hernrique Gomes"	65	"Marina Barcelos"	20
"Daniela Cristina de Oliveira"	72	"Marina Barcelos"	20
"Disney Oliver"	71	"Marina Barcelos"	20
"Henrique Tomaz Gonzaga"	68	"Marina Barcelos"	20
"Jamil Salem"	66	"Marina Barcelos"	20
"Julia Vingadora"	71	"Marina Barcelos"	20
"Roberto Carlos"	65	"Marina Barcelos"	20
"Cláudio Assembly"	64	"Marina Barcelos"	20
"Elaine Java"	63	"Marina Barcelos"	20
"Lilian Rodrigues Sant’ Anna Campos"	70	"Marina Barcelos"	20
"Clelia Regina Cafer"	66	"Marina Barcelos"	20
"Marisa Aparecida Elias"	70	"Marina Barcelos"	20
"Barbara Dias Rezende Gontijo"	63	"Marina Barcelos"	20
"Tatiana Carneiro de Resende"	63	"Marina Barcelos"	20
"Alessandro Gomes Enoque"	70	"Marina Barcelos"	20
"Alex Fernando Borges"	68	"Marina Barcelos"	20
"Alexandre Alves Alvenha"	70	"Marina Barcelos"	20
"Alexandre Cacheffo"	71	"Marina Barcelos"	20
"Alexandre Calzavara Yoshida"	72	"Marina Barcelos"	20
"Severo Snape"	54	"Marina Barcelos"	20
"Gina Maira"	65	"Gabriel Hugo Borges"	22
"Marcelo Keese Albertini"	62	"Gabriel Hugo Borges"	22
"Rivalino Matias Júnior"	69	"Gabriel Hugo Borges"	22
"André Backes"	63	"Gabriel Hugo Borges"	22
"Bruno Augusto Nassif Travençolo"	66	"Gabriel Hugo Borges"	22
"Luiz Gustavo Almeida Martins"	67	"Gabriel Hugo Borges"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Gabriel Hugo Borges"	22
"Ariádine Cristine de Almeida"	71	"Gabriel Hugo Borges"	22
"Giuliano Buzá Jacobucci"	67	"Gabriel Hugo Borges"	22
"Jeamylle Nilin Gonçalves"	70	"Gabriel Hugo Borges"	22
"Cassiano Aimberê Dorneles Welker"	69	"Gabriel Hugo Borges"	22
"Admilson Lopes dos Santos"	72	"Gabriel Hugo Borges"	22
"Adriana Rodrigues da Silva"	68	"Gabriel Hugo Borges"	22
"Camila Mariana Ruiz"	71	"Gabriel Hugo Borges"	22
"Fernando Rodrigo Rafaeli"	68	"Gabriel Hugo Borges"	22
"Taciana Oliveira Souza"	69	"Gabriel Hugo Borges"	22
"Jean Ponciano"	69	"Gabriel Hugo Borges"	22
"Elaine Ribeiro"	67	"Gabriel Hugo Borges"	22
"Alexsandro Soares"	71	"Gabriel Hugo Borges"	22
"Pedro Frosi"	70	"Gabriel Hugo Borges"	22
"Marcia Aparecida Fernandes"	65	"Gabriel Hugo Borges"	22
"Adriano Mota Loyola"	69	"Gabriel Hugo Borges"	22
"Alessandra Maia de Castro Prado"	71	"Gabriel Hugo Borges"	22
"Álex Moreira Herval"	67	"Gabriel Hugo Borges"	22
"Ana Paula Turrioni Hidalgo"	66	"Gabriel Hugo Borges"	22
"Ana Paula de Lima Oliveira"	69	"Gabriel Hugo Borges"	22
"Belchior de Sousa"	68	"Gabriel Hugo Borges"	22
"Elsieni Coelho da Silva"	63	"Gabriel Hugo Borges"	22
"Gastao da Cunha Frota"	67	"Gabriel Hugo Borges"	22
"Nikoleta Tzvetanova Kerinska"	65	"Gabriel Hugo Borges"	22
"Renato Palumbo Doria"	63	"Gabriel Hugo Borges"	22
"Adriana Pastorello Buim Arena"	67	"Gabriel Hugo Borges"	22
"Aldeci Cacique Calixto"	72	"Gabriel Hugo Borges"	22
"Aléxia Pádua Franco"	69	"Gabriel Hugo Borges"	22
"Ana Beatriz da Silva Duarte"	62	"Gabriel Hugo Borges"	22
"Andrea Maturano Longarezi"	72	"Gabriel Hugo Borges"	22
"Jailson Mendes"	70	"Gabriel Hugo Borges"	22
"Gabriel Jesus"	68	"Gabriel Hugo Borges"	22
"Luciano Hulk"	70	"Gabriel Hugo Borges"	22
"João Guilherme"	70	"Gabriel Hugo Borges"	22
"Péricles Mendes"	63	"Gabriel Hugo Borges"	22
"Alcino Eduardo Bonella"	64	"Gabriel Hugo Borges"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Gabriel Hugo Borges"	22
"Ana Maria Said"	70	"Gabriel Hugo Borges"	22
"Anselmo Tadeu Ferreira"	63	"Gabriel Hugo Borges"	22
"Dennys Garcia Xavier"	70	"Gabriel Hugo Borges"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Gabriel Hugo Borges"	22
"Lucas de Assis Ribeiro"	72	"Gabriel Hugo Borges"	22
"Natália Mundim Tôrres"	72	"Gabriel Hugo Borges"	22
"Tiago Wilson Patriarca Mineo "	68	"Gabriel Hugo Borges"	22
"Neide Maria da Silva "	64	"Gabriel Hugo Borges"	22
"Alexandre Garrido da Silva"	71	"Gabriel Hugo Borges"	22
"Beatriz Corrêa Camargo"	72	"Gabriel Hugo Borges"	22
"Daniela de Melo Crosara"	68	"Gabriel Hugo Borges"	22
"Fernando Rodrigues Martins"	69	"Gabriel Hugo Borges"	22
"Gustavo de Carvalho Marin"	69	"Gabriel Hugo Borges"	22
"Ademir Cavalheiro"	64	"Gabriel Hugo Borges"	22
"Adevailton Bernardo dos Santos"	68	"Gabriel Hugo Borges"	22
"Alessandra Riposati Arantes"	65	"Gabriel Hugo Borges"	22
"Djalmir Nestor Messias"	66	"Gabriel Hugo Borges"	22
"Marcel Novaes"	66	"Gabriel Hugo Borges"	22
"Alberto da Silva Morais"	70	"Gabriel Hugo Borges"	22
"Carlos Hernrique Gomes"	65	"Gabriel Hugo Borges"	22
"Daniela Cristina de Oliveira"	72	"Gabriel Hugo Borges"	22
"Disney Oliver"	71	"Gabriel Hugo Borges"	22
"Henrique Tomaz Gonzaga"	68	"Gabriel Hugo Borges"	22
"Jamil Salem"	66	"Gabriel Hugo Borges"	22
"Julia Vingadora"	71	"Gabriel Hugo Borges"	22
"Roberto Carlos"	65	"Gabriel Hugo Borges"	22
"Cláudio Assembly"	64	"Gabriel Hugo Borges"	22
"Elaine Java"	63	"Gabriel Hugo Borges"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Gabriel Hugo Borges"	22
"Clelia Regina Cafer"	66	"Gabriel Hugo Borges"	22
"Marisa Aparecida Elias"	70	"Gabriel Hugo Borges"	22
"Barbara Dias Rezende Gontijo"	63	"Gabriel Hugo Borges"	22
"Tatiana Carneiro de Resende"	63	"Gabriel Hugo Borges"	22
"Alessandro Gomes Enoque"	70	"Gabriel Hugo Borges"	22
"Alex Fernando Borges"	68	"Gabriel Hugo Borges"	22
"Alexandre Alves Alvenha"	70	"Gabriel Hugo Borges"	22
"Alexandre Cacheffo"	71	"Gabriel Hugo Borges"	22
"Alexandre Calzavara Yoshida"	72	"Gabriel Hugo Borges"	22
"Severo Snape"	54	"Gabriel Hugo Borges"	22
"Gina Maira"	65	"Gustavo Duarte Gomides"	19
"Marcelo Keese Albertini"	62	"Gustavo Duarte Gomides"	19
"Rivalino Matias Júnior"	69	"Gustavo Duarte Gomides"	19
"André Backes"	63	"Gustavo Duarte Gomides"	19
"Bruno Augusto Nassif Travençolo"	66	"Gustavo Duarte Gomides"	19
"Luiz Gustavo Almeida Martins"	67	"Gustavo Duarte Gomides"	19
"Ailton Gonçalves Rodrigues Junior"	69	"Gustavo Duarte Gomides"	19
"Ariádine Cristine de Almeida"	71	"Gustavo Duarte Gomides"	19
"Giuliano Buzá Jacobucci"	67	"Gustavo Duarte Gomides"	19
"Jeamylle Nilin Gonçalves"	70	"Gustavo Duarte Gomides"	19
"Cassiano Aimberê Dorneles Welker"	69	"Gustavo Duarte Gomides"	19
"Admilson Lopes dos Santos"	72	"Gustavo Duarte Gomides"	19
"Adriana Rodrigues da Silva"	68	"Gustavo Duarte Gomides"	19
"Camila Mariana Ruiz"	71	"Gustavo Duarte Gomides"	19
"Fernando Rodrigo Rafaeli"	68	"Gustavo Duarte Gomides"	19
"Taciana Oliveira Souza"	69	"Gustavo Duarte Gomides"	19
"Jean Ponciano"	69	"Gustavo Duarte Gomides"	19
"Elaine Ribeiro"	67	"Gustavo Duarte Gomides"	19
"Alexsandro Soares"	71	"Gustavo Duarte Gomides"	19
"Pedro Frosi"	70	"Gustavo Duarte Gomides"	19
"Marcia Aparecida Fernandes"	65	"Gustavo Duarte Gomides"	19
"Adriano Mota Loyola"	69	"Gustavo Duarte Gomides"	19
"Alessandra Maia de Castro Prado"	71	"Gustavo Duarte Gomides"	19
"Álex Moreira Herval"	67	"Gustavo Duarte Gomides"	19
"Ana Paula Turrioni Hidalgo"	66	"Gustavo Duarte Gomides"	19
"Ana Paula de Lima Oliveira"	69	"Gustavo Duarte Gomides"	19
"Belchior de Sousa"	68	"Gustavo Duarte Gomides"	19
"Elsieni Coelho da Silva"	63	"Gustavo Duarte Gomides"	19
"Gastao da Cunha Frota"	67	"Gustavo Duarte Gomides"	19
"Nikoleta Tzvetanova Kerinska"	65	"Gustavo Duarte Gomides"	19
"Renato Palumbo Doria"	63	"Gustavo Duarte Gomides"	19
"Adriana Pastorello Buim Arena"	67	"Gustavo Duarte Gomides"	19
"Aldeci Cacique Calixto"	72	"Gustavo Duarte Gomides"	19
"Aléxia Pádua Franco"	69	"Gustavo Duarte Gomides"	19
"Ana Beatriz da Silva Duarte"	62	"Gustavo Duarte Gomides"	19
"Andrea Maturano Longarezi"	72	"Gustavo Duarte Gomides"	19
"Jailson Mendes"	70	"Gustavo Duarte Gomides"	19
"Gabriel Jesus"	68	"Gustavo Duarte Gomides"	19
"Luciano Hulk"	70	"Gustavo Duarte Gomides"	19
"João Guilherme"	70	"Gustavo Duarte Gomides"	19
"Péricles Mendes"	63	"Gustavo Duarte Gomides"	19
"Alcino Eduardo Bonella"	64	"Gustavo Duarte Gomides"	19
"Alexandre Guimarães Tadeu de Soares"	68	"Gustavo Duarte Gomides"	19
"Ana Maria Said"	70	"Gustavo Duarte Gomides"	19
"Anselmo Tadeu Ferreira"	63	"Gustavo Duarte Gomides"	19
"Dennys Garcia Xavier"	70	"Gustavo Duarte Gomides"	19
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Gustavo Duarte Gomides"	19
"Lucas de Assis Ribeiro"	72	"Gustavo Duarte Gomides"	19
"Natália Mundim Tôrres"	72	"Gustavo Duarte Gomides"	19
"Tiago Wilson Patriarca Mineo "	68	"Gustavo Duarte Gomides"	19
"Neide Maria da Silva "	64	"Gustavo Duarte Gomides"	19
"Alexandre Garrido da Silva"	71	"Gustavo Duarte Gomides"	19
"Beatriz Corrêa Camargo"	72	"Gustavo Duarte Gomides"	19
"Daniela de Melo Crosara"	68	"Gustavo Duarte Gomides"	19
"Fernando Rodrigues Martins"	69	"Gustavo Duarte Gomides"	19
"Gustavo de Carvalho Marin"	69	"Gustavo Duarte Gomides"	19
"Ademir Cavalheiro"	64	"Gustavo Duarte Gomides"	19
"Adevailton Bernardo dos Santos"	68	"Gustavo Duarte Gomides"	19
"Alessandra Riposati Arantes"	65	"Gustavo Duarte Gomides"	19
"Djalmir Nestor Messias"	66	"Gustavo Duarte Gomides"	19
"Marcel Novaes"	66	"Gustavo Duarte Gomides"	19
"Alberto da Silva Morais"	70	"Gustavo Duarte Gomides"	19
"Carlos Hernrique Gomes"	65	"Gustavo Duarte Gomides"	19
"Daniela Cristina de Oliveira"	72	"Gustavo Duarte Gomides"	19
"Disney Oliver"	71	"Gustavo Duarte Gomides"	19
"Henrique Tomaz Gonzaga"	68	"Gustavo Duarte Gomides"	19
"Jamil Salem"	66	"Gustavo Duarte Gomides"	19
"Julia Vingadora"	71	"Gustavo Duarte Gomides"	19
"Roberto Carlos"	65	"Gustavo Duarte Gomides"	19
"Cláudio Assembly"	64	"Gustavo Duarte Gomides"	19
"Elaine Java"	63	"Gustavo Duarte Gomides"	19
"Lilian Rodrigues Sant’ Anna Campos"	70	"Gustavo Duarte Gomides"	19
"Clelia Regina Cafer"	66	"Gustavo Duarte Gomides"	19
"Marisa Aparecida Elias"	70	"Gustavo Duarte Gomides"	19
"Barbara Dias Rezende Gontijo"	63	"Gustavo Duarte Gomides"	19
"Tatiana Carneiro de Resende"	63	"Gustavo Duarte Gomides"	19
"Alessandro Gomes Enoque"	70	"Gustavo Duarte Gomides"	19
"Alex Fernando Borges"	68	"Gustavo Duarte Gomides"	19
"Alexandre Alves Alvenha"	70	"Gustavo Duarte Gomides"	19
"Alexandre Cacheffo"	71	"Gustavo Duarte Gomides"	19
"Alexandre Calzavara Yoshida"	72	"Gustavo Duarte Gomides"	19
"Severo Snape"	54	"Gustavo Duarte Gomides"	19
"Gina Maira"	65	"Rodrigo Alves da Silva"	32
"Marcelo Keese Albertini"	62	"Rodrigo Alves da Silva"	32
"Rivalino Matias Júnior"	69	"Rodrigo Alves da Silva"	32
"André Backes"	63	"Rodrigo Alves da Silva"	32
"Bruno Augusto Nassif Travençolo"	66	"Rodrigo Alves da Silva"	32
"Luiz Gustavo Almeida Martins"	67	"Rodrigo Alves da Silva"	32
"Ailton Gonçalves Rodrigues Junior"	69	"Rodrigo Alves da Silva"	32
"Ariádine Cristine de Almeida"	71	"Rodrigo Alves da Silva"	32
"Giuliano Buzá Jacobucci"	67	"Rodrigo Alves da Silva"	32
"Jeamylle Nilin Gonçalves"	70	"Rodrigo Alves da Silva"	32
"Cassiano Aimberê Dorneles Welker"	69	"Rodrigo Alves da Silva"	32
"Admilson Lopes dos Santos"	72	"Rodrigo Alves da Silva"	32
"Adriana Rodrigues da Silva"	68	"Rodrigo Alves da Silva"	32
"Camila Mariana Ruiz"	71	"Rodrigo Alves da Silva"	32
"Fernando Rodrigo Rafaeli"	68	"Rodrigo Alves da Silva"	32
"Taciana Oliveira Souza"	69	"Rodrigo Alves da Silva"	32
"Jean Ponciano"	69	"Rodrigo Alves da Silva"	32
"Elaine Ribeiro"	67	"Rodrigo Alves da Silva"	32
"Alexsandro Soares"	71	"Rodrigo Alves da Silva"	32
"Pedro Frosi"	70	"Rodrigo Alves da Silva"	32
"Marcia Aparecida Fernandes"	65	"Rodrigo Alves da Silva"	32
"Adriano Mota Loyola"	69	"Rodrigo Alves da Silva"	32
"Alessandra Maia de Castro Prado"	71	"Rodrigo Alves da Silva"	32
"Álex Moreira Herval"	67	"Rodrigo Alves da Silva"	32
"Ana Paula Turrioni Hidalgo"	66	"Rodrigo Alves da Silva"	32
"Ana Paula de Lima Oliveira"	69	"Rodrigo Alves da Silva"	32
"Belchior de Sousa"	68	"Rodrigo Alves da Silva"	32
"Elsieni Coelho da Silva"	63	"Rodrigo Alves da Silva"	32
"Gastao da Cunha Frota"	67	"Rodrigo Alves da Silva"	32
"Nikoleta Tzvetanova Kerinska"	65	"Rodrigo Alves da Silva"	32
"Renato Palumbo Doria"	63	"Rodrigo Alves da Silva"	32
"Adriana Pastorello Buim Arena"	67	"Rodrigo Alves da Silva"	32
"Aldeci Cacique Calixto"	72	"Rodrigo Alves da Silva"	32
"Aléxia Pádua Franco"	69	"Rodrigo Alves da Silva"	32
"Ana Beatriz da Silva Duarte"	62	"Rodrigo Alves da Silva"	32
"Andrea Maturano Longarezi"	72	"Rodrigo Alves da Silva"	32
"Jailson Mendes"	70	"Rodrigo Alves da Silva"	32
"Gabriel Jesus"	68	"Rodrigo Alves da Silva"	32
"Luciano Hulk"	70	"Rodrigo Alves da Silva"	32
"João Guilherme"	70	"Rodrigo Alves da Silva"	32
"Péricles Mendes"	63	"Rodrigo Alves da Silva"	32
"Alcino Eduardo Bonella"	64	"Rodrigo Alves da Silva"	32
"Alexandre Guimarães Tadeu de Soares"	68	"Rodrigo Alves da Silva"	32
"Ana Maria Said"	70	"Rodrigo Alves da Silva"	32
"Anselmo Tadeu Ferreira"	63	"Rodrigo Alves da Silva"	32
"Dennys Garcia Xavier"	70	"Rodrigo Alves da Silva"	32
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Rodrigo Alves da Silva"	32
"Lucas de Assis Ribeiro"	72	"Rodrigo Alves da Silva"	32
"Natália Mundim Tôrres"	72	"Rodrigo Alves da Silva"	32
"Tiago Wilson Patriarca Mineo "	68	"Rodrigo Alves da Silva"	32
"Neide Maria da Silva "	64	"Rodrigo Alves da Silva"	32
"Alexandre Garrido da Silva"	71	"Rodrigo Alves da Silva"	32
"Beatriz Corrêa Camargo"	72	"Rodrigo Alves da Silva"	32
"Daniela de Melo Crosara"	68	"Rodrigo Alves da Silva"	32
"Fernando Rodrigues Martins"	69	"Rodrigo Alves da Silva"	32
"Gustavo de Carvalho Marin"	69	"Rodrigo Alves da Silva"	32
"Ademir Cavalheiro"	64	"Rodrigo Alves da Silva"	32
"Adevailton Bernardo dos Santos"	68	"Rodrigo Alves da Silva"	32
"Alessandra Riposati Arantes"	65	"Rodrigo Alves da Silva"	32
"Djalmir Nestor Messias"	66	"Rodrigo Alves da Silva"	32
"Marcel Novaes"	66	"Rodrigo Alves da Silva"	32
"Alberto da Silva Morais"	70	"Rodrigo Alves da Silva"	32
"Carlos Hernrique Gomes"	65	"Rodrigo Alves da Silva"	32
"Daniela Cristina de Oliveira"	72	"Rodrigo Alves da Silva"	32
"Disney Oliver"	71	"Rodrigo Alves da Silva"	32
"Henrique Tomaz Gonzaga"	68	"Rodrigo Alves da Silva"	32
"Jamil Salem"	66	"Rodrigo Alves da Silva"	32
"Julia Vingadora"	71	"Rodrigo Alves da Silva"	32
"Roberto Carlos"	65	"Rodrigo Alves da Silva"	32
"Cláudio Assembly"	64	"Rodrigo Alves da Silva"	32
"Elaine Java"	63	"Rodrigo Alves da Silva"	32
"Lilian Rodrigues Sant’ Anna Campos"	70	"Rodrigo Alves da Silva"	32
"Clelia Regina Cafer"	66	"Rodrigo Alves da Silva"	32
"Marisa Aparecida Elias"	70	"Rodrigo Alves da Silva"	32
"Barbara Dias Rezende Gontijo"	63	"Rodrigo Alves da Silva"	32
"Tatiana Carneiro de Resende"	63	"Rodrigo Alves da Silva"	32
"Alessandro Gomes Enoque"	70	"Rodrigo Alves da Silva"	32
"Alex Fernando Borges"	68	"Rodrigo Alves da Silva"	32
"Alexandre Alves Alvenha"	70	"Rodrigo Alves da Silva"	32
"Alexandre Cacheffo"	71	"Rodrigo Alves da Silva"	32
"Alexandre Calzavara Yoshida"	72	"Rodrigo Alves da Silva"	32
"Severo Snape"	54	"Rodrigo Alves da Silva"	32
"Gina Maira"	65	"Julia Echeverria"	23
"Marcelo Keese Albertini"	62	"Julia Echeverria"	23
"Rivalino Matias Júnior"	69	"Julia Echeverria"	23
"André Backes"	63	"Julia Echeverria"	23
"Bruno Augusto Nassif Travençolo"	66	"Julia Echeverria"	23
"Luiz Gustavo Almeida Martins"	67	"Julia Echeverria"	23
"Ailton Gonçalves Rodrigues Junior"	69	"Julia Echeverria"	23
"Ariádine Cristine de Almeida"	71	"Julia Echeverria"	23
"Giuliano Buzá Jacobucci"	67	"Julia Echeverria"	23
"Jeamylle Nilin Gonçalves"	70	"Julia Echeverria"	23
"Cassiano Aimberê Dorneles Welker"	69	"Julia Echeverria"	23
"Admilson Lopes dos Santos"	72	"Julia Echeverria"	23
"Adriana Rodrigues da Silva"	68	"Julia Echeverria"	23
"Camila Mariana Ruiz"	71	"Julia Echeverria"	23
"Fernando Rodrigo Rafaeli"	68	"Julia Echeverria"	23
"Taciana Oliveira Souza"	69	"Julia Echeverria"	23
"Jean Ponciano"	69	"Julia Echeverria"	23
"Elaine Ribeiro"	67	"Julia Echeverria"	23
"Alexsandro Soares"	71	"Julia Echeverria"	23
"Pedro Frosi"	70	"Julia Echeverria"	23
"Marcia Aparecida Fernandes"	65	"Julia Echeverria"	23
"Adriano Mota Loyola"	69	"Julia Echeverria"	23
"Alessandra Maia de Castro Prado"	71	"Julia Echeverria"	23
"Álex Moreira Herval"	67	"Julia Echeverria"	23
"Ana Paula Turrioni Hidalgo"	66	"Julia Echeverria"	23
"Ana Paula de Lima Oliveira"	69	"Julia Echeverria"	23
"Belchior de Sousa"	68	"Julia Echeverria"	23
"Elsieni Coelho da Silva"	63	"Julia Echeverria"	23
"Gastao da Cunha Frota"	67	"Julia Echeverria"	23
"Nikoleta Tzvetanova Kerinska"	65	"Julia Echeverria"	23
"Renato Palumbo Doria"	63	"Julia Echeverria"	23
"Adriana Pastorello Buim Arena"	67	"Julia Echeverria"	23
"Aldeci Cacique Calixto"	72	"Julia Echeverria"	23
"Aléxia Pádua Franco"	69	"Julia Echeverria"	23
"Ana Beatriz da Silva Duarte"	62	"Julia Echeverria"	23
"Andrea Maturano Longarezi"	72	"Julia Echeverria"	23
"Jailson Mendes"	70	"Julia Echeverria"	23
"Gabriel Jesus"	68	"Julia Echeverria"	23
"Luciano Hulk"	70	"Julia Echeverria"	23
"João Guilherme"	70	"Julia Echeverria"	23
"Péricles Mendes"	63	"Julia Echeverria"	23
"Alcino Eduardo Bonella"	64	"Julia Echeverria"	23
"Alexandre Guimarães Tadeu de Soares"	68	"Julia Echeverria"	23
"Ana Maria Said"	70	"Julia Echeverria"	23
"Anselmo Tadeu Ferreira"	63	"Julia Echeverria"	23
"Dennys Garcia Xavier"	70	"Julia Echeverria"	23
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Julia Echeverria"	23
"Lucas de Assis Ribeiro"	72	"Julia Echeverria"	23
"Natália Mundim Tôrres"	72	"Julia Echeverria"	23
"Tiago Wilson Patriarca Mineo "	68	"Julia Echeverria"	23
"Neide Maria da Silva "	64	"Julia Echeverria"	23
"Alexandre Garrido da Silva"	71	"Julia Echeverria"	23
"Beatriz Corrêa Camargo"	72	"Julia Echeverria"	23
"Daniela de Melo Crosara"	68	"Julia Echeverria"	23
"Fernando Rodrigues Martins"	69	"Julia Echeverria"	23
"Gustavo de Carvalho Marin"	69	"Julia Echeverria"	23
"Ademir Cavalheiro"	64	"Julia Echeverria"	23
"Adevailton Bernardo dos Santos"	68	"Julia Echeverria"	23
"Alessandra Riposati Arantes"	65	"Julia Echeverria"	23
"Djalmir Nestor Messias"	66	"Julia Echeverria"	23
"Marcel Novaes"	66	"Julia Echeverria"	23
"Alberto da Silva Morais"	70	"Julia Echeverria"	23
"Carlos Hernrique Gomes"	65	"Julia Echeverria"	23
"Daniela Cristina de Oliveira"	72	"Julia Echeverria"	23
"Disney Oliver"	71	"Julia Echeverria"	23
"Henrique Tomaz Gonzaga"	68	"Julia Echeverria"	23
"Jamil Salem"	66	"Julia Echeverria"	23
"Julia Vingadora"	71	"Julia Echeverria"	23
"Roberto Carlos"	65	"Julia Echeverria"	23
"Cláudio Assembly"	64	"Julia Echeverria"	23
"Elaine Java"	63	"Julia Echeverria"	23
"Lilian Rodrigues Sant’ Anna Campos"	70	"Julia Echeverria"	23
"Clelia Regina Cafer"	66	"Julia Echeverria"	23
"Marisa Aparecida Elias"	70	"Julia Echeverria"	23
"Barbara Dias Rezende Gontijo"	63	"Julia Echeverria"	23
"Tatiana Carneiro de Resende"	63	"Julia Echeverria"	23
"Alessandro Gomes Enoque"	70	"Julia Echeverria"	23
"Alex Fernando Borges"	68	"Julia Echeverria"	23
"Alexandre Alves Alvenha"	70	"Julia Echeverria"	23
"Alexandre Cacheffo"	71	"Julia Echeverria"	23
"Alexandre Calzavara Yoshida"	72	"Julia Echeverria"	23
"Severo Snape"	54	"Julia Echeverria"	23
"Gina Maira"	65	"Guilherme Duarte"	24
"Marcelo Keese Albertini"	62	"Guilherme Duarte"	24
"Rivalino Matias Júnior"	69	"Guilherme Duarte"	24
"André Backes"	63	"Guilherme Duarte"	24
"Bruno Augusto Nassif Travençolo"	66	"Guilherme Duarte"	24
"Luiz Gustavo Almeida Martins"	67	"Guilherme Duarte"	24
"Ailton Gonçalves Rodrigues Junior"	69	"Guilherme Duarte"	24
"Ariádine Cristine de Almeida"	71	"Guilherme Duarte"	24
"Giuliano Buzá Jacobucci"	67	"Guilherme Duarte"	24
"Jeamylle Nilin Gonçalves"	70	"Guilherme Duarte"	24
"Cassiano Aimberê Dorneles Welker"	69	"Guilherme Duarte"	24
"Admilson Lopes dos Santos"	72	"Guilherme Duarte"	24
"Adriana Rodrigues da Silva"	68	"Guilherme Duarte"	24
"Camila Mariana Ruiz"	71	"Guilherme Duarte"	24
"Fernando Rodrigo Rafaeli"	68	"Guilherme Duarte"	24
"Taciana Oliveira Souza"	69	"Guilherme Duarte"	24
"Jean Ponciano"	69	"Guilherme Duarte"	24
"Elaine Ribeiro"	67	"Guilherme Duarte"	24
"Alexsandro Soares"	71	"Guilherme Duarte"	24
"Pedro Frosi"	70	"Guilherme Duarte"	24
"Marcia Aparecida Fernandes"	65	"Guilherme Duarte"	24
"Adriano Mota Loyola"	69	"Guilherme Duarte"	24
"Alessandra Maia de Castro Prado"	71	"Guilherme Duarte"	24
"Álex Moreira Herval"	67	"Guilherme Duarte"	24
"Ana Paula Turrioni Hidalgo"	66	"Guilherme Duarte"	24
"Ana Paula de Lima Oliveira"	69	"Guilherme Duarte"	24
"Belchior de Sousa"	68	"Guilherme Duarte"	24
"Elsieni Coelho da Silva"	63	"Guilherme Duarte"	24
"Gastao da Cunha Frota"	67	"Guilherme Duarte"	24
"Nikoleta Tzvetanova Kerinska"	65	"Guilherme Duarte"	24
"Renato Palumbo Doria"	63	"Guilherme Duarte"	24
"Adriana Pastorello Buim Arena"	67	"Guilherme Duarte"	24
"Aldeci Cacique Calixto"	72	"Guilherme Duarte"	24
"Aléxia Pádua Franco"	69	"Guilherme Duarte"	24
"Ana Beatriz da Silva Duarte"	62	"Guilherme Duarte"	24
"Andrea Maturano Longarezi"	72	"Guilherme Duarte"	24
"Jailson Mendes"	70	"Guilherme Duarte"	24
"Gabriel Jesus"	68	"Guilherme Duarte"	24
"Luciano Hulk"	70	"Guilherme Duarte"	24
"João Guilherme"	70	"Guilherme Duarte"	24
"Péricles Mendes"	63	"Guilherme Duarte"	24
"Alcino Eduardo Bonella"	64	"Guilherme Duarte"	24
"Alexandre Guimarães Tadeu de Soares"	68	"Guilherme Duarte"	24
"Ana Maria Said"	70	"Guilherme Duarte"	24
"Anselmo Tadeu Ferreira"	63	"Guilherme Duarte"	24
"Dennys Garcia Xavier"	70	"Guilherme Duarte"	24
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Guilherme Duarte"	24
"Lucas de Assis Ribeiro"	72	"Guilherme Duarte"	24
"Natália Mundim Tôrres"	72	"Guilherme Duarte"	24
"Tiago Wilson Patriarca Mineo "	68	"Guilherme Duarte"	24
"Neide Maria da Silva "	64	"Guilherme Duarte"	24
"Alexandre Garrido da Silva"	71	"Guilherme Duarte"	24
"Beatriz Corrêa Camargo"	72	"Guilherme Duarte"	24
"Daniela de Melo Crosara"	68	"Guilherme Duarte"	24
"Fernando Rodrigues Martins"	69	"Guilherme Duarte"	24
"Gustavo de Carvalho Marin"	69	"Guilherme Duarte"	24
"Ademir Cavalheiro"	64	"Guilherme Duarte"	24
"Adevailton Bernardo dos Santos"	68	"Guilherme Duarte"	24
"Alessandra Riposati Arantes"	65	"Guilherme Duarte"	24
"Djalmir Nestor Messias"	66	"Guilherme Duarte"	24
"Marcel Novaes"	66	"Guilherme Duarte"	24
"Alberto da Silva Morais"	70	"Guilherme Duarte"	24
"Carlos Hernrique Gomes"	65	"Guilherme Duarte"	24
"Daniela Cristina de Oliveira"	72	"Guilherme Duarte"	24
"Disney Oliver"	71	"Guilherme Duarte"	24
"Henrique Tomaz Gonzaga"	68	"Guilherme Duarte"	24
"Jamil Salem"	66	"Guilherme Duarte"	24
"Julia Vingadora"	71	"Guilherme Duarte"	24
"Roberto Carlos"	65	"Guilherme Duarte"	24
"Cláudio Assembly"	64	"Guilherme Duarte"	24
"Elaine Java"	63	"Guilherme Duarte"	24
"Lilian Rodrigues Sant’ Anna Campos"	70	"Guilherme Duarte"	24
"Clelia Regina Cafer"	66	"Guilherme Duarte"	24
"Marisa Aparecida Elias"	70	"Guilherme Duarte"	24
"Barbara Dias Rezende Gontijo"	63	"Guilherme Duarte"	24
"Tatiana Carneiro de Resende"	63	"Guilherme Duarte"	24
"Alessandro Gomes Enoque"	70	"Guilherme Duarte"	24
"Alex Fernando Borges"	68	"Guilherme Duarte"	24
"Alexandre Alves Alvenha"	70	"Guilherme Duarte"	24
"Alexandre Cacheffo"	71	"Guilherme Duarte"	24
"Alexandre Calzavara Yoshida"	72	"Guilherme Duarte"	24
"Severo Snape"	54	"Guilherme Duarte"	24
"Gina Maira"	65	"Rodrigo da Silva"	22
"Marcelo Keese Albertini"	62	"Rodrigo da Silva"	22
"Rivalino Matias Júnior"	69	"Rodrigo da Silva"	22
"André Backes"	63	"Rodrigo da Silva"	22
"Bruno Augusto Nassif Travençolo"	66	"Rodrigo da Silva"	22
"Luiz Gustavo Almeida Martins"	67	"Rodrigo da Silva"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Rodrigo da Silva"	22
"Ariádine Cristine de Almeida"	71	"Rodrigo da Silva"	22
"Giuliano Buzá Jacobucci"	67	"Rodrigo da Silva"	22
"Jeamylle Nilin Gonçalves"	70	"Rodrigo da Silva"	22
"Cassiano Aimberê Dorneles Welker"	69	"Rodrigo da Silva"	22
"Admilson Lopes dos Santos"	72	"Rodrigo da Silva"	22
"Adriana Rodrigues da Silva"	68	"Rodrigo da Silva"	22
"Camila Mariana Ruiz"	71	"Rodrigo da Silva"	22
"Fernando Rodrigo Rafaeli"	68	"Rodrigo da Silva"	22
"Taciana Oliveira Souza"	69	"Rodrigo da Silva"	22
"Jean Ponciano"	69	"Rodrigo da Silva"	22
"Elaine Ribeiro"	67	"Rodrigo da Silva"	22
"Alexsandro Soares"	71	"Rodrigo da Silva"	22
"Pedro Frosi"	70	"Rodrigo da Silva"	22
"Marcia Aparecida Fernandes"	65	"Rodrigo da Silva"	22
"Adriano Mota Loyola"	69	"Rodrigo da Silva"	22
"Alessandra Maia de Castro Prado"	71	"Rodrigo da Silva"	22
"Álex Moreira Herval"	67	"Rodrigo da Silva"	22
"Ana Paula Turrioni Hidalgo"	66	"Rodrigo da Silva"	22
"Ana Paula de Lima Oliveira"	69	"Rodrigo da Silva"	22
"Belchior de Sousa"	68	"Rodrigo da Silva"	22
"Elsieni Coelho da Silva"	63	"Rodrigo da Silva"	22
"Gastao da Cunha Frota"	67	"Rodrigo da Silva"	22
"Nikoleta Tzvetanova Kerinska"	65	"Rodrigo da Silva"	22
"Renato Palumbo Doria"	63	"Rodrigo da Silva"	22
"Adriana Pastorello Buim Arena"	67	"Rodrigo da Silva"	22
"Aldeci Cacique Calixto"	72	"Rodrigo da Silva"	22
"Aléxia Pádua Franco"	69	"Rodrigo da Silva"	22
"Ana Beatriz da Silva Duarte"	62	"Rodrigo da Silva"	22
"Andrea Maturano Longarezi"	72	"Rodrigo da Silva"	22
"Jailson Mendes"	70	"Rodrigo da Silva"	22
"Gabriel Jesus"	68	"Rodrigo da Silva"	22
"Luciano Hulk"	70	"Rodrigo da Silva"	22
"João Guilherme"	70	"Rodrigo da Silva"	22
"Péricles Mendes"	63	"Rodrigo da Silva"	22
"Alcino Eduardo Bonella"	64	"Rodrigo da Silva"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Rodrigo da Silva"	22
"Ana Maria Said"	70	"Rodrigo da Silva"	22
"Anselmo Tadeu Ferreira"	63	"Rodrigo da Silva"	22
"Dennys Garcia Xavier"	70	"Rodrigo da Silva"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Rodrigo da Silva"	22
"Lucas de Assis Ribeiro"	72	"Rodrigo da Silva"	22
"Natália Mundim Tôrres"	72	"Rodrigo da Silva"	22
"Tiago Wilson Patriarca Mineo "	68	"Rodrigo da Silva"	22
"Neide Maria da Silva "	64	"Rodrigo da Silva"	22
"Alexandre Garrido da Silva"	71	"Rodrigo da Silva"	22
"Beatriz Corrêa Camargo"	72	"Rodrigo da Silva"	22
"Daniela de Melo Crosara"	68	"Rodrigo da Silva"	22
"Fernando Rodrigues Martins"	69	"Rodrigo da Silva"	22
"Gustavo de Carvalho Marin"	69	"Rodrigo da Silva"	22
"Ademir Cavalheiro"	64	"Rodrigo da Silva"	22
"Adevailton Bernardo dos Santos"	68	"Rodrigo da Silva"	22
"Alessandra Riposati Arantes"	65	"Rodrigo da Silva"	22
"Djalmir Nestor Messias"	66	"Rodrigo da Silva"	22
"Marcel Novaes"	66	"Rodrigo da Silva"	22
"Alberto da Silva Morais"	70	"Rodrigo da Silva"	22
"Carlos Hernrique Gomes"	65	"Rodrigo da Silva"	22
"Daniela Cristina de Oliveira"	72	"Rodrigo da Silva"	22
"Disney Oliver"	71	"Rodrigo da Silva"	22
"Henrique Tomaz Gonzaga"	68	"Rodrigo da Silva"	22
"Jamil Salem"	66	"Rodrigo da Silva"	22
"Julia Vingadora"	71	"Rodrigo da Silva"	22
"Roberto Carlos"	65	"Rodrigo da Silva"	22
"Cláudio Assembly"	64	"Rodrigo da Silva"	22
"Elaine Java"	63	"Rodrigo da Silva"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Rodrigo da Silva"	22
"Clelia Regina Cafer"	66	"Rodrigo da Silva"	22
"Marisa Aparecida Elias"	70	"Rodrigo da Silva"	22
"Barbara Dias Rezende Gontijo"	63	"Rodrigo da Silva"	22
"Tatiana Carneiro de Resende"	63	"Rodrigo da Silva"	22
"Alessandro Gomes Enoque"	70	"Rodrigo da Silva"	22
"Alex Fernando Borges"	68	"Rodrigo da Silva"	22
"Alexandre Alves Alvenha"	70	"Rodrigo da Silva"	22
"Alexandre Cacheffo"	71	"Rodrigo da Silva"	22
"Alexandre Calzavara Yoshida"	72	"Rodrigo da Silva"	22
"Severo Snape"	54	"Rodrigo da Silva"	22
"Gina Maira"	65	"Rafael Henrique Guimarães"	19
"Marcelo Keese Albertini"	62	"Rafael Henrique Guimarães"	19
"Rivalino Matias Júnior"	69	"Rafael Henrique Guimarães"	19
"André Backes"	63	"Rafael Henrique Guimarães"	19
"Bruno Augusto Nassif Travençolo"	66	"Rafael Henrique Guimarães"	19
"Luiz Gustavo Almeida Martins"	67	"Rafael Henrique Guimarães"	19
"Ailton Gonçalves Rodrigues Junior"	69	"Rafael Henrique Guimarães"	19
"Ariádine Cristine de Almeida"	71	"Rafael Henrique Guimarães"	19
"Giuliano Buzá Jacobucci"	67	"Rafael Henrique Guimarães"	19
"Jeamylle Nilin Gonçalves"	70	"Rafael Henrique Guimarães"	19
"Cassiano Aimberê Dorneles Welker"	69	"Rafael Henrique Guimarães"	19
"Admilson Lopes dos Santos"	72	"Rafael Henrique Guimarães"	19
"Adriana Rodrigues da Silva"	68	"Rafael Henrique Guimarães"	19
"Camila Mariana Ruiz"	71	"Rafael Henrique Guimarães"	19
"Fernando Rodrigo Rafaeli"	68	"Rafael Henrique Guimarães"	19
"Taciana Oliveira Souza"	69	"Rafael Henrique Guimarães"	19
"Jean Ponciano"	69	"Rafael Henrique Guimarães"	19
"Elaine Ribeiro"	67	"Rafael Henrique Guimarães"	19
"Alexsandro Soares"	71	"Rafael Henrique Guimarães"	19
"Pedro Frosi"	70	"Rafael Henrique Guimarães"	19
"Marcia Aparecida Fernandes"	65	"Rafael Henrique Guimarães"	19
"Adriano Mota Loyola"	69	"Rafael Henrique Guimarães"	19
"Alessandra Maia de Castro Prado"	71	"Rafael Henrique Guimarães"	19
"Álex Moreira Herval"	67	"Rafael Henrique Guimarães"	19
"Ana Paula Turrioni Hidalgo"	66	"Rafael Henrique Guimarães"	19
"Ana Paula de Lima Oliveira"	69	"Rafael Henrique Guimarães"	19
"Belchior de Sousa"	68	"Rafael Henrique Guimarães"	19
"Elsieni Coelho da Silva"	63	"Rafael Henrique Guimarães"	19
"Gastao da Cunha Frota"	67	"Rafael Henrique Guimarães"	19
"Nikoleta Tzvetanova Kerinska"	65	"Rafael Henrique Guimarães"	19
"Renato Palumbo Doria"	63	"Rafael Henrique Guimarães"	19
"Adriana Pastorello Buim Arena"	67	"Rafael Henrique Guimarães"	19
"Aldeci Cacique Calixto"	72	"Rafael Henrique Guimarães"	19
"Aléxia Pádua Franco"	69	"Rafael Henrique Guimarães"	19
"Ana Beatriz da Silva Duarte"	62	"Rafael Henrique Guimarães"	19
"Andrea Maturano Longarezi"	72	"Rafael Henrique Guimarães"	19
"Jailson Mendes"	70	"Rafael Henrique Guimarães"	19
"Gabriel Jesus"	68	"Rafael Henrique Guimarães"	19
"Luciano Hulk"	70	"Rafael Henrique Guimarães"	19
"João Guilherme"	70	"Rafael Henrique Guimarães"	19
"Péricles Mendes"	63	"Rafael Henrique Guimarães"	19
"Alcino Eduardo Bonella"	64	"Rafael Henrique Guimarães"	19
"Alexandre Guimarães Tadeu de Soares"	68	"Rafael Henrique Guimarães"	19
"Ana Maria Said"	70	"Rafael Henrique Guimarães"	19
"Anselmo Tadeu Ferreira"	63	"Rafael Henrique Guimarães"	19
"Dennys Garcia Xavier"	70	"Rafael Henrique Guimarães"	19
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Rafael Henrique Guimarães"	19
"Lucas de Assis Ribeiro"	72	"Rafael Henrique Guimarães"	19
"Natália Mundim Tôrres"	72	"Rafael Henrique Guimarães"	19
"Tiago Wilson Patriarca Mineo "	68	"Rafael Henrique Guimarães"	19
"Neide Maria da Silva "	64	"Rafael Henrique Guimarães"	19
"Alexandre Garrido da Silva"	71	"Rafael Henrique Guimarães"	19
"Beatriz Corrêa Camargo"	72	"Rafael Henrique Guimarães"	19
"Daniela de Melo Crosara"	68	"Rafael Henrique Guimarães"	19
"Fernando Rodrigues Martins"	69	"Rafael Henrique Guimarães"	19
"Gustavo de Carvalho Marin"	69	"Rafael Henrique Guimarães"	19
"Ademir Cavalheiro"	64	"Rafael Henrique Guimarães"	19
"Adevailton Bernardo dos Santos"	68	"Rafael Henrique Guimarães"	19
"Alessandra Riposati Arantes"	65	"Rafael Henrique Guimarães"	19
"Djalmir Nestor Messias"	66	"Rafael Henrique Guimarães"	19
"Marcel Novaes"	66	"Rafael Henrique Guimarães"	19
"Alberto da Silva Morais"	70	"Rafael Henrique Guimarães"	19
"Carlos Hernrique Gomes"	65	"Rafael Henrique Guimarães"	19
"Daniela Cristina de Oliveira"	72	"Rafael Henrique Guimarães"	19
"Disney Oliver"	71	"Rafael Henrique Guimarães"	19
"Henrique Tomaz Gonzaga"	68	"Rafael Henrique Guimarães"	19
"Jamil Salem"	66	"Rafael Henrique Guimarães"	19
"Julia Vingadora"	71	"Rafael Henrique Guimarães"	19
"Roberto Carlos"	65	"Rafael Henrique Guimarães"	19
"Cláudio Assembly"	64	"Rafael Henrique Guimarães"	19
"Elaine Java"	63	"Rafael Henrique Guimarães"	19
"Lilian Rodrigues Sant’ Anna Campos"	70	"Rafael Henrique Guimarães"	19
"Clelia Regina Cafer"	66	"Rafael Henrique Guimarães"	19
"Marisa Aparecida Elias"	70	"Rafael Henrique Guimarães"	19
"Barbara Dias Rezende Gontijo"	63	"Rafael Henrique Guimarães"	19
"Tatiana Carneiro de Resende"	63	"Rafael Henrique Guimarães"	19
"Alessandro Gomes Enoque"	70	"Rafael Henrique Guimarães"	19
"Alex Fernando Borges"	68	"Rafael Henrique Guimarães"	19
"Alexandre Alves Alvenha"	70	"Rafael Henrique Guimarães"	19
"Alexandre Cacheffo"	71	"Rafael Henrique Guimarães"	19
"Alexandre Calzavara Yoshida"	72	"Rafael Henrique Guimarães"	19
"Severo Snape"	54	"Rafael Henrique Guimarães"	19
"Gina Maira"	65	"Felipe Langer"	22
"Marcelo Keese Albertini"	62	"Felipe Langer"	22
"Rivalino Matias Júnior"	69	"Felipe Langer"	22
"André Backes"	63	"Felipe Langer"	22
"Bruno Augusto Nassif Travençolo"	66	"Felipe Langer"	22
"Luiz Gustavo Almeida Martins"	67	"Felipe Langer"	22
"Ailton Gonçalves Rodrigues Junior"	69	"Felipe Langer"	22
"Ariádine Cristine de Almeida"	71	"Felipe Langer"	22
"Giuliano Buzá Jacobucci"	67	"Felipe Langer"	22
"Jeamylle Nilin Gonçalves"	70	"Felipe Langer"	22
"Cassiano Aimberê Dorneles Welker"	69	"Felipe Langer"	22
"Admilson Lopes dos Santos"	72	"Felipe Langer"	22
"Adriana Rodrigues da Silva"	68	"Felipe Langer"	22
"Camila Mariana Ruiz"	71	"Felipe Langer"	22
"Fernando Rodrigo Rafaeli"	68	"Felipe Langer"	22
"Taciana Oliveira Souza"	69	"Felipe Langer"	22
"Jean Ponciano"	69	"Felipe Langer"	22
"Elaine Ribeiro"	67	"Felipe Langer"	22
"Alexsandro Soares"	71	"Felipe Langer"	22
"Pedro Frosi"	70	"Felipe Langer"	22
"Marcia Aparecida Fernandes"	65	"Felipe Langer"	22
"Adriano Mota Loyola"	69	"Felipe Langer"	22
"Alessandra Maia de Castro Prado"	71	"Felipe Langer"	22
"Álex Moreira Herval"	67	"Felipe Langer"	22
"Ana Paula Turrioni Hidalgo"	66	"Felipe Langer"	22
"Ana Paula de Lima Oliveira"	69	"Felipe Langer"	22
"Belchior de Sousa"	68	"Felipe Langer"	22
"Elsieni Coelho da Silva"	63	"Felipe Langer"	22
"Gastao da Cunha Frota"	67	"Felipe Langer"	22
"Nikoleta Tzvetanova Kerinska"	65	"Felipe Langer"	22
"Renato Palumbo Doria"	63	"Felipe Langer"	22
"Adriana Pastorello Buim Arena"	67	"Felipe Langer"	22
"Aldeci Cacique Calixto"	72	"Felipe Langer"	22
"Aléxia Pádua Franco"	69	"Felipe Langer"	22
"Ana Beatriz da Silva Duarte"	62	"Felipe Langer"	22
"Andrea Maturano Longarezi"	72	"Felipe Langer"	22
"Jailson Mendes"	70	"Felipe Langer"	22
"Gabriel Jesus"	68	"Felipe Langer"	22
"Luciano Hulk"	70	"Felipe Langer"	22
"João Guilherme"	70	"Felipe Langer"	22
"Péricles Mendes"	63	"Felipe Langer"	22
"Alcino Eduardo Bonella"	64	"Felipe Langer"	22
"Alexandre Guimarães Tadeu de Soares"	68	"Felipe Langer"	22
"Ana Maria Said"	70	"Felipe Langer"	22
"Anselmo Tadeu Ferreira"	63	"Felipe Langer"	22
"Dennys Garcia Xavier"	70	"Felipe Langer"	22
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Felipe Langer"	22
"Lucas de Assis Ribeiro"	72	"Felipe Langer"	22
"Natália Mundim Tôrres"	72	"Felipe Langer"	22
"Tiago Wilson Patriarca Mineo "	68	"Felipe Langer"	22
"Neide Maria da Silva "	64	"Felipe Langer"	22
"Alexandre Garrido da Silva"	71	"Felipe Langer"	22
"Beatriz Corrêa Camargo"	72	"Felipe Langer"	22
"Daniela de Melo Crosara"	68	"Felipe Langer"	22
"Fernando Rodrigues Martins"	69	"Felipe Langer"	22
"Gustavo de Carvalho Marin"	69	"Felipe Langer"	22
"Ademir Cavalheiro"	64	"Felipe Langer"	22
"Adevailton Bernardo dos Santos"	68	"Felipe Langer"	22
"Alessandra Riposati Arantes"	65	"Felipe Langer"	22
"Djalmir Nestor Messias"	66	"Felipe Langer"	22
"Marcel Novaes"	66	"Felipe Langer"	22
"Alberto da Silva Morais"	70	"Felipe Langer"	22
"Carlos Hernrique Gomes"	65	"Felipe Langer"	22
"Daniela Cristina de Oliveira"	72	"Felipe Langer"	22
"Disney Oliver"	71	"Felipe Langer"	22
"Henrique Tomaz Gonzaga"	68	"Felipe Langer"	22
"Jamil Salem"	66	"Felipe Langer"	22
"Julia Vingadora"	71	"Felipe Langer"	22
"Roberto Carlos"	65	"Felipe Langer"	22
"Cláudio Assembly"	64	"Felipe Langer"	22
"Elaine Java"	63	"Felipe Langer"	22
"Lilian Rodrigues Sant’ Anna Campos"	70	"Felipe Langer"	22
"Clelia Regina Cafer"	66	"Felipe Langer"	22
"Marisa Aparecida Elias"	70	"Felipe Langer"	22
"Barbara Dias Rezende Gontijo"	63	"Felipe Langer"	22
"Tatiana Carneiro de Resende"	63	"Felipe Langer"	22
"Alessandro Gomes Enoque"	70	"Felipe Langer"	22
"Alex Fernando Borges"	68	"Felipe Langer"	22
"Alexandre Alves Alvenha"	70	"Felipe Langer"	22
"Alexandre Cacheffo"	71	"Felipe Langer"	22
"Alexandre Calzavara Yoshida"	72	"Felipe Langer"	22
"Severo Snape"	54	"Felipe Langer"	22
"Gina Maira"	65	"Lucas Daniel Cunha"	19
"Marcelo Keese Albertini"	62	"Lucas Daniel Cunha"	19
"Rivalino Matias Júnior"	69	"Lucas Daniel Cunha"	19
"André Backes"	63	"Lucas Daniel Cunha"	19
"Bruno Augusto Nassif Travençolo"	66	"Lucas Daniel Cunha"	19
"Luiz Gustavo Almeida Martins"	67	"Lucas Daniel Cunha"	19
"Ailton Gonçalves Rodrigues Junior"	69	"Lucas Daniel Cunha"	19
"Ariádine Cristine de Almeida"	71	"Lucas Daniel Cunha"	19
"Giuliano Buzá Jacobucci"	67	"Lucas Daniel Cunha"	19
"Jeamylle Nilin Gonçalves"	70	"Lucas Daniel Cunha"	19
"Cassiano Aimberê Dorneles Welker"	69	"Lucas Daniel Cunha"	19
"Admilson Lopes dos Santos"	72	"Lucas Daniel Cunha"	19
"Adriana Rodrigues da Silva"	68	"Lucas Daniel Cunha"	19
"Camila Mariana Ruiz"	71	"Lucas Daniel Cunha"	19
"Fernando Rodrigo Rafaeli"	68	"Lucas Daniel Cunha"	19
"Taciana Oliveira Souza"	69	"Lucas Daniel Cunha"	19
"Jean Ponciano"	69	"Lucas Daniel Cunha"	19
"Elaine Ribeiro"	67	"Lucas Daniel Cunha"	19
"Alexsandro Soares"	71	"Lucas Daniel Cunha"	19
"Pedro Frosi"	70	"Lucas Daniel Cunha"	19
"Marcia Aparecida Fernandes"	65	"Lucas Daniel Cunha"	19
"Adriano Mota Loyola"	69	"Lucas Daniel Cunha"	19
"Alessandra Maia de Castro Prado"	71	"Lucas Daniel Cunha"	19
"Álex Moreira Herval"	67	"Lucas Daniel Cunha"	19
"Ana Paula Turrioni Hidalgo"	66	"Lucas Daniel Cunha"	19
"Ana Paula de Lima Oliveira"	69	"Lucas Daniel Cunha"	19
"Belchior de Sousa"	68	"Lucas Daniel Cunha"	19
"Elsieni Coelho da Silva"	63	"Lucas Daniel Cunha"	19
"Gastao da Cunha Frota"	67	"Lucas Daniel Cunha"	19
"Nikoleta Tzvetanova Kerinska"	65	"Lucas Daniel Cunha"	19
"Renato Palumbo Doria"	63	"Lucas Daniel Cunha"	19
"Adriana Pastorello Buim Arena"	67	"Lucas Daniel Cunha"	19
"Aldeci Cacique Calixto"	72	"Lucas Daniel Cunha"	19
"Aléxia Pádua Franco"	69	"Lucas Daniel Cunha"	19
"Ana Beatriz da Silva Duarte"	62	"Lucas Daniel Cunha"	19
"Andrea Maturano Longarezi"	72	"Lucas Daniel Cunha"	19
"Jailson Mendes"	70	"Lucas Daniel Cunha"	19
"Gabriel Jesus"	68	"Lucas Daniel Cunha"	19
"Luciano Hulk"	70	"Lucas Daniel Cunha"	19
"João Guilherme"	70	"Lucas Daniel Cunha"	19
"Péricles Mendes"	63	"Lucas Daniel Cunha"	19
"Alcino Eduardo Bonella"	64	"Lucas Daniel Cunha"	19
"Alexandre Guimarães Tadeu de Soares"	68	"Lucas Daniel Cunha"	19
"Ana Maria Said"	70	"Lucas Daniel Cunha"	19
"Anselmo Tadeu Ferreira"	63	"Lucas Daniel Cunha"	19
"Dennys Garcia Xavier"	70	"Lucas Daniel Cunha"	19
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Lucas Daniel Cunha"	19
"Lucas de Assis Ribeiro"	72	"Lucas Daniel Cunha"	19
"Natália Mundim Tôrres"	72	"Lucas Daniel Cunha"	19
"Tiago Wilson Patriarca Mineo "	68	"Lucas Daniel Cunha"	19
"Neide Maria da Silva "	64	"Lucas Daniel Cunha"	19
"Alexandre Garrido da Silva"	71	"Lucas Daniel Cunha"	19
"Beatriz Corrêa Camargo"	72	"Lucas Daniel Cunha"	19
"Daniela de Melo Crosara"	68	"Lucas Daniel Cunha"	19
"Fernando Rodrigues Martins"	69	"Lucas Daniel Cunha"	19
"Gustavo de Carvalho Marin"	69	"Lucas Daniel Cunha"	19
"Ademir Cavalheiro"	64	"Lucas Daniel Cunha"	19
"Adevailton Bernardo dos Santos"	68	"Lucas Daniel Cunha"	19
"Alessandra Riposati Arantes"	65	"Lucas Daniel Cunha"	19
"Djalmir Nestor Messias"	66	"Lucas Daniel Cunha"	19
"Marcel Novaes"	66	"Lucas Daniel Cunha"	19
"Alberto da Silva Morais"	70	"Lucas Daniel Cunha"	19
"Carlos Hernrique Gomes"	65	"Lucas Daniel Cunha"	19
"Daniela Cristina de Oliveira"	72	"Lucas Daniel Cunha"	19
"Disney Oliver"	71	"Lucas Daniel Cunha"	19
"Henrique Tomaz Gonzaga"	68	"Lucas Daniel Cunha"	19
"Jamil Salem"	66	"Lucas Daniel Cunha"	19
"Julia Vingadora"	71	"Lucas Daniel Cunha"	19
"Roberto Carlos"	65	"Lucas Daniel Cunha"	19
"Cláudio Assembly"	64	"Lucas Daniel Cunha"	19
"Elaine Java"	63	"Lucas Daniel Cunha"	19
"Lilian Rodrigues Sant’ Anna Campos"	70	"Lucas Daniel Cunha"	19
"Clelia Regina Cafer"	66	"Lucas Daniel Cunha"	19
"Marisa Aparecida Elias"	70	"Lucas Daniel Cunha"	19
"Barbara Dias Rezende Gontijo"	63	"Lucas Daniel Cunha"	19
"Tatiana Carneiro de Resende"	63	"Lucas Daniel Cunha"	19
"Alessandro Gomes Enoque"	70	"Lucas Daniel Cunha"	19
"Alex Fernando Borges"	68	"Lucas Daniel Cunha"	19
"Alexandre Alves Alvenha"	70	"Lucas Daniel Cunha"	19
"Alexandre Cacheffo"	71	"Lucas Daniel Cunha"	19
"Alexandre Calzavara Yoshida"	72	"Lucas Daniel Cunha"	19
"Severo Snape"	54	"Lucas Daniel Cunha"	19
"Gina Maira"	65	"Laura Rezende Teixeira Santos"	19
"Marcelo Keese Albertini"	62	"Laura Rezende Teixeira Santos"	19
"Rivalino Matias Júnior"	69	"Laura Rezende Teixeira Santos"	19
"André Backes"	63	"Laura Rezende Teixeira Santos"	19
"Bruno Augusto Nassif Travençolo"	66	"Laura Rezende Teixeira Santos"	19
"Luiz Gustavo Almeida Martins"	67	"Laura Rezende Teixeira Santos"	19
"Ailton Gonçalves Rodrigues Junior"	69	"Laura Rezende Teixeira Santos"	19
"Ariádine Cristine de Almeida"	71	"Laura Rezende Teixeira Santos"	19
"Giuliano Buzá Jacobucci"	67	"Laura Rezende Teixeira Santos"	19
"Jeamylle Nilin Gonçalves"	70	"Laura Rezende Teixeira Santos"	19
"Cassiano Aimberê Dorneles Welker"	69	"Laura Rezende Teixeira Santos"	19
"Admilson Lopes dos Santos"	72	"Laura Rezende Teixeira Santos"	19
"Adriana Rodrigues da Silva"	68	"Laura Rezende Teixeira Santos"	19
"Camila Mariana Ruiz"	71	"Laura Rezende Teixeira Santos"	19
"Fernando Rodrigo Rafaeli"	68	"Laura Rezende Teixeira Santos"	19
"Taciana Oliveira Souza"	69	"Laura Rezende Teixeira Santos"	19
"Jean Ponciano"	69	"Laura Rezende Teixeira Santos"	19
"Elaine Ribeiro"	67	"Laura Rezende Teixeira Santos"	19
"Alexsandro Soares"	71	"Laura Rezende Teixeira Santos"	19
"Pedro Frosi"	70	"Laura Rezende Teixeira Santos"	19
"Marcia Aparecida Fernandes"	65	"Laura Rezende Teixeira Santos"	19
"Adriano Mota Loyola"	69	"Laura Rezende Teixeira Santos"	19
"Alessandra Maia de Castro Prado"	71	"Laura Rezende Teixeira Santos"	19
"Álex Moreira Herval"	67	"Laura Rezende Teixeira Santos"	19
"Ana Paula Turrioni Hidalgo"	66	"Laura Rezende Teixeira Santos"	19
"Ana Paula de Lima Oliveira"	69	"Laura Rezende Teixeira Santos"	19
"Belchior de Sousa"	68	"Laura Rezende Teixeira Santos"	19
"Elsieni Coelho da Silva"	63	"Laura Rezende Teixeira Santos"	19
"Gastao da Cunha Frota"	67	"Laura Rezende Teixeira Santos"	19
"Nikoleta Tzvetanova Kerinska"	65	"Laura Rezende Teixeira Santos"	19
"Renato Palumbo Doria"	63	"Laura Rezende Teixeira Santos"	19
"Adriana Pastorello Buim Arena"	67	"Laura Rezende Teixeira Santos"	19
"Aldeci Cacique Calixto"	72	"Laura Rezende Teixeira Santos"	19
"Aléxia Pádua Franco"	69	"Laura Rezende Teixeira Santos"	19
"Ana Beatriz da Silva Duarte"	62	"Laura Rezende Teixeira Santos"	19
"Andrea Maturano Longarezi"	72	"Laura Rezende Teixeira Santos"	19
"Jailson Mendes"	70	"Laura Rezende Teixeira Santos"	19
"Gabriel Jesus"	68	"Laura Rezende Teixeira Santos"	19
"Luciano Hulk"	70	"Laura Rezende Teixeira Santos"	19
"João Guilherme"	70	"Laura Rezende Teixeira Santos"	19
"Péricles Mendes"	63	"Laura Rezende Teixeira Santos"	19
"Alcino Eduardo Bonella"	64	"Laura Rezende Teixeira Santos"	19
"Alexandre Guimarães Tadeu de Soares"	68	"Laura Rezende Teixeira Santos"	19
"Ana Maria Said"	70	"Laura Rezende Teixeira Santos"	19
"Anselmo Tadeu Ferreira"	63	"Laura Rezende Teixeira Santos"	19
"Dennys Garcia Xavier"	70	"Laura Rezende Teixeira Santos"	19
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Laura Rezende Teixeira Santos"	19
"Lucas de Assis Ribeiro"	72	"Laura Rezende Teixeira Santos"	19
"Natália Mundim Tôrres"	72	"Laura Rezende Teixeira Santos"	19
"Tiago Wilson Patriarca Mineo "	68	"Laura Rezende Teixeira Santos"	19
"Neide Maria da Silva "	64	"Laura Rezende Teixeira Santos"	19
"Alexandre Garrido da Silva"	71	"Laura Rezende Teixeira Santos"	19
"Beatriz Corrêa Camargo"	72	"Laura Rezende Teixeira Santos"	19
"Daniela de Melo Crosara"	68	"Laura Rezende Teixeira Santos"	19
"Fernando Rodrigues Martins"	69	"Laura Rezende Teixeira Santos"	19
"Gustavo de Carvalho Marin"	69	"Laura Rezende Teixeira Santos"	19
"Ademir Cavalheiro"	64	"Laura Rezende Teixeira Santos"	19
"Adevailton Bernardo dos Santos"	68	"Laura Rezende Teixeira Santos"	19
"Alessandra Riposati Arantes"	65	"Laura Rezende Teixeira Santos"	19
"Djalmir Nestor Messias"	66	"Laura Rezende Teixeira Santos"	19
"Marcel Novaes"	66	"Laura Rezende Teixeira Santos"	19
"Alberto da Silva Morais"	70	"Laura Rezende Teixeira Santos"	19
"Carlos Hernrique Gomes"	65	"Laura Rezende Teixeira Santos"	19
"Daniela Cristina de Oliveira"	72	"Laura Rezende Teixeira Santos"	19
"Disney Oliver"	71	"Laura Rezende Teixeira Santos"	19
"Henrique Tomaz Gonzaga"	68	"Laura Rezende Teixeira Santos"	19
"Jamil Salem"	66	"Laura Rezende Teixeira Santos"	19
"Julia Vingadora"	71	"Laura Rezende Teixeira Santos"	19
"Roberto Carlos"	65	"Laura Rezende Teixeira Santos"	19
"Cláudio Assembly"	64	"Laura Rezende Teixeira Santos"	19
"Elaine Java"	63	"Laura Rezende Teixeira Santos"	19
"Lilian Rodrigues Sant’ Anna Campos"	70	"Laura Rezende Teixeira Santos"	19
"Clelia Regina Cafer"	66	"Laura Rezende Teixeira Santos"	19
"Marisa Aparecida Elias"	70	"Laura Rezende Teixeira Santos"	19
"Barbara Dias Rezende Gontijo"	63	"Laura Rezende Teixeira Santos"	19
"Tatiana Carneiro de Resende"	63	"Laura Rezende Teixeira Santos"	19
"Alessandro Gomes Enoque"	70	"Laura Rezende Teixeira Santos"	19
"Alex Fernando Borges"	68	"Laura Rezende Teixeira Santos"	19
"Alexandre Alves Alvenha"	70	"Laura Rezende Teixeira Santos"	19
"Alexandre Cacheffo"	71	"Laura Rezende Teixeira Santos"	19
"Alexandre Calzavara Yoshida"	72	"Laura Rezende Teixeira Santos"	19
"Severo Snape"	54	"Laura Rezende Teixeira Santos"	19
"Gina Maira"	65	"Mariana Serrano Guimaraes"	24
"Marcelo Keese Albertini"	62	"Mariana Serrano Guimaraes"	24
"Rivalino Matias Júnior"	69	"Mariana Serrano Guimaraes"	24
"André Backes"	63	"Mariana Serrano Guimaraes"	24
"Bruno Augusto Nassif Travençolo"	66	"Mariana Serrano Guimaraes"	24
"Luiz Gustavo Almeida Martins"	67	"Mariana Serrano Guimaraes"	24
"Ailton Gonçalves Rodrigues Junior"	69	"Mariana Serrano Guimaraes"	24
"Ariádine Cristine de Almeida"	71	"Mariana Serrano Guimaraes"	24
"Giuliano Buzá Jacobucci"	67	"Mariana Serrano Guimaraes"	24
"Jeamylle Nilin Gonçalves"	70	"Mariana Serrano Guimaraes"	24
"Cassiano Aimberê Dorneles Welker"	69	"Mariana Serrano Guimaraes"	24
"Admilson Lopes dos Santos"	72	"Mariana Serrano Guimaraes"	24
"Adriana Rodrigues da Silva"	68	"Mariana Serrano Guimaraes"	24
"Camila Mariana Ruiz"	71	"Mariana Serrano Guimaraes"	24
"Fernando Rodrigo Rafaeli"	68	"Mariana Serrano Guimaraes"	24
"Taciana Oliveira Souza"	69	"Mariana Serrano Guimaraes"	24
"Jean Ponciano"	69	"Mariana Serrano Guimaraes"	24
"Elaine Ribeiro"	67	"Mariana Serrano Guimaraes"	24
"Alexsandro Soares"	71	"Mariana Serrano Guimaraes"	24
"Pedro Frosi"	70	"Mariana Serrano Guimaraes"	24
"Marcia Aparecida Fernandes"	65	"Mariana Serrano Guimaraes"	24
"Adriano Mota Loyola"	69	"Mariana Serrano Guimaraes"	24
"Alessandra Maia de Castro Prado"	71	"Mariana Serrano Guimaraes"	24
"Álex Moreira Herval"	67	"Mariana Serrano Guimaraes"	24
"Ana Paula Turrioni Hidalgo"	66	"Mariana Serrano Guimaraes"	24
"Ana Paula de Lima Oliveira"	69	"Mariana Serrano Guimaraes"	24
"Belchior de Sousa"	68	"Mariana Serrano Guimaraes"	24
"Elsieni Coelho da Silva"	63	"Mariana Serrano Guimaraes"	24
"Gastao da Cunha Frota"	67	"Mariana Serrano Guimaraes"	24
"Nikoleta Tzvetanova Kerinska"	65	"Mariana Serrano Guimaraes"	24
"Renato Palumbo Doria"	63	"Mariana Serrano Guimaraes"	24
"Adriana Pastorello Buim Arena"	67	"Mariana Serrano Guimaraes"	24
"Aldeci Cacique Calixto"	72	"Mariana Serrano Guimaraes"	24
"Aléxia Pádua Franco"	69	"Mariana Serrano Guimaraes"	24
"Ana Beatriz da Silva Duarte"	62	"Mariana Serrano Guimaraes"	24
"Andrea Maturano Longarezi"	72	"Mariana Serrano Guimaraes"	24
"Jailson Mendes"	70	"Mariana Serrano Guimaraes"	24
"Gabriel Jesus"	68	"Mariana Serrano Guimaraes"	24
"Luciano Hulk"	70	"Mariana Serrano Guimaraes"	24
"João Guilherme"	70	"Mariana Serrano Guimaraes"	24
"Péricles Mendes"	63	"Mariana Serrano Guimaraes"	24
"Alcino Eduardo Bonella"	64	"Mariana Serrano Guimaraes"	24
"Alexandre Guimarães Tadeu de Soares"	68	"Mariana Serrano Guimaraes"	24
"Ana Maria Said"	70	"Mariana Serrano Guimaraes"	24
"Anselmo Tadeu Ferreira"	63	"Mariana Serrano Guimaraes"	24
"Dennys Garcia Xavier"	70	"Mariana Serrano Guimaraes"	24
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Mariana Serrano Guimaraes"	24
"Lucas de Assis Ribeiro"	72	"Mariana Serrano Guimaraes"	24
"Natália Mundim Tôrres"	72	"Mariana Serrano Guimaraes"	24
"Tiago Wilson Patriarca Mineo "	68	"Mariana Serrano Guimaraes"	24
"Neide Maria da Silva "	64	"Mariana Serrano Guimaraes"	24
"Alexandre Garrido da Silva"	71	"Mariana Serrano Guimaraes"	24
"Beatriz Corrêa Camargo"	72	"Mariana Serrano Guimaraes"	24
"Daniela de Melo Crosara"	68	"Mariana Serrano Guimaraes"	24
"Fernando Rodrigues Martins"	69	"Mariana Serrano Guimaraes"	24
"Gustavo de Carvalho Marin"	69	"Mariana Serrano Guimaraes"	24
"Ademir Cavalheiro"	64	"Mariana Serrano Guimaraes"	24
"Adevailton Bernardo dos Santos"	68	"Mariana Serrano Guimaraes"	24
"Alessandra Riposati Arantes"	65	"Mariana Serrano Guimaraes"	24
"Djalmir Nestor Messias"	66	"Mariana Serrano Guimaraes"	24
"Marcel Novaes"	66	"Mariana Serrano Guimaraes"	24
"Alberto da Silva Morais"	70	"Mariana Serrano Guimaraes"	24
"Carlos Hernrique Gomes"	65	"Mariana Serrano Guimaraes"	24
"Daniela Cristina de Oliveira"	72	"Mariana Serrano Guimaraes"	24
"Disney Oliver"	71	"Mariana Serrano Guimaraes"	24
"Henrique Tomaz Gonzaga"	68	"Mariana Serrano Guimaraes"	24
"Jamil Salem"	66	"Mariana Serrano Guimaraes"	24
"Julia Vingadora"	71	"Mariana Serrano Guimaraes"	24
"Roberto Carlos"	65	"Mariana Serrano Guimaraes"	24
"Cláudio Assembly"	64	"Mariana Serrano Guimaraes"	24
"Elaine Java"	63	"Mariana Serrano Guimaraes"	24
"Lilian Rodrigues Sant’ Anna Campos"	70	"Mariana Serrano Guimaraes"	24
"Clelia Regina Cafer"	66	"Mariana Serrano Guimaraes"	24
"Marisa Aparecida Elias"	70	"Mariana Serrano Guimaraes"	24
"Barbara Dias Rezende Gontijo"	63	"Mariana Serrano Guimaraes"	24
"Tatiana Carneiro de Resende"	63	"Mariana Serrano Guimaraes"	24
"Alessandro Gomes Enoque"	70	"Mariana Serrano Guimaraes"	24
"Alex Fernando Borges"	68	"Mariana Serrano Guimaraes"	24
"Alexandre Alves Alvenha"	70	"Mariana Serrano Guimaraes"	24
"Alexandre Cacheffo"	71	"Mariana Serrano Guimaraes"	24
"Alexandre Calzavara Yoshida"	72	"Mariana Serrano Guimaraes"	24
"Severo Snape"	54	"Mariana Serrano Guimaraes"	24
"Gina Maira"	65	"Emily Bronte"	24
"Marcelo Keese Albertini"	62	"Emily Bronte"	24
"Rivalino Matias Júnior"	69	"Emily Bronte"	24
"André Backes"	63	"Emily Bronte"	24
"Bruno Augusto Nassif Travençolo"	66	"Emily Bronte"	24
"Luiz Gustavo Almeida Martins"	67	"Emily Bronte"	24
"Ailton Gonçalves Rodrigues Junior"	69	"Emily Bronte"	24
"Ariádine Cristine de Almeida"	71	"Emily Bronte"	24
"Giuliano Buzá Jacobucci"	67	"Emily Bronte"	24
"Jeamylle Nilin Gonçalves"	70	"Emily Bronte"	24
"Cassiano Aimberê Dorneles Welker"	69	"Emily Bronte"	24
"Admilson Lopes dos Santos"	72	"Emily Bronte"	24
"Adriana Rodrigues da Silva"	68	"Emily Bronte"	24
"Camila Mariana Ruiz"	71	"Emily Bronte"	24
"Fernando Rodrigo Rafaeli"	68	"Emily Bronte"	24
"Taciana Oliveira Souza"	69	"Emily Bronte"	24
"Jean Ponciano"	69	"Emily Bronte"	24
"Elaine Ribeiro"	67	"Emily Bronte"	24
"Alexsandro Soares"	71	"Emily Bronte"	24
"Pedro Frosi"	70	"Emily Bronte"	24
"Marcia Aparecida Fernandes"	65	"Emily Bronte"	24
"Adriano Mota Loyola"	69	"Emily Bronte"	24
"Alessandra Maia de Castro Prado"	71	"Emily Bronte"	24
"Álex Moreira Herval"	67	"Emily Bronte"	24
"Ana Paula Turrioni Hidalgo"	66	"Emily Bronte"	24
"Ana Paula de Lima Oliveira"	69	"Emily Bronte"	24
"Belchior de Sousa"	68	"Emily Bronte"	24
"Elsieni Coelho da Silva"	63	"Emily Bronte"	24
"Gastao da Cunha Frota"	67	"Emily Bronte"	24
"Nikoleta Tzvetanova Kerinska"	65	"Emily Bronte"	24
"Renato Palumbo Doria"	63	"Emily Bronte"	24
"Adriana Pastorello Buim Arena"	67	"Emily Bronte"	24
"Aldeci Cacique Calixto"	72	"Emily Bronte"	24
"Aléxia Pádua Franco"	69	"Emily Bronte"	24
"Ana Beatriz da Silva Duarte"	62	"Emily Bronte"	24
"Andrea Maturano Longarezi"	72	"Emily Bronte"	24
"Jailson Mendes"	70	"Emily Bronte"	24
"Gabriel Jesus"	68	"Emily Bronte"	24
"Luciano Hulk"	70	"Emily Bronte"	24
"João Guilherme"	70	"Emily Bronte"	24
"Péricles Mendes"	63	"Emily Bronte"	24
"Alcino Eduardo Bonella"	64	"Emily Bronte"	24
"Alexandre Guimarães Tadeu de Soares"	68	"Emily Bronte"	24
"Ana Maria Said"	70	"Emily Bronte"	24
"Anselmo Tadeu Ferreira"	63	"Emily Bronte"	24
"Dennys Garcia Xavier"	70	"Emily Bronte"	24
"Kelly Aparecida Geraldo Yoneyama Tudini"	69	"Emily Bronte"	24
"Lucas de Assis Ribeiro"	72	"Emily Bronte"	24
"Natália Mundim Tôrres"	72	"Emily Bronte"	24
"Tiago Wilson Patriarca Mineo "	68	"Emily Bronte"	24
"Neide Maria da Silva "	64	"Emily Bronte"	24
"Alexandre Garrido da Silva"	71	"Emily Bronte"	24
"Beatriz Corrêa Camargo"	72	"Emily Bronte"	24
"Daniela de Melo Crosara"	68	"Emily Bronte"	24
"Fernando Rodrigues Martins"	69	"Emily Bronte"	24
"Gustavo de Carvalho Marin"	69	"Emily Bronte"	24
"Ademir Cavalheiro"	64	"Emily Bronte"	24
"Adevailton Bernardo dos Santos"	68	"Emily Bronte"	24
"Alessandra Riposati Arantes"	65	"Emily Bronte"	24
"Djalmir Nestor Messias"	66	"Emily Bronte"	24
"Marcel Novaes"	66	"Emily Bronte"	24
"Alberto da Silva Morais"	70	"Emily Bronte"	24
"Carlos Hernrique Gomes"	65	"Emily Bronte"	24
"Daniela Cristina de Oliveira"	72	"Emily Bronte"	24
"Disney Oliver"	71	"Emily Bronte"	24
"Henrique Tomaz Gonzaga"	68	"Emily Bronte"	24
"Jamil Salem"	66	"Emily Bronte"	24
"Julia Vingadora"	71	"Emily Bronte"	24
"Roberto Carlos"	65	"Emily Bronte"	24
"Cláudio Assembly"	64	"Emily Bronte"	24
"Elaine Java"	63	"Emily Bronte"	24
"Lilian Rodrigues Sant’ Anna Campos"	70	"Emily Bronte"	24
"Clelia Regina Cafer"	66	"Emily Bronte"	24
"Marisa Aparecida Elias"	70	"Emily Bronte"	24
"Barbara Dias Rezende Gontijo"	63	"Emily Bronte"	24
"Tatiana Carneiro de Resende"	63	"Emily Bronte"	24
"Alessandro Gomes Enoque"	70	"Emily Bronte"	24
"Alex Fernando Borges"	68	"Emily Bronte"	24
"Alexandre Alves Alvenha"	70	"Emily Bronte"	24
"Alexandre Cacheffo"	71	"Emily Bronte"	24
"Alexandre Calzavara Yoshida"	72	"Emily Bronte"	24
"Severo Snape"	54	"Emily Bronte"	24
*/

-- 15) CONSULTAS ENVOLVENDO JUNÇÕES COM UMA RELAÇÃO SENDO USADA MAIS DE UMA VEZ
-- (a) Listar o nome de uma disciplina juntamente com o *nome* de seu pré-requisito.
----- Renomeie o nome dos atributos da relação resultante para nome_disciplina e nome_prereq, respectivamente.
SELECT disc_regente.nome as nome_disciplina, disc_pre_requisito.nome as nome_prereq
FROM disciplina disc_regente, disciplina disc_pre_requisito, pre_requisito
WHERE disc_regente.codigo = pre_requisito.cod_disc AND disc_pre_requisito.codigo = pre_requisito.cod_pre;
/*
"nome_disciplina"	"nome_prereq"
"Algoritmo e Estrutura de Dados 1"	"Programação Procedimental"
"Algoritmo e Estrutura de Dados 2"	"Algoritmo e Estrutura de Dados 1"
"Bioquímica 2"	"Bioquímica 1"
"Anatomia dos Animais Domésticos"	"Fundamentos de Anatomia Veterinária"
"Etica II"	"Ética"
"Didática Geral II"	"Didática Geral"
"Historia da Arte II"	"Historia da Arte I"
"Arte Contemporanea II"	"Arte Contemporanea I"
"Direito Digital"	"Teoria do Direito"
"Direito do Trabalho 2"	"Direito do Trabalho 1"
"Física Básica II"	"Física Básica I"
"Física Básica III"	"Física Básica II"
"Imunologia"	"Analises Clinicas"
"Microbiologia"	"Genetica"
"Agrometeorologia"	"Manejo e Conservação do Solo e da Água"
"Agrometeorologia"	"Irrigação e Drenagem"
"Enfermagem Médica"	"Fundamentos em Enfermagem"
"Saúde Coletiva II"	"Saúde Coletiva I"
"Geologia 2"	"Geologia 1"
"Climatologia 2"	"Climatologia 1"
"Fundamentos de Matemática Elementar II"	"Fundamentos de Matemática Elementar I"
"Cálculo Diferencial e Integral II"	"Cálculo Diferencial e Integral I"
"Projeto e desenvolvimento 1"	"Sistemas de Banco de Dados"
"Unidade de Saúde Humana I (USH1)"	"Unidade de Constituição do Organismo"
"Comportamento Motor "	"Fisiologia do Exercício"
"Teoria e Prática do Treinamento II"	"Teoria e Prática do Treinamento I"
*/

-- (b) Listar os nomes das disciplinas que possuem mais carga horária que seus pré-requisito
------ ps: se não houver nenhuma, cadastrar pelo menos 2 para testar
insert into disciplina (codigo, nome, fac_disc, ch) 
values ('315   ', 'Física Básica IV', 'INFIS', 95);

insert into disciplina (codigo, nome, fac_disc, ch) 
values ('316   ', 'Física Básica V', 'INFIS', 100);

insert into pre_requisito (cod_disc, cod_pre)
values ('315','312'); --fisicaIV, fisicaIII

insert into pre_requisito (cod_disc, cod_pre)
values ('316','315'); --fisicaV, fisicaIV
		
SELECT disc_regente.nome
FROM disciplina disc_regente, disciplina disc_prereq, pre_requisito
WHERE disc_regente.codigo = pre_requisito.cod_disc 
	AND disc_prereq.codigo = pre_requisito.cod_pre 
	AND disc_regente.ch > disc_prereq.ch;
/*
"nome"
"Física Básica IV"
"Microbiologia"
"Física Básica V"
*/



-- (c) Listar os nomes das disciplinas pertencem a faculdades distintas de seus pré-requisitos
------ ps: se não houver nenhuma, cadastrar pelo menos 2 para testar
insert into disciplina (codigo, nome, fac_disc, ch) 
values ('317   ', 'Física Básica VI', 'INFIS', 95);

insert into disciplina (codigo, nome, fac_disc, ch) 
values ('318   ', 'Física Básica VII', 'INFIS', 100);

insert into pre_requisito (cod_disc, cod_pre)
values ('317','MAT212'); --fisicaVI, calculoI(famat)

insert into pre_requisito (cod_disc, cod_pre)
values ('318','MAT213'); --fisicaVII, calculoII(famat)


SELECT disc_regente.nome
FROM disciplina disc_regente, disciplina disc_prereq, pre_requisito
WHERE disc_regente.codigo = pre_requisito.cod_disc 
	AND disc_prereq.codigo = pre_requisito.cod_pre 
	AND disc_regente.fac_disc <> disc_prereq.fac_disc;	
/*
"nome"
"Física Básica VI"
"Física Básica VII"
*/

-- (d) Listar as faculdades dos alunos e seus tutores
------ Na resposta mostrar o nome do aluno, nome de sua faculdade, o nome do professor e o nome de sua faculdade

SELECT estudante.nome as aluno, 
		fac_est.nome as faculdade_aluno, 
		professor.nome as professor, 
		fac_prof.nome as faculdade_professor
FROM estudante, professor, faculdade fac_est, faculdade fac_prof
WHERE estudante.tutor=professor.id 
		AND estudante.fac_est=fac_est.sigla 
		AND professor.fac_prof=fac_prof.sigla;
/*
"aluno"	"faculdade_aluno"	"professor"	"faculdade_professor"
"Pedro Henrique Silva"	"Faculdade da Computação"	"Marcelo Keese Albertini"	"Faculdade da Computação"
"Gabriel Borges Júnior"	"Faculdade da Computação"	"Rivalino Matias Júnior"	"Faculdade da Computação"
"Amanda Gomes de Oliveira"	"Faculdade da Computação"	"André Backes"	"Faculdade da Computação"
"Jorge Antônio Santos"	"Faculdade da Computação"	"Bruno Augusto Nassif Travençolo"	"Faculdade da Computação"
"Bruna Tobias Pinto"	"Faculdade da Computação"	"Luiz Gustavo Almeida Martins"	"Faculdade da Computação"
"Jonas Caravalho"	"Instituto de Biologia"	"Ailton Gonçalves Rodrigues Junior"	"Instituto de Biologia"
"Ana Silveira"	"Instituto de Biologia"	"Jeamylle Nilin Gonçalves"	"Instituto de Biologia"
"Guilherme da Cunha"	"Instituto de Biologia"	"Ariádine Cristine de Almeida"	"Instituto de Biologia"
"Davi Lucca Duarte"	"Instituto de Biologia"	"Ailton Gonçalves Rodrigues Junior"	"Instituto de Biologia"
"Henrique Corrêa de Oliveira"	"Faculdade da Computação"	"Alexsandro Soares"	"Faculdade da Computação"
"Gabriel de Araujo"	"Faculdade da Computação"	"Pedro Frosi"	"Faculdade da Computação"
"Luisa Gomes Ferreira"	"Faculdade da Computação"	"Elaine Ribeiro"	"Faculdade da Computação"
"Gabriela Pereira"	"Faculdade da Computação"	"Jean Ponciano"	"Faculdade da Computação"
"Gabriel Alves"	"Faculdade da Computação"	"Marcia Aparecida Fernandes"	"Faculdade da Computação"
"Joao Vitor Correia"	"Faculdade de Matematica"	"Taciana Oliveira Souza"	"Faculdade de Matematica"
"Marina Silva Gomes"	"Faculdade de Matematica"	"Fernando Rodrigo Rafaeli"	"Faculdade de Matematica"
"Maria Julia Oliveira"	"Faculdade de Matematica"	"Camila Mariana Ruiz"	"Faculdade de Matematica"
"Vicente Araujo Mendes"	"Faculdade de Matematica"	"Admilson Lopes dos Santos"	"Faculdade de Matematica"
"Alexandre Oliveira Rodrigues"	"Faculdade de Matematica"	"Adriana Rodrigues da Silva"	"Faculdade de Matematica"
"Vinicius Ribeiro"	"Faculdade de Odontologia"	"Adriano Mota Loyola"	"Faculdade de Odontologia"
"César Bertolin"	"Faculdade de Odontologia"	"Alessandra Maia de Castro Prado"	"Faculdade de Odontologia"
"Bruno José"	"Faculdade de Odontologia"	"Álex Moreira Herval"	"Faculdade de Odontologia"
"Elaine Maria"	"Faculdade de Odontologia"	"Ana Paula Turrioni Hidalgo"	"Faculdade de Odontologia"
"Carlos Silva"	"Faculdade de Odontologia"	"Ana Paula de Lima Oliveira"	"Faculdade de Odontologia"
"Isabella Melo Sousa"	"Instituto de Artes"	"Belchior de Sousa"	"Instituto de Artes"
"Jose Almeida Azevedo"	"Instituto de Artes"	"Elsieni Coelho da Silva"	"Instituto de Artes"
"Aline Oliveira Araujo"	"Instituto de Artes"	"Belchior de Sousa"	"Instituto de Artes"
"Andre Silva Martins"	"Instituto de Artes"	"Gastao da Cunha Frota"	"Instituto de Artes"
"Lavinia Sousa Carvalho"	"Instituto de Artes"	"Belchior de Sousa"	"Instituto de Artes"
"Victor Guilherme Oliveira Santos"	"Escola Técnica de Saúde"	"Adriana Pastorello Buim Arena"	"Escola Técnica de Saúde"
"Sara Pelegrineti de José"	"Escola Técnica de Saúde"	"Aldeci Cacique Calixto"	"Escola Técnica de Saúde"
"Davi Rui Pasquim"	"Escola Técnica de Saúde"	"Aléxia Pádua Franco"	"Escola Técnica de Saúde"
"Diego Ruas"	"Escola Técnica de Saúde"	"Ana Beatriz da Silva Duarte"	"Escola Técnica de Saúde"
"Pedro Tiene Silva"	"Escola Técnica de Saúde"	"Andrea Maturano Longarezi"	"Escola Técnica de Saúde"
"Jason Manmoa"	"Faculdade de Educação Física"	"Jailson Mendes"	"Faculdade de Educação Física"
"Scott Pilgrim"	"Faculdade de Educação Física"	"Gabriel Jesus"	"Faculdade de Educação Física"
"Naruto Uzumaki"	"Faculdade de Educação Física"	"Gabriel Jesus"	"Faculdade de Educação Física"
"Frederico Krueger"	"Faculdade de Educação Física"	"João Guilherme"	"Faculdade de Educação Física"
"Jason Thirtenn"	"Faculdade de Educação Física"	"João Guilherme"	"Faculdade de Educação Física"
"Aline Ferreira Magalhaes"	"Instituto de Filosofia"	"Alcino Eduardo Bonella"	"Instituto de Filosofia"
"Cristiano Bueno de Almeida"	"Instituto de Filosofia"	"Alcino Eduardo Bonella"	"Instituto de Filosofia"
"Derli Luis Arantes Junior"	"Instituto de Filosofia"	"Anselmo Tadeu Ferreira"	"Instituto de Filosofia"
"Gladston Marcelo Pereira do Vale"	"Instituto de Filosofia"	"Anselmo Tadeu Ferreira"	"Instituto de Filosofia"
"Kamila Stephany Alves Santos"	"Instituto de Filosofia"	"Ana Maria Said"	"Instituto de Filosofia"
"Alexandre Borba Chiqueta"	"Faculdade da Computação"	"Gina Maira"	"Faculdade da Computação"
"Flávio Fernandes"	"Faculdade da Computação"	"Gina Maira"	"Faculdade da Computação"
"Gabrel Toledo"	"Faculdade da Computação"	"Rivalino Matias Júnior"	"Faculdade da Computação"
"Nicolas Paolinelli"	"Faculdade da Computação"	"Gina Maira"	"Faculdade da Computação"
"Matheus Brasileiro Aguiar"	"Faculdade da Computação"	"Bruno Augusto Nassif Travençolo"	"Faculdade da Computação"
"Pedro Nunes"	"Faculdade de Medicina Veterinária"	"Kelly Aparecida Geraldo Yoneyama Tudini"	"Faculdade de Medicina Veterinária"
"Maria Ferreira"	"Faculdade de Medicina Veterinária"	"Neide Maria da Silva "	"Faculdade de Medicina Veterinária"
"Elaine Ribeiro de Faria Paiva"	"Faculdade de Direito"	"Daniela de Melo Crosara"	"Faculdade de Direito"
"Fernando Souza"	"Faculdade de Direito"	"Daniela de Melo Crosara"	"Faculdade de Direito"
"Rafael Silva"	"Faculdade de Direito"	"Fernando Rodrigues Martins"	"Faculdade de Direito"
"João Marcos Ramos"	"Faculdade de Direito"	"Fernando Rodrigues Martins"	"Faculdade de Direito"
"Marcos Estefam"	"Faculdade de Direito"	"Fernando Rodrigues Martins"	"Faculdade de Direito"
"Neil Gaiman"	"Instituto de Física"	"Ademir Cavalheiro"	"Instituto de Física"
"Robert Louis Stevenson"	"Instituto de Física"	"Adevailton Bernardo dos Santos"	"Instituto de Física"
"Anne Rice"	"Instituto de Física"	"Alessandra Riposati Arantes"	"Instituto de Física"
"Bram Stocker"	"Instituto de Física"	"Alessandra Riposati Arantes"	"Instituto de Física"
"Marry Shelley"	"Instituto de Física"	"Djalmir Nestor Messias"	"Instituto de Física"
"Peter Benjamin Parker"	"Instituto de Ciências Biomédicas"	"Disney Oliver"	"Instituto de Ciências Biomédicas"
"Peter Kavinsky"	"Instituto de Ciências Biomédicas"	"Henrique Tomaz Gonzaga"	"Instituto de Ciências Biomédicas"
"Lara Jean"	"Instituto de Ciências Biomédicas"	"Alberto da Silva Morais"	"Instituto de Ciências Biomédicas"
"Percy Jackson"	"Instituto de Ciências Biomédicas"	"Daniela Cristina de Oliveira"	"Instituto de Ciências Biomédicas"
"Veronica Lodge"	"Instituto de Ciências Biomédicas"	"Carlos Hernrique Gomes"	"Instituto de Ciências Biomédicas"
"Annelise Salem"	"Instituto de Ciências Agrárias"	"Jamil Salem"	"Instituto de Ciências Agrárias"
"Gabriel Hugo Borges"	"Instituto de Ciências Agrárias"	"Julia Vingadora"	"Instituto de Ciências Agrárias"
"Gustavo Duarte Gomides"	"Escola Técnica de Saúde"	"Tatiana Carneiro de Resende"	"Escola Técnica de Saúde"
"Rodrigo Alves da Silva"	"Escola Técnica de Saúde"	"Lilian Rodrigues Sant’ Anna Campos"	"Escola Técnica de Saúde"
"Julia Echeverria"	"Escola Técnica de Saúde"	"Marisa Aparecida Elias"	"Escola Técnica de Saúde"
"Guilherme Duarte"	"Escola Técnica de Saúde"	"Tatiana Carneiro de Resende"	"Escola Técnica de Saúde"
"Rodrigo da Silva"	"Escola Técnica de Saúde"	"Lilian Rodrigues Sant’ Anna Campos"	"Escola Técnica de Saúde"
"Rafael Henrique Guimarães"	"Faculdade de Ciencias Integradas de Pontal"	"Alex Fernando Borges"	"Faculdade de Ciencias Integradas de Pontal"
"Felipe Langer"	"Faculdade de Ciencias Integradas de Pontal"	"Alex Fernando Borges"	"Faculdade de Ciencias Integradas de Pontal"
"Lucas Daniel Cunha"	"Faculdade de Ciencias Integradas de Pontal"	"Alexandre Alves Alvenha"	"Faculdade de Ciencias Integradas de Pontal"
"Laura Rezende Teixeira Santos"	"Faculdade de Ciencias Integradas de Pontal"	"Alexandre Cacheffo"	"Faculdade de Ciencias Integradas de Pontal"
"Mariana Serrano Guimaraes"	"Faculdade de Ciencias Integradas de Pontal"	"Alexandre Calzavara Yoshida"	"Faculdade de Ciencias Integradas de Pontal"
*/

-- (e) Listar os alunos que estão vinculados a faculdades distintas de seus tutores.
------ Na resposta mostrar o nome do aluno, nome de sua faculdade, o nome do professor e o nome de sua faculdade
insert into estudante (id, nome, datanasc, fac_est, cra, tutor)
values ('319','Emily Bronte', '1998-07-30','INFIS', 88, 100); --100 Gina(facom)

SELECT estudante.nome as aluno, 
		fac_est.nome as faculdade_aluno, 
		professor.nome as professor, 
		fac_prof.nome as faculdade_professor
FROM estudante, professor, faculdade fac_est, faculdade fac_prof
WHERE estudante.tutor=professor.id 
		AND estudante.fac_est=fac_est.sigla 
		AND professor.fac_prof=fac_prof.sigla
		AND estudante.fac_est <> professor.fac_prof;
/*
"aluno"	"faculdade_aluno"	"professor"	"faculdade_professor"
"Emily Bronte"	"Instituto de Física"	"Gina Maira"	"Faculdade da Computação"
*/

-- (f) Mostrar os estudantes que estão frequentando turmas de disciplinas que são ofertadas por outras faculdades
------ Na resposta mostrar o nome do aluno, nome de sua faculdade, o nome da disciplina e a faculdade da disciplina
------ ps: se não houver nenhuma, cadastrar pelo menos 2 para testar
insert into frequenta (id_est, id_turma, nota)
values ('319',220, 90); --emily(INFIS),calculoI(FAMAT)

insert into frequenta (id_est, id_turma, nota)
values ('305',220, 90); --neil(INFIS),calculoI(FAMAT)

SELECT estudante.nome as aluno, 
		fac_est.nome as faculdade_aluno, 
		disciplina.nome as disciplina, 
		fac_disc.nome as faculdade_disciplina
FROM estudante, disciplina, faculdade fac_est, faculdade fac_disc, frequenta, turma
WHERE estudante.fac_est=fac_est.sigla
	AND disciplina.fac_disc=fac_disc.sigla
	AND frequenta.id_est=estudante.id
	AND frequenta.id_turma=turma.id
	AND turma.cod_disc=disciplina.codigo
	AND disciplina.fac_disc <> estudante.fac_est;
/*
"aluno"	"faculdade_aluno"	"disciplina"	"faculdade_disciplina"
"Emily Bronte"	"Instituto de Física"	"Cálculo Diferencial e Integral I"	"Faculdade de Matematica"
"Neil Gaiman"	"Instituto de Física"	"Cálculo Diferencial e Integral I"	"Faculdade de Matematica"
*/

-- (g) Listar todas as matrículas existentes, indicando para cada uma o nome do Estudante e o nome da disciplina.
SELECT estudante.nome as aluno, disciplina.nome as disciplina
FROM estudante, disciplina, faculdade fac_est, faculdade fac_disc, frequenta, turma
WHERE estudante.fac_est=fac_est.sigla
	AND disciplina.fac_disc=fac_disc.sigla
	AND frequenta.id_est=estudante.id
	AND frequenta.id_turma=turma.id
	AND turma.cod_disc=disciplina.codigo;
/*
"aluno"	"disciplina"
"Ana Paula Freitas"	"Bioquímica 1"
"Jonas Caravalho"	"Avaliação de Impactos Ambiental para Biólogos"
"Luna da Conceição"	"Evolução"
"Luna da Conceição"	"Avaliação de Impactos Ambiental para Biólogos"
"Davi Lucca Duarte"	"Construção do Conhecimento Científico"
"Ana Silveira"	"Biologia e Cultura - (PROINTER III)"
"Guilherme da Cunha"	"Profissão Biólogo"
"Aline Ferreira Magalhaes"	"Filosofia Geral: Problemas Metafísicos"
"Cristiano Bueno de Almeida"	"Filosofia Geral: Problemas Metafísicos"
"Derli Luis Arantes Junior"	"História da Filosofia Medieval"
"Gladston Marcelo Pereira do Vale"	"Ética"
"Kamila Stephany Alves Santos"	"Ética"
"Isabella Melo Sousa"	"Historia da Arte I"
"Jose Almeida Azevedo"	"Historia da Arte II"
"Aline Oliveira Araujo"	"Arte Contemporanea I"
"Andre Silva Martins"	"Arte Contemporanea II"
"Lavinia Sousa Carvalho"	"Arte Computacional"
"Joao Vitor Correia"	"Fundamentos de Matemática Elementar I"
"Marina Silva Gomes"	"Fundamentos de Matemática Elementar II"
"Maria Julia Oliveira"	"Cálculo Diferencial e Integral I"
"Vicente Araujo Mendes"	"Cálculo Diferencial e Integral II"
"Alexandre Oliveira Rodrigues"	"Geometria Analitica"
"Henrique Corrêa de Oliveira"	"Sistemas de Banco de Dados"
"Gabriel de Araujo"	"Sistemas de Banco de Dados"
"Luisa Gomes Ferreira"	"Redes de computadores"
"Gabriela Pereira"	"Projeto e desenvolvimento 1"
"Gabriel Alves"	"Otimização"
"César Bertolin"	"Unidade de Constituição do Organismo"
"Elaine Maria"	"Un. de Reabilitação Integral do Ap. Estomatognático I"
"Victor Guilherme Oliveira Santos"	"Metodologia do Ensino de Ciência"
"Sara Pelegrineti de José"	"Metodologia do Ensino de Ciência"
"Davi Rui Pasquim"	"Estágio Supervisionado I"
"Diego Ruas"	"Construção do Discurso Escrito"
"Pedro Tiene Silva"	"Metodologia do Ensino da Língua Portuguesa"
"Jason Manmoa"	"Fisiologia do Exercício"
"Scott Pilgrim"	"Teoria e Prática do Treinamento I"
"Naruto Uzumaki"	"Ritmo e Expressão"
"Frederico Krueger"	"Comportamento Motor "
"Jason Thirtenn"	"Comportamento Motor "
"Alexandre Borba Chiqueta"	"Algoritmo e Estrutura de Dados 1"
"Flávio Fernandes"	"Algoritmo e Estrutura de Dados 1"
"Gabrel Toledo"	"Programação Orientada a Objetos"
"Nicolas Paolinelli"	"Programação Orientada a Objetos"
"Matheus Brasileiro Aguiar"	"Programação Procedimental"
"Elaine Ribeiro de Faria Paiva"	"Teoria do Direito"
"Elaine Ribeiro de Faria Paiva"	"Direito Digital"
"Elaine Ribeiro de Faria Paiva"	"Direito do Trabalho 1"
"Elaine Ribeiro de Faria Paiva"	"Direito do Trabalho 2"
"Fernando Souza"	"Direito Digital"
"Fernando Souza"	"Teoria do Direito"
"Fernando Souza"	"Direito do Trabalho 1"
"Fernando Souza"	"Direito do Trabalho 2"
"Fernando Souza"	"Direito do Trabalho 2"
"Rafael Silva"	"Direito do Trabalho 1"
"Rafael Silva"	"Direito Digital"
"Rafael Silva"	"Direito do Trabalho 2"
"Rafael Silva"	"Direito do Trabalho 2"
"Rafael Silva"	"Teoria do Direito"
"João Marcos Ramos"	"Direito do Trabalho 2"
"João Marcos Ramos"	"Teoria do Direito"
"João Marcos Ramos"	"Direito Digital"
"João Marcos Ramos"	"Direito do Trabalho 1"
"João Marcos Ramos"	"Direito do Trabalho 2"
"Marcos Estefam"	"Direito do Trabalho 2"
"Marcos Estefam"	"Teoria do Direito"
"Marcos Estefam"	"Direito Digital"
"Marcos Estefam"	"Direito do Trabalho 1"
"Marcos Estefam"	"Direito do Trabalho 2"
"Neil Gaiman"	"Física Básica I"
"Robert Louis Stevenson"	"Física Básica I"
"Anne Rice"	"Física Básica II"
"Bram Stocker"	"Física Básica III"
"Bram Stocker"	"Algoritmos e Programação de Computadores"
"Marry Shelley"	"Geometrica Analítica"
"Percy Jackson"	"Analises Clinicas"
"Peter Benjamin Parker"	"Analises Clinicas"
"Veronica Lodge"	"Biossegurança"
"Lara Jean"	"Imunologia"
"Peter Kavinsky"	"Genetica"
"Annelise Salem"	"Construções Rurais"
"Victor Bagliano"	"Construções Rurais"
"Leandro Peres"	"Construções Rurais"
"Marina Barcelos"	"Manejo e Conservação do Solo e da Água"
"Gabriel Hugo Borges"	"Irrigação e Drenagem"
"Gustavo Duarte Gomides"	"Fundamentos em Enfermagem"
"Gustavo Duarte Gomides"	"Saúde Coletiva I"
"Rodrigo Alves da Silva"	"Fundamentos em Enfermagem"
"Julia Echeverria"	"Saúde Coletiva II"
"Guilherme Duarte"	"Enfermagem Médica"
"Rodrigo da Silva"	"Psicologia e Ética"
"Rafael Henrique Guimarães"	"Climatologia 1"
"Felipe Langer"	"Climatologia 2"
"Lucas Daniel Cunha"	"Geologia 1"
"Laura Rezende Teixeira Santos"	"Geologia 2"
"Mariana Serrano Guimaraes"	"Climatologia 2"
"João Augusto Silva"	"Bioquímica 1"
"Pedro Nunes"	"Bioquímica 1"
"Augusto Pereira"	"Bioquímica 2"
"Maria Ferreira"	"Fundamentos de Anatomia Veterinária"
"Emily Bronte"	"Cálculo Diferencial e Integral I"
"Neil Gaiman"	"Cálculo Diferencial e Integral I"
*/

-- 16) CONSULTAS COM CONCEITOS ENVOLVENDO OUTER JOINS
-- (a) Listar o nome dos professores juntamente com o *nome* de seus alunos de IC (quem eles tutoram)
----- Renomeie o nome dos atributos da relação resultante para nome_professor e nome_aluno, respectivamente.
----- Se um professor não possuir orientandos, ele deve aparecer na resposta também
SELECT professor.nome as nome_professor, estudante.nome as nome_aluno
FROM professor
LEFT OUTER JOIN estudante
	ON estudante.tutor=professor.id;
/*
"nome_professor"	"nome_aluno"
"Marcelo Keese Albertini"	"Pedro Henrique Silva"
"Rivalino Matias Júnior"	"Gabriel Borges Júnior"
"André Backes"	"Amanda Gomes de Oliveira"
"Bruno Augusto Nassif Travençolo"	"Jorge Antônio Santos"
"Luiz Gustavo Almeida Martins"	"Bruna Tobias Pinto"
"Ailton Gonçalves Rodrigues Junior"	"Jonas Caravalho"
"Jeamylle Nilin Gonçalves"	"Ana Silveira"
"Ariádine Cristine de Almeida"	"Guilherme da Cunha"
"Ailton Gonçalves Rodrigues Junior"	"Davi Lucca Duarte"
"Alexsandro Soares"	"Henrique Corrêa de Oliveira"
"Pedro Frosi"	"Gabriel de Araujo"
"Elaine Ribeiro"	"Luisa Gomes Ferreira"
"Jean Ponciano"	"Gabriela Pereira"
"Marcia Aparecida Fernandes"	"Gabriel Alves"
"Taciana Oliveira Souza"	"Joao Vitor Correia"
"Fernando Rodrigo Rafaeli"	"Marina Silva Gomes"
"Camila Mariana Ruiz"	"Maria Julia Oliveira"
"Admilson Lopes dos Santos"	"Vicente Araujo Mendes"
"Adriana Rodrigues da Silva"	"Alexandre Oliveira Rodrigues"
"Adriano Mota Loyola"	"Vinicius Ribeiro"
"Alessandra Maia de Castro Prado"	"César Bertolin"
"Álex Moreira Herval"	"Bruno José"
"Ana Paula Turrioni Hidalgo"	"Elaine Maria"
"Ana Paula de Lima Oliveira"	"Carlos Silva"
"Belchior de Sousa"	"Isabella Melo Sousa"
"Elsieni Coelho da Silva"	"Jose Almeida Azevedo"
"Belchior de Sousa"	"Aline Oliveira Araujo"
"Gastao da Cunha Frota"	"Andre Silva Martins"
"Belchior de Sousa"	"Lavinia Sousa Carvalho"
"Adriana Pastorello Buim Arena"	"Victor Guilherme Oliveira Santos"
"Aldeci Cacique Calixto"	"Sara Pelegrineti de José"
"Aléxia Pádua Franco"	"Davi Rui Pasquim"
"Ana Beatriz da Silva Duarte"	"Diego Ruas"
"Andrea Maturano Longarezi"	"Pedro Tiene Silva"
"Jailson Mendes"	"Jason Manmoa"
"Gabriel Jesus"	"Scott Pilgrim"
"Gabriel Jesus"	"Naruto Uzumaki"
"João Guilherme"	"Frederico Krueger"
"João Guilherme"	"Jason Thirtenn"
"Alcino Eduardo Bonella"	"Aline Ferreira Magalhaes"
"Alcino Eduardo Bonella"	"Cristiano Bueno de Almeida"
"Anselmo Tadeu Ferreira"	"Derli Luis Arantes Junior"
"Anselmo Tadeu Ferreira"	"Gladston Marcelo Pereira do Vale"
"Ana Maria Said"	"Kamila Stephany Alves Santos"
"Gina Maira"	"Alexandre Borba Chiqueta"
"Gina Maira"	"Flávio Fernandes"
"Rivalino Matias Júnior"	"Gabrel Toledo"
"Gina Maira"	"Nicolas Paolinelli"
"Bruno Augusto Nassif Travençolo"	"Matheus Brasileiro Aguiar"
"Kelly Aparecida Geraldo Yoneyama Tudini"	"Pedro Nunes"
"Neide Maria da Silva "	"Maria Ferreira"
"Daniela de Melo Crosara"	"Elaine Ribeiro de Faria Paiva"
"Daniela de Melo Crosara"	"Fernando Souza"
"Fernando Rodrigues Martins"	"Rafael Silva"
"Fernando Rodrigues Martins"	"João Marcos Ramos"
"Fernando Rodrigues Martins"	"Marcos Estefam"
"Ademir Cavalheiro"	"Neil Gaiman"
"Adevailton Bernardo dos Santos"	"Robert Louis Stevenson"
"Alessandra Riposati Arantes"	"Anne Rice"
"Alessandra Riposati Arantes"	"Bram Stocker"
"Djalmir Nestor Messias"	"Marry Shelley"
"Disney Oliver"	"Peter Benjamin Parker"
"Henrique Tomaz Gonzaga"	"Peter Kavinsky"
"Alberto da Silva Morais"	"Lara Jean"
"Daniela Cristina de Oliveira"	"Percy Jackson"
"Carlos Hernrique Gomes"	"Veronica Lodge"
"Jamil Salem"	"Annelise Salem"
"Julia Vingadora"	"Gabriel Hugo Borges"
"Tatiana Carneiro de Resende"	"Gustavo Duarte Gomides"
"Lilian Rodrigues Sant’ Anna Campos"	"Rodrigo Alves da Silva"
"Marisa Aparecida Elias"	"Julia Echeverria"
"Tatiana Carneiro de Resende"	"Guilherme Duarte"
"Lilian Rodrigues Sant’ Anna Campos"	"Rodrigo da Silva"
"Alex Fernando Borges"	"Rafael Henrique Guimarães"
"Alex Fernando Borges"	"Felipe Langer"
"Alexandre Alves Alvenha"	"Lucas Daniel Cunha"
"Alexandre Cacheffo"	"Laura Rezende Teixeira Santos"
"Alexandre Calzavara Yoshida"	"Mariana Serrano Guimaraes"
"Gina Maira"	"Emily Bronte"
"Beatriz Corrêa Camargo"	
"Marcel Novaes"	
"Lucas de Assis Ribeiro"	
"Alexandre Garrido da Silva"	
"Cláudio Assembly"	
"Barbara Dias Rezende Gontijo"	
"Gustavo de Carvalho Marin"	
"Luciano Hulk"	
"Natália Mundim Tôrres"	
"Clelia Regina Cafer"	
"Elaine Java"	
"Renato Palumbo Doria"	
"Péricles Mendes"	
"Roberto Carlos"	
"Tiago Wilson Patriarca Mineo "	
"Dennys Garcia Xavier"	
"Alexandre Guimarães Tadeu de Soares"	
"Giuliano Buzá Jacobucci"	
"Nikoleta Tzvetanova Kerinska"	
"Cassiano Aimberê Dorneles Welker"	
"Alessandro Gomes Enoque"	
*/

-- (b) Listar o nome da disciplina juntamente com o nome de seus pré-requisitos. 
--Caso a disciplina tenha mais de um pré-requisito, ela constará na resposta mais de uma vez (uma vez para cada pré-requisito). 
--Caso a disciplina não tenha pré-requisitos, ela também deve aparecer na resposta
SELECT disciplina_regente.nome as disiciplina, disciplina_pre.nome as pre_requisito
FROM disciplina disciplina_regente
	LEFT JOIN pre_requisito
		ON pre_requisito.cod_disc=disciplina_regente.codigo
	LEFT JOIN disciplina disciplina_pre
		ON pre_requisito.cod_pre=disciplina_pre.codigo;
/*
"disiciplina"	"pre_requisito"
"Comportamento Motor "	"Fisiologia do Exercício"
"Programação Procedimental"	
"Algoritmo e Estrutura de Dados 1"	"Programação Procedimental"
"Algoritmo e Estrutura de Dados 2"	"Algoritmo e Estrutura de Dados 1"
"Programação Orientada a Objetos"	
"Lógica"	
"Lógica para Programação"	
"Cálculo 1"	
"Arquitetura e Organização de Computadores"	
"Bioquímica 1"	
"Bioquímica 2"	"Bioquímica 1"
"Fundamentos de Anatomia Veterinária"	
"Anatomia dos Animais Domésticos"	"Fundamentos de Anatomia Veterinária"
"Citologia, Histologia e Embriologia"	
"Filosofia Geral: Problemas Metafísicos"	
"História da Filosofia Medieval"	
"Ética"	
"Psicologia da Educação"	
"Didática Geral"	
"Etica II"	"Ética"
"Didática Geral II"	"Didática Geral"
"Historia da Arte I"	
"Historia da Arte II"	"Historia da Arte I"
"Arte Contemporanea I"	
"Arte Contemporanea II"	"Arte Contemporanea I"
"Arte Computacional"	
"Avaliação de Impactos Ambiental para Biólogos"	
"Biologia e Cultura - (PROINTER III)"	
"Construção do Conhecimento Científico"	
"Evolução"	
"Profissão Biólogo"	
"Teoria do Direito"	
"Direito Digital"	"Teoria do Direito"
"Direito do Trabalho 1"	
"Direito do Trabalho 2"	"Direito do Trabalho 1"
"Direito Financeiro"	
"Física Básica I"	
"Física Básica II"	"Física Básica I"
"Física Básica III"	"Física Básica II"
"Geometrica Analítica"	
"Algoritmos e Programação de Computadores"	
"Analises Clinicas"	
"Imunologia"	"Analises Clinicas"
"Genetica"	
"Microbiologia"	"Genetica"
"Biossegurança"	
"Construções Rurais"	
"Adubos e Adubação"	
"Manejo e Conservação do Solo e da Água"	
"Irrigação e Drenagem"	
"Agrometeorologia"	"Irrigação e Drenagem"
"Agrometeorologia"	"Manejo e Conservação do Solo e da Água"
"Fundamentos em Enfermagem"	
"Saúde Coletiva I"	
"Saúde Coletiva II"	"Saúde Coletiva I"
"Enfermagem Médica"	"Fundamentos em Enfermagem"
"Psicologia e Ética"	
"Geologia 1"	
"Climatologia 1"	
"Teoria e método em Geografia"	
"Cartografia"	
"PIPE 1"	
"Geologia 2"	"Geologia 1"
"Climatologia 2"	"Climatologia 1"
"Fundamentos de Matemática Elementar I"	
"Fundamentos de Matemática Elementar II"	"Fundamentos de Matemática Elementar I"
"Cálculo Diferencial e Integral I"	
"Cálculo Diferencial e Integral II"	"Cálculo Diferencial e Integral I"
"Geometria Analitica"	
"Sistemas de Banco de Dados"	
"Redes de computadores"	
"Projeto e desenvolvimento 1"	"Sistemas de Banco de Dados"
"Engenharia de Software"	
"Otimização"	
"Unidade de Constituição do Organismo"	
"Unidade de Funcionamento do Organismo I"	
"Un. de Reabilitação Integral do Ap. Estomatognático I"	
"Unidade de Investigação Científica I (UIC1)"	
"Unidade de Saúde Humana I (USH1)"	"Unidade de Constituição do Organismo"
"Metodologia do Ensino de Ciência"	
"Estágio Supervisionado I"	
"Construção do Discurso Escrito"	
"Metodologia do Ensino da Língua Portuguesa"	
"Filosofia da Educação"	
"Fisiologia do Exercício"	
"Teoria e Prática do Treinamento I"	
"Ritmo e Expressão"	
"Teoria e Prática do Treinamento II"	"Teoria e Prática do Treinamento I"
"Física Básica IV"	"Física Básica III"
"Física Básica V"	"Física Básica IV"
"Física Básica VI"	"Cálculo Diferencial e Integral I"
"Física Básica VII"	"Cálculo Diferencial e Integral II"
*/

-- (c) Listar todos os nomes dos professores juntamente com as turmas que ministram (turma,semestre,ano,codigo_disc). 
--Se o professor não possuir disciplina ele também deve aparecer na resposta. 
--No lugar do código da disciplina deve aparecer a mensagem ('<professor sem disciplina>'). dica: COALESCE()
SELECT professor.nome as professor, turma, semestre, ano, COALESCE(cod_disc,'<professor sem disciplina>')
FROM professor
LEFT JOIN ensina 
	ON professor.id=ensina.id_prof
LEFT JOIN turma
	ON ensina.id_turma=turma.id;
/*
"professor"	"turma"	"semestre"	"ano"	"coalesce"
"Gina Maira"	"63"	2	2020	"GBC034"
"Marcelo Keese Albertini"	"67"	2	2022	"GBC045"
"Rivalino Matias Júnior"	"64"	1	2021	"GBC034"
"André Backes"	"66"	1	2022	"GBC023"
"Bruno Augusto Nassif Travençolo"	"65"	2	2021	"GBC024"
"Alexandre Garrido da Silva"	"D1"	2	2022	"FADIR3"
"Alexandre Garrido da Silva"	"D1"	2	2020	"FADIR4"
"Beatriz Corrêa Camargo"	"D1"	2	2022	"FADIR3"
"Beatriz Corrêa Camargo"	"D2"	1	2021	"FADIR5"
"Daniela de Melo Crosara"	"D3"	2	2022	"FADIR6"
"Daniela de Melo Crosara"	"D2"	1	2021	"FADIR5"
"Daniela de Melo Crosara"	"D4"	1	2022	"FADIR6"
"Fernando Rodrigues Martins"	"D2"	1	2021	"FADIR5"
"Fernando Rodrigues Martins"	"D3"	2	2022	"FADIR6"
"Fernando Rodrigues Martins"	"D4"	1	2022	"FADIR6"
"Gustavo de Carvalho Marin"	"D1"	2	2020	"FADIR4"
"Gustavo de Carvalho Marin"	"D2"	1	2021	"FADIR5"
"Gustavo de Carvalho Marin"	"D4"	1	2022	"FADIR6"
"Ademir Cavalheiro"	"A1"	2	2020	"310   "
"Ademir Cavalheiro"	"B1"	3	2020	"311   "
"Adevailton Bernardo dos Santos"	"A2"	2	2020	"310   "
"Alessandra Riposati Arantes"	"C1"	4	2021	"312   "
"Djalmir Nestor Messias"	"D1"	1	2021	"313   "
"Marcel Novaes"	"E1"	4	2021	"314   "
"Alberto da Silva Morais"	"A "	1	2022	"2000  "
"Carlos Hernrique Gomes"	"B "	1	2022	"2001  "
"Daniela Cristina de Oliveira"	"C "	1	2022	"2002  "
"Disney Oliver"	"D "	1	2022	"2003  "
"Henrique Tomaz Gonzaga"	"E "	1	2022	"2004  "
"Jamil Salem"	"01"	20211	2021	"1801  "
"Jamil Salem"	"02"	20212	2021	"1801  "
"Julia Vingadora"	"03"	20221	2022	"1803  "
"Roberto Carlos"	"04"	20222	2022	"1804  "
"Cláudio Assembly"	"05"	20231	2023	"1802  "
"Elaine Java"	"06"	20232	2023	"1805  "
"Lilian Rodrigues Sant’ Anna Campos"	"1A"	1	2022	"ESTES1"
"Clelia Regina Cafer"	"1B"	1	2022	"ESTES1"
"Marisa Aparecida Elias"	"1A"	1	2022	"ESTES2"
"Marisa Aparecida Elias"	"1A"	1	2022	"ESTES3"
"Barbara Dias Rezende Gontijo"	"1A"	2	2022	"ESTES4"
"Tatiana Carneiro de Resende"	"1A"	2	2022	"ESTES5"
"Alessandro Gomes Enoque"	"33"	1	2022	"GGO002"
"Alex Fernando Borges"	"33"	2	2022	"GGO012"
"Alexandre Alves Alvenha"	"31"	1	2021	"GGO001"
"Alexandre Cacheffo"	"31"	2	2021	"GGO011"
"Alexandre Calzavara Yoshida"	"29"	2	2020	"GGO012"
"Kelly Aparecida Geraldo Yoneyama Tudini"	"A "	1	2022	"GMV003"
"Lucas de Assis Ribeiro"	"A "	1	2022	"GMV003"
"Natália Mundim Tôrres"	"B "	1	2022	"GMV007"
"Tiago Wilson Patriarca Mineo "	"C "	1	2022	"GMV005"
"Neide Maria da Silva "	"A "	1	2022	"GMV003"
"Ailton Gonçalves Rodrigues Junior"	"C "	1	2022	"31505 "
"Ariádine Cristine de Almeida"	"C "	1	2022	"39030 "
"Ariádine Cristine de Almeida"	"C "	1	2022	"31104 "
"Cassiano Aimberê Dorneles Welker"	"C "	1	2022	"31407 "
"Giuliano Buzá Jacobucci"	"D "	1	2022	"31505 "
"Alcino Eduardo Bonella"	"A "	1	2022	"1410  "
"Alexandre Guimarães Tadeu de Soares"	"A "	1	2022	"1412  "
"Ana Maria Said"	"A "	1	2022	"1410  "
"Anselmo Tadeu Ferreira"	"A "	1	2022	"1411  "
"Dennys Garcia Xavier"	"A "	1	2022	"1412  "
"Belchior de Sousa"	"55"	1	2015	"GAV001"
"Elsieni Coelho da Silva"	"57"	2	2016	"GAV007"
"Gastao da Cunha Frota"	"59"	1	2017	"GAV013"
"Elsieni Coelho da Silva"	"61"	2	2018	"GAV019"
"Renato Palumbo Doria"	"63"	1	2019	"GAV010"
"Admilson Lopes dos Santos"	"A "	1	2018	"MAT201"
"Adriana Rodrigues da Silva"	"B "	2	2019	"MAT211"
"Camila Mariana Ruiz"	"C "	3	2020	"MAT212"
"Fernando Rodrigo Rafaeli"	"D "	4	2021	"MAT213"
"Taciana Oliveira Souza"	"E "	5	2022	"MAT214"
"Taciana Oliveira Souza"	"F "	6	2022	"MAT214"
"Jean Ponciano"	"02"	2	2022	"GBC043"
"Elaine Ribeiro"	"03"	2	2022	"GSI023"
"Alexsandro Soares"	"04"	2	2022	"GSI034"
"Pedro Frosi"	"05"	2	2022	"GSI027"
"Marcia Aparecida Fernandes"	"03"	2	2022	"GSI023"
"Adriano Mota Loyola"	"17"	12022	2022	"GOG001"
"Alessandra Maia de Castro Prado"	"17"	12021	2021	"GOG001"
"Adriana Pastorello Buim Arena"	"65"	2	2020	"410   "
"Aldeci Cacique Calixto"	"66"	1	2020	"410   "
"Aléxia Pádua Franco"	"67"	2	2020	"411   "
"Ana Beatriz da Silva Duarte"	"68"	1	2021	"412   "
"Andrea Maturano Longarezi"	"69"	2	2021	"413   "
"Jailson Mendes"	"00"	2	1982	"GEDU31"
"Gabriel Jesus"	"01"	1	1983	"GEDU32"
"Luciano Hulk"	"02"	2	1983	"GEDU41"
"João Guilherme"	"03"	2	1990	"GEDU42"
"Péricles Mendes"	"05"	2	1995	"GEDU43"
"Álex Moreira Herval"				"<professor sem disciplina>"
"Ana Paula de Lima Oliveira"				"<professor sem disciplina>"
"Ana Paula Turrioni Hidalgo"				"<professor sem disciplina>"
"Luiz Gustavo Almeida Martins"				"<professor sem disciplina>"
"Jeamylle Nilin Gonçalves"				"<professor sem disciplina>"
"Nikoleta Tzvetanova Kerinska"				"<professor sem disciplina>"
*/

-- (d) Utilizando OUTER JOIN, o nome das disciplinas que não possuem pré-requisitos
SELECT disciplina.nome
FROM disciplina LEFT JOIN pre_requisito ON disciplina.codigo = pre_requisito.cod_disc
WHERE pre_requisito.cod_disc IS NULL;
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

-- (e) Utilizando OUTER JOIN, o nome dos estudantes que não estão frequentando turmas 
SELECT estudante.nome
FROM estudante LEFT JOIN frequenta ON estudante.id = frequenta.id_est
WHERE frequenta.id_est IS NULL;
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

-- (f) Utilizando OUTER JOIN, listar as informações das turmas cujas aulas são na segunda ou quinta 
--que não possuem estudantes frequentando a mesma (se não existir tuplas, cadastre algumas para atender a consulta)
SELECT turma.*
FROM turma 
LEFT JOIN horario_aula 
	ON turma.id = horario_aula.id_turma
LEFT JOIN frequenta
	ON frequenta.id_turma=turma.id
WHERE (horario_aula.id_sem = '2' OR horario_aula.id_sem = '5') AND frequenta.id_turma IS NULL;
--quinta=5 | segunda=2
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"
2018	"D "	1	2022	"2003  "	"2A   "	4
1303	"D "	1	2022	"GMV006"	"1BCG "	103
403	"03"	2	1990	"GEDU42"	"1A   "	491
*/







