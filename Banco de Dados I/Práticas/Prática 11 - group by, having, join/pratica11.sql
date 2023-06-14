SET search_path TO universidade;

--23) CONSULTAS USANDO AGRUPAMENTOS SIMPLES e com condição de seleção
--(a) Listar todos os prédios das faculdades.
select predio from faculdade group by predio;
/*
"predio"
"1E   "
"2D28 "
"3K   "
"1BCG "
"3D   "
"UMU4L"
"2A   "
"1A   "
"5S   "
"1DCG "
"1U   "
"2E   "
"1C   "
"4K   "
"1B   "
"1F   "
"1X   "
*/

--(b) Listar todas as SIGLAS de faculdades. Comparar o tamanho da resposta com o número de faculdades e justificar.
select sigla from faculdade group by sigla;
/*
"sigla"
"FAMEV"
"INFIS"
"ESTES"
"FADIR"
"ICIAG"
"IARTE"
"IFILO"
"FACIP"
"FAMEC"
"FAMAT"
"FEELT"
"FACOM"
"FOUFU"
"FECIV"
"INBIO"
"ICBIM"
"FAEDU"
*/

select count(*) as qtd_sigla from faculdade;
/*
"qtd_sigla"
17
*/

--são 17 siglas e 17 universidades. Como sigla é a chave primária da tabela, será sempre distinta, sendo o total de faculdades.

--(c) Listar todos os semestres-ano que existem turmas.
select semestre, ano from turma 
where id is not null 
group by semestre, ano;

/*
"semestre"	"ano"
1	2019
20232	2023
1	2022
20231	2023
12022	2022
2	2019
2	2022
1	2020
1	2015
5	2022
20212	2021
2	1983
22021	2021
6	2022
1	1983
1	2018
2	2020
2	2016
2	1990
22022	2022
12023	2023
2	1995
1	2017
4	2021
1	2021
20221	2022
2	1982
3	2020
20222	2022
20211	2021
12021	2021
2	2018
2	2021
*/

--(d) Listar todos os prédios e salas que possuem turmas.
select predio_s, n_sala from turma 
where id is not null and predio_s is not null and n_sala is not null
group by predio_s, n_sala;

/*
"predio_s"	"n_sala"
"5S   "	205
"1B   "	203
"1G   "	103
"UMU1L"	37
"1U   "	204
"2A   "	5
"1A   "	492
"3D   "	102
"1X   "	2
"UMU3L"	38
"3K   "	101
"1F   "	215
"2A   "	4
"UMU4L"	39
"3D   "	104
"1BCG "	102
"1G   "	104
"3K   "	103
"2E   "	201
"2D   "	13
"1X   "	3
"3K   "	102
"2E   "	202
"2A   "	6
"1A   "	490
"5O-A "	207
"1BBSI"	127
"8C   "	322
"1BCG "	103
"4K   "	206
"1A   "	491
"1BBSI"	129
"2A   "	1
"8C   "	123
"8C   "	119
"2E   "	203
"2A   "	2
"4K   "	207
"4K   "	205
"1B   "	204
"1G   "	101
"5R   "	103
"5S   "	207
"1BCG "	101
"1F   "	216
"1F   "	217
"5O-A "	206
"8C   "	121
"5S   "	208
"2A   "	3
"1BBSI"	128
"1G   "	102
"1X   "	1
*/

--(e) Listar todas as datas de nascimento, tutor e faculdade dos alunos
select datanasc, tutor, fac_est from estudante 
group by datanasc, tutor, fac_est;
/*
"datanasc"	"tutor"	"fac_est"
"1994-06-29"	"2006       "	"ICBIM"
"2000-11-08"	"302        "	"INFIS"
"2003-08-13"	"503        "	"FACIP"
"1998-11-20"	"400        "	"ESTES"
"2000-07-07"	"10000000000"	"FACOM"
"2000-10-04"	"302        "	"INFIS"
"1999-11-02"	"202        "	"FAMAT"
"2000-07-15"	"604        "	"FADIR"
"1998-10-15"	"904        "	"ESTES"
"1962-03-06"	"420        "	"FAEDU"
"2003-03-14"	"501        "	"FACIP"
"1964-04-04"	"421        "	"FAEDU"
"2000-04-09"	"10000000011"	"FACOM"
"1993-08-27"	"2008       "	"ICBIM"
"1995-12-20"	"403        "	"ESTES"
"2000-04-01"	"501        "	"FACIP"
"1989-01-06"	"1503       "	"FOUFU"
"2002-12-28"	"502        "	"FACIP"
"1999-12-14"	"1813       "	"ICIAG"
"2000-07-14"		"ICIAG"
"1974-01-01"	"401        "	"ESTES"
"2002-08-17"	"203        "	"FAMAT"
"1998-01-26"	"603        "	"FADIR"
"1999-08-30"	"303        "	"INFIS"
"2001-07-04"	"105        "	"FACOM"
"2000-03-11"	"1600       "	"IARTE"
"2000-06-04"	"1400       "	"IFILO"
"1999-08-03"	"104        "	"FACOM"
"2000-11-10"	"300        "	"INFIS"
"1983-07-02"	"102        "	"FACOM"
"2002-10-18"	"1600       "	"IARTE"
"2001-08-15"	"1600       "	"IARTE"
"2003-05-22"	"404        "	"ESTES"
"2002-07-13"	"1400       "	"IFILO"
"2002-05-21"	"1605       "	"IARTE"
"1990-09-17"	"104        "	"FACOM"
"1993-08-18"	"2007       "	"ICBIM"
"2003-08-03"	"2009       "	"ICBIM"
"2000-01-01"	"900        "	"ESTES"
"2000-09-03"	"1610       "	"IARTE"
"2002-04-06"	"2005       "	"ICBIM"
"2001-12-09"	"1300       "	"FAMEV"
"2002-10-14"		"ICIAG"
"1993-01-06"	"1501       "	"FOUFU"
"2001-05-12"	"604        "	"FADIR"
"1995-03-26"	"100        "	"FACOM"
"1993-01-06"	"1500       "	"FOUFU"
"2002-01-09"	"102        "	"FACOM"
"2002-12-12"	"904        "	"ESTES"
"2002-10-18"		"FAMEV"
"2000-09-09"		"FAMEV"
"1998-01-06"	"504        "	"FACIP"
"2000-01-26"	"10000000010"	"FACOM"
"1999-09-05"	"902        "	"ESTES"
"1998-08-02"	"100        "	"FACOM"
"2000-02-07"	"10000000001"	"FACOM"
"1967-12-11"	"421        "	"FAEDU"
"2001-09-12"		"ICIAG"
"2000-02-02"	"1304       "	"FAMEV"
"1999-05-14"	"100        "	"FACOM"
"2001-05-20"	"201        "	"FAMAT"
"2000-09-19"	"10000000100"	"FACOM"
"2000-03-05"	"204        "	"FAMAT"
"2001-05-02"	"101        "	"FACOM"
"1995-04-14"	"200        "	"FAMAT"
"2002-12-01"	"604        "	"FADIR"
"2002-04-17"	"402        "	"ESTES"
"1993-01-06"	"1504       "	"FOUFU"
"1968-03-20"	"423        "	"FAEDU"
"1990-09-12"	"1700       "	"INBIO"
"2005-07-30"	"1402       "	"IFILO"
"2000-05-11"	"1403       "	"IFILO"
"2002-08-06"	"1812       "	"ICIAG"
"1900-01-06"	"1502       "	"FOUFU"
"2001-12-20"	"1403       "	"IFILO"
"1999-11-13"	"301        "	"INFIS"
"2000-03-07"	"103        "	"FACOM"
"1999-01-28"		"FAMEV"
"2003-07-22"	"1703       "	"INBIO"
"2000-12-02"	"1701       "	"INBIO"
"1987-07-19"		"INBIO"
"1999-03-12"	"603        "	"FADIR"
"1990-05-20"	"900        "	"ESTES"
"1974-09-25"	"1700       "	"INBIO"
*/

--(f) Listar todos os códigos de disciplinas das turmas dos anos de 2016 e 2017
select id from turma where ano=2016 or ano=2017
group by id;
/*
"id"
20
30
*/


--24) CONSULTAS COM CONDIÇÃO DE SELEÇÃO, AGRUPAMENTOS E FUNÇÕES AGREGADAS
--(a) Listar a quantidade de professores por faculdade (mostrar o código da faculdade e o número de professores)
select fac_prof, count(fac_prof) as qtd_prof
from professor
group by fac_prof;
/*
"fac_prof"	"qtd_prof"
"FAMEV"	5
"INFIS"	5
"ESTES"	10
"FADIR"	5
"ICIAG"	5
"FACIP"	5
"IFILO"	5
"IARTE"	5
"FAMAT"	5
"FACOM"	11
"FOUFU"	5
"INBIO"	5
"ICBIM"	5
"FAEDU"	5
*/

--(b) Para os professores que são tutores, listar o id do professor juntamente com o número de orientandos. 
--Somente docentes devem aparecer na consulta, não sendo aceito campos nulos	
select tutor, count(id) as qtd_orientandos
from estudante
where tutor is not null
group by tutor;
/*
"tutor"	"qtd_orientandos"
"1502       "	1
"202        "	1
"1300       "	1
"2008       "	1
"604        "	3
"1700       "	2
"1610       "	1
"1304       "	1
"104        "	2
"502        "	1
"301        "	1
"1701       "	1
"302        "	2
"404        "	1
"2009       "	1
"204        "	1
"100        "	3
"1504       "	1
"2005       "	1
"401        "	1
"1600       "	3
"421        "	2
"2007       "	1
"300        "	1
"101        "	1
"201        "	1
"102        "	2
"420        "	1
"504        "	1
"203        "	1
"902        "	1
"423        "	2
"1402       "	1
"402        "	1
"105        "	1
"503        "	1
"1400       "	2
"1703       "	1
"603        "	2
"200        "	1
"1501       "	1
"10000000000"	1
"303        "	1
"10000000011"	1
"1503       "	1
"1500       "	1
"900        "	2
"501        "	2
"400        "	1
"1812       "	1
"904        "	2
"103        "	1
"1813       "	1
"10000000001"	1
"1403       "	2
"2006       "	1
"403        "	1
"10000000100"	1
"1605       "	1
"10000000010"	1
*/

--(c) Listar para cada data cadastrada a quantidade de alunos que nasceram na respectiva data
select datanasc, count (id)
from estudante
group by datanasc;
/*
"datanasc"	"count"
"1998-10-15"	1
"2000-04-01"	1
"1995-04-14"	1
"1962-03-06"	1
"2003-07-22"	1
"1999-09-05"	1
"2003-08-03"	1
"2001-09-12"	1
"2001-12-09"	1
"2001-07-04"	1
"2000-01-01"	1
"2000-03-11"	1
"2002-04-17"	1
"2002-08-17"	1
"2002-12-28"	1
"1974-01-01"	1
"2000-11-10"	1
"2002-04-06"	1
"2002-10-14"	1
"1999-03-12"	1
"1999-05-14"	1
"2005-07-30"	1
"1999-01-28"	1
"1990-05-20"	1
"1993-08-18"	1
"1995-03-26"	1
"1995-12-20"	1
"2000-09-09"	1
"2000-09-19"	1
"1964-04-04"	1
"2000-11-08"	1
"2000-03-07"	1
"2001-05-12"	1
"2000-10-04"	1
"2002-12-01"	1
"1998-11-20"	1
"1990-09-12"	1
"2000-06-04"	1
"1999-11-02"	1
"2000-07-14"	1
"2001-05-02"	1
"2002-12-12"	1
"2003-05-22"	1
"1993-01-06"	3
"1994-06-29"	1
"1968-03-20"	2
"2000-09-03"	1
"2002-05-21"	1
"1993-08-27"	1
"2001-05-20"	1
"1990-09-17"	1
"2000-04-09"	1
"2002-07-13"	1
"2000-07-07"	1
"1999-11-13"	1
"2002-01-09"	1
"2001-12-20"	1
"2000-02-02"	1
"2000-12-02"	1
"1999-08-30"	1
"2000-07-15"	1
"1998-08-02"	1
"1998-01-06"	1
"1999-12-14"	1
"1998-01-26"	1
"2001-08-15"	1
"2003-03-14"	1
"2002-08-06"	1
"1987-07-19"	1
"1999-08-03"	1
"2000-01-26"	1
"1989-01-06"	1
"1974-09-25"	1
"2000-05-11"	1
"2003-08-13"	1
"2000-02-07"	1
"1900-01-06"	1
"2002-10-18"	2
"1967-12-11"	1
"1983-07-02"	1
"2000-03-05"	1
*/

--(d) Listar a quantidade de turmas por prédio e sala
select predio_s, n_sala, count(id) as qtd_turmas
from turma
group by predio_s, n_sala;
/*
"predio_s"	"n_sala"	"qtd_turmas"
"1X   "	1	3
		3
"5S   "	205	2
"1B   "	203	1
"1G   "	103	1
"UMU1L"	37	1
"1U   "	204	3
"2A   "	5	1
"1A   "	492	2
"3D   "	102	1
"1X   "	2	2
"UMU3L"	38	1
"3K   "	101	2
"1F   "	215	2
"2A   "	4	1
"UMU4L"	39	3
"3D   "	104	2
"1BCG "	102	2
"1G   "	104	1
"3K   "	103	1
"2E   "	201	3
"2D   "	13	1
"1X   "	3	1
"3K   "	102	2
"2E   "	202	2
"2A   "	6	1
"1A   "	490	2
"5O-A "	207	1
"1BBSI"	127	2
"8C   "	322	1
"1BCG "	103	3
"4K   "	206	2
"1A   "	491	2
"1BBSI"	129	1
"2A   "	1	1
"8C   "	123	1
"8C   "	119	2
"2E   "	203	1
"2A   "	2	1
"4K   "	207	2
"4K   "	205	2
"1B   "	204	1
"1G   "	101	2
"5R   "	103	2
"5S   "	207	2
"1BCG "	101	1
"1F   "	216	3
"1F   "	217	1
"5O-A "	206	2
"8C   "	121	1
"5S   "	208	1
"2A   "	3	1
"1BBSI"	128	2
"1G   "	102	1
*/

--(e) Listar a sigla de cada faculdade em que há alunos que fazem iniciação científica juntamente com o maior CRA desses alunos
select fac_est, max(cra) as max_cra
from estudante
where tutor is not null
group by fac_est;
/*
"fac_est"	"max_cra"
"FAMEV"	95
"INFIS"	91.7
"ESTES"	800
"FADIR"	89
"ICIAG"	40.5
"FACIP"	92.1
"IFILO"	88.9
"IARTE"	8
"FAMAT"	90
"FACOM"	85
"FOUFU"	100
"INBIO"	80.9
"ICBIM"	100
"FAEDU"	98.5
*/

--(f) Listar todos os ids de turmas que possuem alunos. Mostrar juntamente a maior nota de cada turma
select id_turma, max(nota) as maior_nota
from frequenta
group by id_turma;
/*
"id_turma"	"maior_nota"
652	87.99
1300	95
4	80.9
1817	80
511	85
10	60
1819	
402	68
2017	70
514	86
431	100
433	96.4
220	74
1419	90
1720	70.6
400	70
513	61
920	92.2
2015	99
1302	90
219	85
1724	60.1
221	80
320	8.6
50	80
430	78.5
512	58
155	80
317	9.5
2016	98
2	67.9
1418	68
1301	90
1723	40
401	100
2019	60
924	55.2
152	93
40	75
1818	15
1722	55.2
318	7
222	69
651	84.1
650	81.8
925	0
922	80.9
154	
432	86.7
218	80
30	70
923	61
434	96
316	8
1503	8
3	70.9
1501	10
20	65
1725	100
654	90.76
319	9.2
1	75.9
1417	79
404	92
921	75.5
5	60.9
653	85.5
315	9
1820	
515	90
151	68
*/

--(g) Listar todos os ids de turmas que possuem alunos. Mostrar juntamente a maior, a menor, a média e o desvio padrão das notas
select id_turma, max(nota) as maior_nota, min(nota) as menor_nota, STDDEV_SAMP(nota) as desvio_padrao
from frequenta
group by id_turma;
/*
"id_turma"	"maior_nota"	"menor_nota"	"desvio_padrao"
652	87.99	70.92	6.779624594791713
1300	95	70	12.583057392117915
4	80.9	80.9	
1817	80	0	56.568542494923804
511	85	85	
10	60	60	
1819			
402	68	68	
2017	70	70	
514	86	86	
431	100	100	
433	96.4	96.4	
220	74	74	
1419	90	45	31.81980515339464
1720	70.6	55.2	10.889442811833849
400	70	70	
513	61	61	
920	92.2	92.2	
2015	99	65	24.041630560342615
1302	90	90	
219	85	85	
1724	60.1	60.1	
221	80	80	
320	8.6	8.6	
50	80	80	
430	78.5	78.5	
512	58	58	
155	80	80	
317	9.5	9.5	
2016	98	98	
2	67.9	67.9	
1418	68	68	
1301	90	90	
1723	40	40	
401	100	100	
2019	60	60	
924	55.2	55.2	
152	93	87	4.242640687119285
40	75	75	
1818	15	15	
1722	55.2	55.2	
318	7	7	
222	69	69	
651	84.1	61.8	11.084223409683991
650	81.8	61.76	10.06409855964372
925	0	0	
922	80.9	80.9	
154			
432	86.7	86.7	
218	80	80	
30	70	70	
923	61	61	
434	96	96	
316	8	8	
1503	8	8	
3	70.9	70.9	
1501	10	10	
20	65	65	
1725	100	100	
654	90.76	61.1	16.24138531581371
319	9.2	9.2	
1	75.9	75.9	
1417	79	70	6.363961030678928
404	92	84	5.656854249492381
921	75.5	75.5	
5	60.9	60.9	
653	85.5	67.54	8.433922950769634
315	9	9	
1820			
515	90	90	
151	68	68	
*/

--(h) Listar para cada ID de turma a quantidade de professores que ministram na turma.
select id_turma, count(id_prof) as qtd_prof
from ensina
group by id_turma;
/*
"id_turma"	"qtd_prof"
1300	3
652	4
4	1
1817	1
10	1
511	1
402	1
1819	1
2017	1
431	1
514	1
433	1
405	1
220	1
1419	2
1720	1
400	1
513	1
920	1
2015	1
223	1
1302	1
219	1
221	1
320	1
50	1
430	1
512	1
155	1
317	1
2016	1
2	1
2018	1
1418	1
1301	1
1723	1
401	1
2019	1
924	1
1822	1
152	1
40	1
1818	1
1722	1
153	1
318	1
222	1
651	2
650	2
925	1
922	1
432	1
218	1
154	1
30	1
923	1
434	1
1500	1
316	1
403	1
3	2
1501	1
20	1
1725	1
654	3
319	1
1417	2
921	1
5	1
1821	1
653	2
1721	1
315	1
1820	1
515	1
151	1
*/

--(i) Lista a capacidade total de cada prédio 
select predio, sum(capacidade) as capacidade_total
from sala
group by predio;
/*
"predio"	"capacidade_total"
"UMU1L"	50
"UMU4L"	100
"1A   "	145
"5S   "	120
"1BBSI"	270
"1X   "	180
"5O-A "	120
"UMU3L"	80
"2D   "	50
"3K   "	150
"1BCG "	180
"1G   "	250
"3D   "	160
"5R   "	90
"2A   "	300
"1U   "	60
"2E   "	120
"4K   "	130
"1B   "	160
"8C   "	220
"1F   "	190
*/

--(j) Para as disciplinas que possuem pré-requisitos, listar o código da disciplina e o número de disciplinas que ela depende
select cod_disc, count(cod_pre) as qtd_pre
from pre_requisito
group by cod_disc;
/*
"cod_disc"	"qtd_pre"
"GGO011"	1
"ESTES4"	1
"GEDU42"	1
"312   "	1
"1416  "	1
"GMV007"	1
"2001  "	1
"GSI034"	1
"FADIR6"	1
"GGO012"	1
"1805  "	2
"1415  "	1
"FADIR4"	1
"GOG005"	1
"MAT213"	1
"GBC023"	1
"MAT211"	1
"ESTES3"	1
"2003  "	1
"GAV007"	1
"GBC024"	1
"GEDU43"	1
"311   "	1
"GMV006"	1
"GAV019"	1
*/

--(k) Listar para cada faculdade a quantidade de alunos que fazem iniciação científica.
select fac_est, count(tutor)
from estudante
group by fac_est;
/*
"fac_est"	"count"
"FAMEV"	2
"INFIS"	5
"ESTES"	10
"FADIR"	5
"ICIAG"	2
"FACIP"	5
"IFILO"	5
"IARTE"	5
"FAMAT"	5
"FACOM"	15
"FOUFU"	5
"INBIO"	4
"ICBIM"	5
"FAEDU"	5
*/

--(l) Listar para cada dia da semana e horário a quantidade de turmas alocadas. Na saída mostrar o Id_sem, Id_hora e quantidade
select id_sem, id_hora, count(id_turma) as quantidade
from horario_aula
group by id_sem, id_hora;
/*
"id_sem"	"id_hora"	"quantidade"
"2"	"c"	1
"5"	"p"	1
"6"	"d"	1
"2"	"f"	3
"3"	"e"	1
"6"	"i"	2
"1"	"c"	1
"3"	"m"	2
"2"	"d"	1
"6"	"c"	2
"3"	"b"	4
"6"	"f"	1
"3"	"c"	4
"6"	"e"	3
"2"	"g"	2
"1"	"a"	2
"3"	"d"	1
"6"	"b"	1
"5"	"q"	1
"6"	"l"	2
"2"	"a"	13
"2"	"j"	1
"4"	"b"	2
"4"	"f"	3
"2"	"i"	1
"5"	"o"	1
"4"	"p"	1
"4"	"c"	4
"5"	"a"	1
"5"	"e"	1
"6"	"m"	1
"4"	"e"	1
"4"	"g"	3
"4"	"a"	3
"2"	"b"	5
"5"	"d"	2
"4"	"d"	2
"4"	"k"	3
"5"	"g"	2
"3"	"a"	2
*/

--(m) Listar a quantidade de turmas das disciplinas com turmas nos anos de 2022 e 2021 
--(mostrar o código da disciplina e a quantidade)
select cod_disc, count(id)
from turma
where ano=2022 or ano=2021
group by cod_disc;
/*
"cod_disc"	"count"
"31407 "	1
"MAT214"	2
"GSI023"	1
"GMV003"	1
"GOG001"	2
"31602 "	1
"ESTES4"	1
"1801  "	2
"314   "	1
"31104 "	1
"2002  "	1
"GBC045"	1
"GSI027"	1
"1414  "	2
"GSI034"	1
"GGO012"	1
"1412  "	1
"31505 "	2
"2004  "	2
"GBC023"	1
"1803  "	1
"412   "	1
"2003  "	1
"39030 "	1
"FADIR3"	1
"GBC034"	1
"GMV006"	1
"1804  "	1
"GGO002"	1
"GGO011"	1
"413   "	1
"1410  "	1
"ESTES5"	1
"2000  "	1
"1413  "	1
"GOG002"	1
"312   "	1
"GMV007"	1
"2001  "	1
"313   "	1
"ESTES1"	2
"GMV001"	1
"FADIR6"	2
"1411  "	1
"FADIR5"	1
"MAT213"	1
"GBC043"	2
"GMV005"	2
"GGO001"	1
"ESTES3"	1
"ESTES2"	1
"GBC024"	1
"GOG003"	1
*/

--(o) Mostrar a quantidade de disciplinas em cada faixa de carga horária.
select ch, count(codigo) as qtd_disc
from disciplina
group by ch;
/*
"ch"	"qtd_disc"
90	15
45	3
120	3
150	1
30	10
210	1
40	2
60	43
75	7
70	1
20	1
*/

--25) CONSULTAS COM AGRUPAMENTOS, JUNÇÕES/IN E FUNÇÕES AGREGADAS
--(a)	Listar a quantidade de turmas de cada disciplina da FACOM (mostrar o código da disciplina e a quantidade)
select disciplina.codigo, count(turma.id) as qtd_turmas
from disciplina, turma
where fac_disc='FACOM' and cod_disc=codigo
group by codigo;
/*
"codigo"	"qtd_turmas"
"GSI023"	1
"GBC043"	2
"GBC023"	1
"GBC024"	1
"GBC045"	1
"GSI027"	1
"GBC034"	2
"GSI034"	1
*/

--(b)	Listar para cada faculdade com orçamento inferior a R$50.000 
--a quantidade de professores que forma contratados depois de 2010 (mostrar o código da faculdade e a quantidade)
select sigla, count(id) as qtd_prof
from faculdade, professor
where fac_prof=sigla and orcamento<50000 and extract(year from admissao)>2010
group by sigla;
/*
"sigla"	"qtd_prof"
"FACOM"	3
*/

--(c)	Mostrar a nota média e desvio padrão de cada disciplina da FACOM. Mostrar o código da disciplina, a média e o desvio
select codigo, avg(nota) as media, STDDEV_SAMP(nota) as desvio_padrao
from disciplina, frequenta, turma
where fac_disc='FACOM' and id_turma=id and cod_disc=codigo
group by codigo;
/*
"codigo"	"media"	"desvio_padrao"
"GSI023"	70.9000015258789	
"GBC043"	71.9000015258789	5.656854249492381
"GBC023"	90	4.242640687119285
"GBC045"	68	
"GSI027"	60.900001525878906	
"GBC034"	80	
"GSI034"	80.9000015258789
*/

--(d)	Mostrar a quantidade de disciplinas ministradas pelos professores. Mostrar o id do professor e a quantidade. 
--Incluir na resposta os professores que não ministram disciplinas. Nesse caso, deve-se mostrar 0 na quantidade. 
--Se não houver casos cadastrados no banco, fazer inserções para que estes apareçam
select professor.id, count(codigo) as qtd_disc
from professor 
		left join 
	ensina on id_prof=professor.id
		left join 
	turma on id_turma=turma.id
		left join 
	disciplina on cod_disc=codigo
group by professor.id;
/*
"id"	"qtd_disc"
"1502       "	0
"1401       "	1
"202        "	1
"1300       "	1
"1700       "	1
"2008       "	1
"604        "	3
"602        "	2
"1610       "	1
"1304       "	1
"104        "	1
"1701       "	2
"502        "	1
"301        "	1
"404        "	1
"302        "	1
"204        "	2
"2009       "	1
"100        "	1
"1504       "	0
"601        "	2
"2005       "	1
"401        "	1
"1815       "	1
"1600       "	1
"421        "	1
"424        "	1
"2007       "	1
"300        "	2
"422        "	1
"101        "	1
"201        "	1
"102        "	1
"420        "	1
"901        "	1
"504        "	1
"203        "	1
"1814       "	1
"902        "	2
"423        "	1
"1402       "	1
"105        "	0
"402        "	1
"503        "	1
"1400       "	1
"1703       "	0
"1404       "	1
"200        "	1
"603        "	3
"1501       "	1
"1615       "	0
"1302       "	1
"10000000000"	1
"1620       "	1
"10000000011"	1
"303        "	1
"1503       "	0
"1500       "	1
"900        "	1
"620        "	3
"1816       "	1
"304        "	1
"400        "	1
"501        "	1
"500        "	1
"903        "	1
"1812       "	2
"904        "	1
"103        "	1
"1303       "	1
"1813       "	1
"1702       "	1
"10000000001"	1
"1403       "	1
"2006       "	1
"1301       "	1
"403        "	1
"10000000100"	1
"1605       "	2
"1704       "	1
"10000000010"	1
*/

--(e)	Mostrar a quantidade de disciplinas ministradas pelos professores que trabalham em faculdades com orçamento superior 
--a R$ 10.000. Incluir na resposta os professores que não ministram disciplinas. Nesse caso, deve-se mostrar 0 na quantidade. 
--Se não houver casos cadastrados no banco, fazer inserções para que estes apareçam
INSERT INTO professor (id, nome, fac_prof, admissao) VALUES ('305        ', 'Charles Xavier', 'INFIS', '2000-02-27');

select professor.id, count(codigo) as qtd_disc
from professor 
		left join 
	ensina on id_prof=professor.id
		left join 
	turma on id_turma=turma.id
		left join 
	disciplina on cod_disc=codigo
		inner join 
	faculdade on sigla=fac_prof
where orcamento>10000
group by professor.id;

/*
"id"	"qtd_disc"
"1502       "	0
"1401       "	1
"202        "	1
"1300       "	1
"2008       "	1
"604        "	3
"1700       "	1
"602        "	2
"1610       "	1
"1304       "	1
"104        "	1
"502        "	1
"301        "	1
"1701       "	2
"404        "	1
"302        "	1
"204        "	2
"2009       "	1
"100        "	1
"1504       "	0
"601        "	2
"2005       "	1
"401        "	1
"1815       "	1
"305        "	0
"1600       "	1
"421        "	1
"2007       "	1
"424        "	1
"300        "	2
"422        "	1
"101        "	1
"201        "	1
"102        "	1
"420        "	1
"901        "	1
"504        "	1
"203        "	1
"1814       "	1
"902        "	2
"423        "	1
"1402       "	1
"105        "	0
"402        "	1
"503        "	1
"1400       "	1
"1703       "	0
"1404       "	1
"200        "	1
"603        "	3
"1501       "	1
"1615       "	0
"1302       "	1
"10000000000"	1
"1620       "	1
"10000000011"	1
"303        "	1
"1503       "	0
"1500       "	1
"900        "	1
"620        "	3
"1816       "	1
"304        "	1
"400        "	1
"501        "	1
"500        "	1
"903        "	1
"1812       "	2
"904        "	1
"103        "	1
"1813       "	1
"1303       "	1
"1702       "	1
"10000000001"	1
"1403       "	1
"2006       "	1
"1301       "	1
"403        "	1
"10000000100"	1
"1704       "	1
"1605       "	2
"10000000010"	1
*/

--(f)	Mostrar para cada faculdade a quantidade de turmas de disciplinas com carga horária maior que horas. 
--Mostrar o ID da faculdade e a quantidade. 
--Se a faculdade não tiver turmas com essa característica, ela deve ser mostrada na resposta também, 
--colocando como 0 a qte de turmas.
select sigla, count(turma.id) as qtd_turmas
from faculdade
		left join
	(turma inner join 
	 disciplina on cod_disc=codigo and ch>60) on fac_disc=sigla
--where ch > 60
group by sigla;
--NÃO! precisa de subconsulta

--(g)	Mostrar para cada faculdade a quantidade de estudantes que frequentam disciplinas.
select disciplina.fac_disc, count (estudante.id) as qtd_estudante
from disciplina, estudante, frequenta, turma
where id_est=estudante.id and id_turma=turma.id and cod_disc=codigo
group by disciplina.fac_disc;
/*
"fac_disc"	"qtd_estudante"
"FAMEV"	5
"INFIS"	6
"ESTES"	11
"FADIR"	24
"ICIAG"	5
"FACIP"	5
"IARTE"	5
"IFILO"	5
"FAMAT"	5
"FACOM"	10
"FOUFU"	2
"INBIO"	6
"ICBIM"	5
"FAEDU"	5
*/

--(h)	Mostrar para cada faculdade a quantidade de estudantes que não frequentam nenhuma disciplina.
/* NÃO! -precisa de consultas aninhadas */

--(i)	Mostrar para cada faculdade a quantidade de disciplinas que possuem pré-requisitos
select sigla, count(cod_disc)
from faculdade, disciplina, pre_requisito
where cod_disc=codigo and fac_disc=sigla
group by sigla;
/*
"sigla"	"count"
"FAMEV"	2
"INFIS"	2
"ESTES"	2
"FADIR"	2
"ICIAG"	2
"FACIP"	2
"IARTE"	2
"IFILO"	2
"FAMAT"	2
"FACOM"	3
"FOUFU"	1
"ICBIM"	2
"FAEDU"	2
*/

--26) CONSULTAS COM AGRUPAMENTOS E QUE LISTAM ATRIBUTOS NÃO AGRUPADOS.
--Se o agrupamento for feito utilizando um atributo que é PK, pode-se mostrar no resultado da consulta os atributos 
--da mesma tabela e que não foram agrupados

--(a) Listar a quantidade de turmas de cada disciplina (mostrar o *nome* da disciplina e a quantidade). 
--Mostrar a saída ordenada pela quantidade
select codigo, nome, count(id)
from turma, disciplina
where cod_disc=codigo
group by codigo;
/*
"codigo"	"nome"	"count"
"GMV003"	"Bioquímica 1"	1
"GAV010"	"Arte Computacional"	1
"1801  "	"Construções Rurais"	2
"314   "	"Algoritmos e Programação de Computadores"	1
"31104 "	"Construção do Conhecimento Científico"	1
"1414  "	"Didática Geral"	2
"GGO012"	"Climatologia 2"	2
"FADIR4"	"Direito Digital"	1
"31505 "	"Avaliação de Impactos Ambiental para Biólogos"	2
"1802  "	"Adubos e Adubação"	1
"MAT212"	"Cálculo Diferencial e Integral I"	1
"2003  "	"Microbiologia"	1
"GAV007"	"Historia da Arte II"	1
"39030 "	"Biologia e Cultura - (PROINTER III)"	1
"FADIR3"	"Teoria do Direito"	1
"GBC034"	"Programação Orientada a Objetos"	2
"GMV006"	"Anatomia dos Animais Domésticos"	1
"GAV019"	"Arte Contemporanea II"	1
"GGO002"	"Climatologia 1"	1
"GOG004"	"Unidade de Investigação Científica I (UIC1)"	1
"GGO011"	"Geologia 2"	1
"411   "	"Estágio Supervisionado I"	1
"1410  "	"Filosofia Geral: Problemas Metafísicos"	1
"ESTES5"	"Psicologia e Ética"	1
"2000  "	"Analises Clinicas"	1
"1413  "	"Psicologia da Educação"	1
"GOG002"	"Unidade de Funcionamento do Organismo I"	1
"312   "	"Física Básica III"	1
"313   "	"Geometrica Analítica"	1
"GAV001"	"Historia da Arte I"	1
"ESTES1"	"Fundamentos em Enfermagem"	2
"GEDU32"	"Teoria e Prática do Treinamento I"	1
"MAT213"	"Cálculo Diferencial e Integral II"	1
"GBC043"	"Sistemas de Banco de Dados"	2
"GMV005"	"Fundamentos de Anatomia Veterinária"	2
"MAT211"	"Fundamentos de Matemática Elementar II"	1
"ESTES3"	"Saúde Coletiva II"	1
"ESTES2"	"Saúde Coletiva I"	1
"GBC024"	"Algoritmo e Estrutura de Dados 2"	1
"310   "	"Física Básica I"	2
"410   "	"Metodologia do Ensino de Ciência"	2
"MAT214"	"Geometria Analitica"	2
"GSI023"	"Redes de computadores"	1
"MAT201"	"Fundamentos de Matemática Elementar I"	1
"GOG001"	"Unidade de Constituição do Organismo"	2
"31602 "	"Evolução"	1
"ESTES4"	"Enfermagem Médica"	1
"GEDU42"	"Teoria e Prática do Treinamento II"	1
"2002  "	"Genetica"	1
"GBC045"	"Programação Procedimental"	1
"GSI027"	"Otimização"	1
"GSI034"	"Projeto e desenvolvimento 1"	1
"GAV013"	"Arte Contemporanea I"	1
"1412  "	"Ética"	1
"2004  "	"Biossegurança"	2
"GBC023"	"Algoritmo e Estrutura de Dados 1"	1
"1803  "	"Manejo e Conservação do Solo e da Água"	1
"412   "	"Construção do Discurso Escrito"	1
"311   "	"Física Básica II"	1
"1804  "	"Irrigação e Drenagem"	1
"413   "	"Metodologia do Ensino da Língua Portuguesa"	1
"GEDU31"	"Fisiologia do Exercício"	1
"GMV007"	"Bioquímica 2"	1
"2001  "	"Imunologia"	1
"GMV001"	"Citologia, Histologia e Embriologia"	1
"FADIR6"	"Direito do Trabalho 2"	2
"1411  "	"História da Filosofia Medieval"	1
"1805  "	"Agrometeorologia"	1
"FADIR5"	"Direito do Trabalho 1"	1
"GEDU41"	"Ritmo e Expressão"	1
"GGO001"	"Geologia 1"	1
"GOG003"	"Un. de Reabilitação Integral do Ap. Estomatognático I"	1
"GEDU43"	"Comportamento Motor "	2
"31407 "	"Profissão Biólogo"	1
*/

--(b) Mostrar, para cada turma de 2022-01, a quantidade de alunos que foram aprovados. 
--Mostrar o *nome* da disciplina, a turma, o ano, e a quantidade. Mostrar a saída ordenada pelo nome da disciplina
select codigo, nome, ano, turma, count(id_est) as alunos_aprovados
from turma, disciplina, frequenta
where nota>60 and id=id_turma and cod_disc=codigo and ano=2022 and semestre=1
group by codigo, ano, turma
order by nome asc;

/*
"codigo"	"nome"	"ano"	"turma"	"alunos_aprovados"
"GBC023"	"Algoritmo e Estrutura de Dados 1"	2022	"66"	2
"2000  "	"Analises Clinicas"	2022	"A "	2
"31505 "	"Avaliação de Impactos Ambiental para Biólogos"	2022	"C "	1
"GMV003"	"Bioquímica 1"	2022	"A "	3
"GMV007"	"Bioquímica 2"	2022	"B "	1
"GGO002"	"Climatologia 1"	2022	"33"	1
"FADIR6"	"Direito do Trabalho 2"	2022	"D4"	3
"1412  "	"Ética"	2022	"A "	1
"31602 "	"Evolução"	2022	"C "	1
"1410  "	"Filosofia Geral: Problemas Metafísicos"	2022	"A "	2
"GMV005"	"Fundamentos de Anatomia Veterinária"	2022	"C "	1
"ESTES1"	"Fundamentos em Enfermagem"	2022	"1A"	1
"ESTES1"	"Fundamentos em Enfermagem"	2022	"1B"	1
"2002  "	"Genetica"	2022	"C "	1
"1411  "	"História da Filosofia Medieval"	2022	"A "	1
"2001  "	"Imunologia"	2022	"B "	1
"31407 "	"Profissão Biólogo"	2022	"C "	1
"ESTES2"	"Saúde Coletiva I"	2022	"1A"	1
"ESTES3"	"Saúde Coletiva II"	2022	"1A"	1
"GBC043"	"Sistemas de Banco de Dados"	2022	"01"	1
*/

--(c) Liste a quantidade de aulas que são ministradas em cada dia da semana (mostrar o dia da semana e a quantidade)
select semana.id_sem, descricao, count (horario_aula.id_sem)
from horario_aula, semana
where horario_aula.id_sem=semana.id_sem
group by semana.id_sem
order by semana.id_sem;
/*
"id_sem"	"descricao"	"count"
"1"	"Domingo"	3
"2"	"Segunda"	27
"3"	"Terça"	14
"4"	"Quarta"	22
"5"	"Quinta"	9
"6"	"Sexta"	13
*/

--(d) Mostrar para cada disciplina que é pré-requisito o seu nome e a quantidade de disciplinas que dela dependem. 
--Incluir na consulta disciplinas que não são pré-requisito, colocando 0 na quantidade.
select cod_pre, nome, count(cod_disc)
from pre_requisito right join disciplina
	on cod_pre=codigo
group by cod_pre, nome;
/*
"cod_pre"	"nome"	"count"
	"Enfermagem Médica"	0
	"Unidade de Saúde Humana I (USH1)"	0
"MAT212"	"Cálculo Diferencial e Integral I"	1
"1414  "	"Didática Geral"	1
	"Biologia e Cultura - (PROINTER III)"	0
	"Otimização"	0
	"Psicologia e Ética"	0
	"Adubos e Adubação"	0
"GBC045"	"Programação Procedimental"	1
"GMV005"	"Fundamentos de Anatomia Veterinária"	1
	"Redes de computadores"	0
	"Lógica para Programação"	0
	"PIPE 1"	0
	"Ritmo e Expressão"	0
	"Filosofia Geral: Problemas Metafísicos"	0
	"História da Filosofia Medieval"	0
	"Avaliação de Impactos Ambiental para Biólogos"	0
	"Direito Digital"	0
"ESTES1"	"Fundamentos em Enfermagem"	1
	"Construções Rurais"	0
	"Comportamento Motor "	0
	"Fundamentos de Matemática Elementar II"	0
	"Algoritmos e Programação de Computadores"	0
	"Un. de Reabilitação Integral do Ap. Estomatognático I"	0
"GAV001"	"Historia da Arte I"	1
	"Arquitetura e Organização de Computadores"	0
	"Engenharia de Software"	0
	"Biossegurança"	0
	"Imunologia"	0
"GOG001"	"Unidade de Constituição do Organismo"	1
	"Física Básica III"	0
	"Geometrica Analítica"	0
	"Metodologia do Ensino da Língua Portuguesa"	0
"GAV013"	"Arte Contemporanea I"	1
"ESTES2"	"Saúde Coletiva I"	1
"GBC023"	"Algoritmo e Estrutura de Dados 1"	1
	"Metodologia do Ensino de Ciência"	0
	"Agrometeorologia"	0
	"Didática Geral II"	0
	"Historia da Arte II"	0
"311   "	"Física Básica II"	1
"GEDU31"	"Fisiologia do Exercício"	1
"2000  "	"Analises Clinicas"	1
	"Psicologia da Educação"	0
	"Algoritmo e Estrutura de Dados 2"	0
	"Cálculo Diferencial e Integral II"	0
"FADIR3"	"Teoria do Direito"	1
	"Citologia, Histologia e Embriologia"	0
	"Unidade de Investigação Científica I (UIC1)"	0
"GBC043"	"Sistemas de Banco de Dados"	1
"1412  "	"Ética"	1
	"Anatomia dos Animais Domésticos"	0
"2002  "	"Genetica"	1
	"Teoria e método em Geografia"	0
	"Direito do Trabalho 2"	0
"MAT201"	"Fundamentos de Matemática Elementar I"	1
	"Saúde Coletiva II"	0
	"Programação Orientada a Objetos"	0
	"Construção do Conhecimento Científico"	0
	"Arte Computacional"	0
	"Filosofia da Educação"	0
"FADIR5"	"Direito do Trabalho 1"	1
	"Bioquímica 2"	0
	"Cartografia"	0
	"Estágio Supervisionado I"	0
	"Etica II"	0
"GGO001"	"Geologia 1"	1
"310   "	"Física Básica I"	1
	"Construção do Discurso Escrito"	0
	"Geometria Analitica"	0
	"Projeto e desenvolvimento 1"	0
"GGO002"	"Climatologia 1"	1
	"Lógica"	0
	"Profissão Biólogo"	0
	"Climatologia 2"	0
	"Geologia 2"	0
"1803  "	"Manejo e Conservação do Solo e da Água"	1
"1804  "	"Irrigação e Drenagem"	1
	"Evolução"	0
	"Cálculo 1"	0
"GMV003"	"Bioquímica 1"	1
"GEDU32"	"Teoria e Prática do Treinamento I"	1
	"Arte Contemporanea II"	0
	"Unidade de Funcionamento do Organismo I"	0
	"Microbiologia"	0
	"Teoria e Prática do Treinamento II"	0
	"Direito Financeiro"	0
*/

--(f) Listar para todas as faculdades o seu nome e o número de professores. 
--Mesmo as faculdades que não possuem professor devem aparecer no resultado.
select sigla, faculdade.nome as nome_fac, count(id) as qtd_prof
from professor right join faculdade
	on fac_prof=sigla
group by sigla;
/*
"sigla"	"nome_fac"	"qtd_prof"
"FAMEV"	"Faculdade de Medicina Veterinária"	5
"INFIS"	"Instituto de Física"	6
"ESTES"	"Escola Técnica de Saúde"	10
"FADIR"	"Faculdade de Direito"	5
"ICIAG"	"Instituto de Ciências Agrárias"	5
"FACIP"	"Faculdade de Ciencias Integradas de Pontal"	5
"IFILO"	"Instituto de Filosofia"	5
"IARTE"	"Instituto de Artes"	5
"FAMEC"	"Faculdade de Engenharia Mecânica"	0
"FAMAT"	"Faculdade de Matematica"	5
"FEELT"	"Faculdade de Engenharia Elétrica"	0
"FACOM"	"Faculdade da Computação"	11
"FOUFU"	"Faculdade de Odontologia"	5
"FECIV"	"Faculdade de Engenharia Civil"	0
"INBIO"	"Instituto de Biologia"	5
"ICBIM"	"Instituto de Ciências Biomédicas"	5
"FAEDU"	"Faculdade de Educação Física"	5
*/

--(g) Listar para todas as faculdades o seu nome e o número de alunos. 
--Mesmo as faculdades que não possuem alunos devem aparecer no resultado.
select sigla, faculdade.nome as nome_fac, count(id) as qtd_est
from estudante right join faculdade
	on fac_est=sigla
group by sigla;
/*
"sigla"	"nome_fac"	"qtd_est"
"FAMEV"	"Faculdade de Medicina Veterinária"	5
"INFIS"	"Instituto de Física"	5
"ESTES"	"Escola Técnica de Saúde"	10
"FADIR"	"Faculdade de Direito"	5
"ICIAG"	"Instituto de Ciências Agrárias"	5
"FACIP"	"Faculdade de Ciencias Integradas de Pontal"	5
"IFILO"	"Instituto de Filosofia"	5
"IARTE"	"Instituto de Artes"	5
"FAMEC"	"Faculdade de Engenharia Mecânica"	0
"FAMAT"	"Faculdade de Matematica"	5
"FEELT"	"Faculdade de Engenharia Elétrica"	0
"FACOM"	"Faculdade da Computação"	15
"FOUFU"	"Faculdade de Odontologia"	5
"FECIV"	"Faculdade de Engenharia Civil"	0
"INBIO"	"Instituto de Biologia"	5
"ICBIM"	"Instituto de Ciências Biomédicas"	5
"FAEDU"	"Faculdade de Educação Física"	5
*/

--(i) Listar para todas as faculdades o seu nome, o número de professores e o número de alunos. 
--Verifique sua resposta com as consultas anteriores para conferir se as quantidades estão corretas
select sigla, faculdade.nome as nome_fac, count(distinct professor.id) as qtd_prof, count(distinct estudante.id) as qtd_est
from faculdade left join professor
	on fac_prof=sigla
	left join estudante
	on fac_est=sigla
group by sigla; 
/*
"sigla"	"nome_fac"	"qtd_prof"	"qtd_est"
"ESTES"	"Escola Técnica de Saúde"	10	10
"FACIP"	"Faculdade de Ciencias Integradas de Pontal"	5	5
"FACOM"	"Faculdade da Computação"	11	15
"FADIR"	"Faculdade de Direito"	5	5
"FAEDU"	"Faculdade de Educação Física"	5	5
"FAMAT"	"Faculdade de Matematica"	5	5
"FAMEC"	"Faculdade de Engenharia Mecânica"	0	0
"FAMEV"	"Faculdade de Medicina Veterinária"	5	5
"FECIV"	"Faculdade de Engenharia Civil"	0	0
"FEELT"	"Faculdade de Engenharia Elétrica"	0	0
"FOUFU"	"Faculdade de Odontologia"	5	5
"IARTE"	"Instituto de Artes"	5	5
"ICBIM"	"Instituto de Ciências Biomédicas"	5	5
"ICIAG"	"Instituto de Ciências Agrárias"	5	5
"IFILO"	"Instituto de Filosofia"	5	5
"INBIO"	"Instituto de Biologia"	5	5
"INFIS"	"Instituto de Física"	6	5
*/
--(j) Refaça o exercício (i) utilizando subconsultas no FROM
--NÃO! precisa de subconsulta

--(k) Listar para todas as faculdades o seu nome, e a soma do número de professores e número de alunos.
select sigla, faculdade.nome as nome_fac, count(distinct professor.id)+ count(distinct estudante.id) as soma_est_prof
from faculdade left join professor
    on fac_prof=sigla
    left join estudante
    on fac_est=sigla
group by sigla;
/*
"sigla"	"nome_fac"	"soma_est_prof"
"ESTES"	"Escola Técnica de Saúde"	20
"FACIP"	"Faculdade de Ciencias Integradas de Pontal"	10
"FACOM"	"Faculdade da Computação"	26
"FADIR"	"Faculdade de Direito"	10
"FAEDU"	"Faculdade de Educação Física"	10
"FAMAT"	"Faculdade de Matematica"	10
"FAMEC"	"Faculdade de Engenharia Mecânica"	0
"FAMEV"	"Faculdade de Medicina Veterinária"	10
"FECIV"	"Faculdade de Engenharia Civil"	0
"FEELT"	"Faculdade de Engenharia Elétrica"	0
"FOUFU"	"Faculdade de Odontologia"	10
"IARTE"	"Instituto de Artes"	10
"ICBIM"	"Instituto de Ciências Biomédicas"	10
"ICIAG"	"Instituto de Ciências Agrárias"	10
"IFILO"	"Instituto de Filosofia"	10
"INBIO"	"Instituto de Biologia"	10
"INFIS"	"Instituto de Física"	11
*/


--27) CONSULTAS COM CONDICIONAIS NOS GRUPOS e condições de seleção

--(a) Listar as turmas que possuem mais de 7 alunos. 
--Mostrar o código da disciplina, a turma, o ano, o semestre e quantidade de alunos
select cod_disc, turma, ano, semestre, count(id_est) as qtd_alunos
from turma, frequenta
where id_turma=id
group by id
having count(id_est)>7;
/*não tem nenhuma turma com mais de 7 alunos, máximo são 5 alunos*/

select cod_disc, turma, ano, semestre, count(id_est) as qtd_alunos
from turma, frequenta
where id_turma=id
group by id
having count(id_est)>3;
/*
"cod_disc"	"turma"	"ano"	"semestre"	"qtd_alunos"
"FADIR5"	"D2"	2021	1	5
"FADIR4"	"D1"	2020	2	5
"FADIR3"	"D1"	2022	2	5
"FADIR6"	"D4"	2022	1	4
"FADIR6"	"D3"	2022	2	5
*/

--(b) Listar as turmas que possuem média de notas inferior a 60
select id, avg(nota)
from turma, frequenta
where id_turma=id
group by id
having avg(nota)<60;
/*
"id"	"avg"
1817	40
320	8.600000381469727
512	58
317	9.5
1723	40
924	55.20000076293945
1818	15
1722	55.20000076293945
318	7
925	0
316	8
1503	8
1501	10
319	9.199999809265137
315	9
*/

--(c) Listar as turmas de 2022-01 que possuem média de notas inferior a 60
select id, avg(nota)
from turma, frequenta
where id_turma=id and ano=2022 and semestre=1
group by id
having avg(nota)<60;
/*
"id"	"avg"
1723	40
1722	55.20000076293945
*/

--(d) Listar os nomes dos estudantes com mais de 6 disciplinas neste semestre 
--     (mostrar o nome do estudante e a quantidade de disciplinas)
select nome, count(id_turma)
from estudante, frequenta, turma
where id_est=estudante.id and id_turma = turma.id and ano=2022 and semestre=2
group by nome
having count(id_turma)>6;
/*
não há alunos matriculados em mais de 6 disciplinas neste semestre (ou em qualquer semestre)
*/
select nome, count(id_turma)
from estudante, frequenta, turma
where id_est=estudante.id and id_turma = turma.id and ano=2022 and semestre=2
group by nome
having count(id_turma)>1;
/*
"nome"	"count"
"Fernando Souza"	2
"Marcos Estefam"	2
"João Marcos Ramos"	2
"Rafael Silva"	2
"Elaine Ribeiro de Faria Paiva"	2
*/

--(e) Mostrar as faculdades com menos de 3 disciplinas (mostrar a sigla da faculdade e a quantidade de disciplinas).
select sigla, count (codigo)
from faculdade, disciplina
where fac_disc=sigla
group by sigla
having count (codigo)>3;
/*
"sigla"	"count"
"FAMEV"	5
"INFIS"	5
"ESTES"	10
"FADIR"	5
"ICIAG"	5
"FACIP"	7
"IARTE"	5
"IFILO"	7
"FAMAT"	5
"FACOM"	13
"FOUFU"	5
"INBIO"	5
"ICBIM"	5
"FAEDU"	5
*/

--(f) Listar os nomes dos estudantes com CRA>60 e com mais de 6 disciplinas neste semestre 
--(mostrar o nome do estudante e a quantidade de disciplinas)
select nome, count(id_turma)
from estudante, frequenta, turma
where id_est=estudante.id and id_turma=turma.id and cra>60 and ano=2022 and semestre=2
group by nome
having count(id_turma)>6;
/*
não tem alunos com mais de 6 disciplinas
*/

select nome, count(id_turma)
from estudante, frequenta, turma
where id_est=estudante.id and id_turma=turma.id and cra>60 and ano=2022 and semestre=2
group by nome
having count(id_turma)>1;
/*
"nome"	"count"
"Fernando Souza"	2
"Marcos Estefam"	2
"João Marcos Ramos"	2
"Rafael Silva"	2
"Elaine Ribeiro de Faria Paiva"	2
*/

--(g) Mostrar as turmas de disciplinas de 4 créditos que possuem mais de 5 alunos matriculados. 
--(mostrar o código da disciplina, a turma, semestre, ano e a quantidade de alunos matriculados)
select turma.id, turma, semestre, ano, count(id_est)
from disciplina, frequenta, turma
where cod_disc=codigo and turma.id=id_turma and ch>40--coloquei tendo a carga horaria>40, já que não são por créditos, sim carga horaria
group by turma.id
having count(id_est)>5;
/*
máximo de alunos matriculados são 5
*/

select turma.id, turma, semestre, ano, count(id_est)
from disciplina, frequenta, turma
where cod_disc=codigo and turma.id=id_turma and ch>40
group by turma.id
having count(id_est)=5;
/*
"id"	"turma"	"semestre"	"ano"	"count"
652	"D2"	1	2021	5
650	"D1"	2	2022	5
*/

--(h) Mostrar as turmas de disciplinas de carga horária 60 que possuem mais de 5 alunos matriculados. 
--(mostrar o *nome* da disciplina, a turma, semestre, ano e a quantidade de alunos matriculados)
select turma.id, disciplina.nome, turma, semestre, ano, count(id_est)
from disciplina, frequenta, turma
where cod_disc=codigo and turma.id=id_turma and ch=60
group by turma.id, disciplina.nome
having count(id_est)>5;
/*
máximo de alunos matriculados são 5
*/

select turma.id, disciplina.nome, turma, semestre, ano, count(id_est)
from disciplina, frequenta, turma
where cod_disc=codigo and turma.id=id_turma and ch=60
group by turma.id, disciplina.nome
having count(id_est)=5;
/*
"id"	"nome"	"turma"	"semestre"	"ano"	"count"
652	"Direito do Trabalho 1"	"D2"	1	2021	5
650	"Teoria do Direito"	"D1"	2	2022	5
*/
