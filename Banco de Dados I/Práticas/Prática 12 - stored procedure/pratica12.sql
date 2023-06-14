SET search_path TO universidade;

--1) Fazer um stored procedure que faça a inserção dos dados em uma tabela utilizando um sequence. 
--Insira alguns dados nesta tabela através do stored procedure criado. Na resposta, 
--mostrar a tabela antes e o depois da chamada da função.
select * from estudante where fac_est='INFIS';
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"305        "	"Neil Gaiman"	"2000-11-10"	"INFIS"	90.5	"300        "
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"INFIS"	85	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"INFIS"	78.2	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"INFIS"	88	"302        "
"309        "	"Marry Shelley"	"1999-08-30"	"INFIS"	91.7	"303        "
*/

CREATE SEQUENCE seq
   START WITH 1
   INCREMENT BY 1;

create or replace function insercao_dados (nome estudante.nome%type, datanasc estudante.datanasc%type, 
										   fac_est estudante.fac_est%type, cra estudante.cra%type)
returns void as 
$$
begin 
	insert into estudante values (nextval('seq'), nome, datanasc, fac_est, cra, null);
end
$$ language plpgsql;

select insercao_dados('Arthur Conan Doyle', '1999-05-22', 'INFIS', 88);
select insercao_dados('Michael Crichton', '1999-10-23', 'INFIS', 87);

select * from estudante where fac_est='INFIS';
/*
"id"	"nome"	"datanasc"	"fac_est"	"cra"	"tutor"
"305        "	"Neil Gaiman"	"2000-11-10"	"INFIS"	90.5	"300        "
"306        "	"Robert Louis Stevenson"	"1999-11-13"	"INFIS"	85	"301        "
"307        "	"Anne Rice"	"2000-10-04"	"INFIS"	78.2	"302        "
"308        "	"Bram Stocker"	"2000-11-08"	"INFIS"	88	"302        "
"309        "	"Marry Shelley"	"1999-08-30"	"INFIS"	91.7	"303        "
"1          "	"Arthur Conan Doyle"	"1999-05-22"	"INFIS"	88	
"2          "	"Michael Crichton"	"1999-10-23"	"INFIS"	87	
*/


--2) Fazer um stored procedure que faça a inserção dos dados em três ou mais tabelas ao mesmo tempo. 
--Envolver pelo menos as tabelas ensina ou frequenta. 
--Insira alguns dados nessas tabelas por meio do stored procedure criado.  
--Os dados a serem inseridos devem, na sua maioria, serem passados como parâmetro (dica: utilize %TYPE).
--Na resposta, mostrar as tabelas antes e depois da chamada da função.
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

select * from professor;
/*
"id"	"nome"	"fac_prof"	"admissao"
"100        "	"Gina Maira"	"FACOM"	"2000-02-27"
"101        "	"Marcelo Keese Albertini"	"FACOM"	"2013-03-07"
"102        "	"Rivalino Matias Júnior"	"FACOM"	"2003-02-05"
"103        "	"André Backes"	"FACOM"	"20015-06-02"
"104        "	"Bruno Augusto Nassif Travençolo"	"FACOM"	"2018-01-09"
"105        "	"Luiz Gustavo Almeida Martins"	"FACOM"	"2008-05-04"
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
"10000000000"	"Jean Ponciano"	"FACOM"	"2005-10-10"
"10000000001"	"Elaine Ribeiro"	"FACOM"	"2005-09-10"
"10000000010"	"Alexsandro Soares"	"FACOM"	"2005-08-10"
"10000000011"	"Pedro Frosi"	"FACOM"	"2000-10-10"
"10000000100"	"Marcia Aparecida Fernandes"	"FACOM"	"2005-01-10"
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
"305        "	"Charles Xavier"	"INFIS"	"2000-02-27"
*/

select* from ensina;
/*
"id_prof"	"id_turma"
"100        "	155
"101        "	151
"102        "	154
"103        "	152
"104        "	153
"601        "	650
"601        "	651
"602        "	650
"602        "	652
"603        "	653
"603        "	652
"603        "	654
"604        "	652
"604        "	653
"604        "	654
"620        "	651
"620        "	652
"620        "	654
"300        "	315
"300        "	317
"301        "	316
"302        "	318
"303        "	319
"304        "	320
"2005       "	2015
"2006       "	2016
"2007       "	2017
"2008       "	2018
"2009       "	2019
"1812       "	1817
"1812       "	1818
"1813       "	1819
"1814       "	1820
"1815       "	1821
"1816       "	1822
"900        "	920
"901        "	921
"902        "	922
"902        "	923
"903        "	924
"904        "	925
"500        "	511
"501        "	512
"502        "	513
"503        "	514
"504        "	515
"1300       "	1300
"1301       "	1300
"1302       "	1301
"1303       "	1302
"1304       "	1300
"1700       "	1720
"1701       "	1722
"1701       "	1723
"1704       "	1725
"1702       "	1721
"1400       "	1417
"1401       "	1419
"1402       "	1417
"1403       "	1418
"1404       "	1419
"1600       "	10
"1605       "	20
"1610       "	30
"1605       "	40
"1620       "	50
"200        "	218
"201        "	219
"202        "	220
"203        "	221
"204        "	222
"204        "	223
"10000000000"	2
"10000000001"	3
"10000000010"	4
"10000000011"	5
"10000000100"	3
"1500       "	1500
"1501       "	1501
"400        "	430
"401        "	431
"402        "	432
"403        "	433
"404        "	434
"420        "	400
"421        "	401
"422        "	402
"423        "	403
"424        "	405
*/

create or replace function insercao_dados_3Tabelas (sigla faculdade.sigla%type, nome_fac faculdade.nome%type, predio faculdade.predio%type, 
													orcamento faculdade.orcamento%type, id_prof professor.id%type, 
												   nome_prof professor.nome%type, admissao professor.admissao%type,
												   id_turma ensina.id_turma%type)
returns void as 
$$
begin 
	insert into faculdade values (sigla, nome_fac, predio, orcamento);
	insert into professor values (id_prof, nome_prof, sigla, admissao);
	insert into ensina values (id_prof, id_turma);
end
$$ language plpgsql;

select insercao_dados_3Tabelas('FABIA', 'Faculdade da Bia', '1X', 100.000, '306', 'Erik Magnus Lehnsherr', '2010-01-01', '320');

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
"FABIA"	"Faculdade da Bia"	"1X   "	100.00
*/

select * from professor;
/*
"id"	"nome"	"fac_prof"	"admissao"
"100        "	"Gina Maira"	"FACOM"	"2000-02-27"
"101        "	"Marcelo Keese Albertini"	"FACOM"	"2013-03-07"
"102        "	"Rivalino Matias Júnior"	"FACOM"	"2003-02-05"
"103        "	"André Backes"	"FACOM"	"20015-06-02"
"104        "	"Bruno Augusto Nassif Travençolo"	"FACOM"	"2018-01-09"
"105        "	"Luiz Gustavo Almeida Martins"	"FACOM"	"2008-05-04"
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
"10000000000"	"Jean Ponciano"	"FACOM"	"2005-10-10"
"10000000001"	"Elaine Ribeiro"	"FACOM"	"2005-09-10"
"10000000010"	"Alexsandro Soares"	"FACOM"	"2005-08-10"
"10000000011"	"Pedro Frosi"	"FACOM"	"2000-10-10"
"10000000100"	"Marcia Aparecida Fernandes"	"FACOM"	"2005-01-10"
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
"305        "	"Charles Xavier"	"INFIS"	"2000-02-27"
"306        "	"Erik Magnus Lehnsherr"	"FABIA"	"2010-01-01"
*/

select * from ensina;
/*
"id_prof"	"id_turma"
"100        "	155
"101        "	151
"102        "	154
"103        "	152
"104        "	153
"601        "	650
"601        "	651
"602        "	650
"602        "	652
"603        "	653
"603        "	652
"603        "	654
"604        "	652
"604        "	653
"604        "	654
"620        "	651
"620        "	652
"620        "	654
"300        "	315
"300        "	317
"301        "	316
"302        "	318
"303        "	319
"304        "	320
"2005       "	2015
"2006       "	2016
"2007       "	2017
"2008       "	2018
"2009       "	2019
"1812       "	1817
"1812       "	1818
"1813       "	1819
"1814       "	1820
"1815       "	1821
"1816       "	1822
"900        "	920
"901        "	921
"902        "	922
"902        "	923
"903        "	924
"904        "	925
"500        "	511
"501        "	512
"502        "	513
"503        "	514
"504        "	515
"1300       "	1300
"1301       "	1300
"1302       "	1301
"1303       "	1302
"1304       "	1300
"1700       "	1720
"1701       "	1722
"1701       "	1723
"1704       "	1725
"1702       "	1721
"1400       "	1417
"1401       "	1419
"1402       "	1417
"1403       "	1418
"1404       "	1419
"1600       "	10
"1605       "	20
"1610       "	30
"1605       "	40
"1620       "	50
"200        "	218
"201        "	219
"202        "	220
"203        "	221
"204        "	222
"204        "	223
"10000000000"	2
"10000000001"	3
"10000000010"	4
"10000000011"	5
"10000000100"	3
"1500       "	1500
"1501       "	1501
"400        "	430
"401        "	431
"402        "	432
"403        "	433
"404        "	434
"420        "	400
"421        "	401
"422        "	402
"423        "	403
"424        "	405
"306        "	320
*/

--3) Fazer um stored procedure que retorne um exception por causa de um erro na hora de inserção dos dados em uma 
--determinada tabela (não pode ser as mesmas tabelas dos exercícios anteriores). 
--Em caso de sucesso, uma mensagem deve ser exibida. O erro deve ser algo semântico não verificado pelo SGBD 
--(por exemplo, chaves primárias, estrangeiras, tipos). Coloque um comentário sobre qual o erro semântico está sendo considerado. 
--Na resposta, mostrar um caso em que o erro ocorre e uma caso em que ele não ocorre.

--tenta inserir os dados em sala, verifica se a capacidade é maior ou igual a 30, se sim, faz a inserção, do contrário não o faz.
create or replace function insercao_sala_checaCapacidade2 (capacidade sala.capacidade%type, predio sala.predio%type, 
														   numero sala.numero%type)
returns void as 
$$
begin
	if capacidade>=30
	then
		raise notice 'Inserido com sucesso.';
		insert into sala values (predio, numero, capacidade);
	else
		raise exception 'Capacidade < 30.';
	end if;
end 
$$ language plpgsql;

select insercao_sala_checaCapacidade2(100,'1X',7::smallint);
/*
NOTICE:  Inserido com sucesso.

Successfully run. Total query runtime: 205 msec.
1 rows affected.
*/

select insercao_sala_checaCapacidade2(10,'1X',8::smallint);
/*
ERROR:  Capacidade < 30.
CONTEXT:  função PL/pgSQL insercao_sala_checacapacidade2(integer,character,smallint) linha 8 em RAISE
SQL state: P0001
*/

--4) Fazer um stored procedure que normalize as notas dos alunos de uma determinada turma 
--(parâmetros para turma: ano/semestre/cod_disc/turma). A maior nota deverá ser transformada em 10 e as 
--demais crescerem proporcionalmente. Após a normalização, caso algum aluno fique com nota entre 5.80 e 5.99, 
--esta deverá ser arredondada para 6.0.
--Não criar consultas aninhadas para solucionar este exercício. Procure um caso no BD em que de fato ocorrerá uma normalização. 
--Caso não exista, crie novos dados (mostrar os comandos). Na resposta, mostrar o antes e o depois da chamada da função.

create or replace function normaliza_notas(ano_at turma.ano%type, semestre_at turma.semestre%type, cod_disc_at turma.cod_disc%type, 
											turma_at turma.turma%type)
returns void as 
$$
declare
    tupla RECORD;
    maior_nota real;
begin
	select max(nota) into maior_nota from frequenta where id_turma 
												in (select id from turma where ano = ano_at 
													and semestre = semestre_at and turma.cod_disc = cod_disc_at 
													and turma = turma_at);

    for tupla in select id_est, nota from turma, frequenta where ano=ano_at and semestre=semestre_at 
															and turma.cod_disc=cod_disc_at and turma=turma_at and id=id_turma
    loop
        update frequenta
        set nota = tupla.nota * 10 / maior_nota
        where id_est = tupla.id_est;		
    end loop;

    for tupla in select id_est, nota from turma, frequenta where ano=ano_at and semestre=semestre_at 
															and turma.cod_disc=cod_disc_at and turma=turma_at and id=id_turma
    
	loop
		if tupla.nota >= 5.8 AND tupla.nota <=5.99 
		then
            update frequenta
            set nota = 6.0
            where id_est = tupla.id_est;
        end if;
    end loop;
end;
$$ language plpgsql;


insert into frequenta values('197',152,54.8);
select * from turma, frequenta where id=id_turma and turma='66' and semestre=1 and ano=2022 and cod_disc='GBC023';
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"	"id_est"	"id_turma"	"nota"
152	"66"	1	2022	"GBC023"	"5R   "	103	"199        "	152	87
152	"66"	1	2022	"GBC023"	"5R   "	103	"198        "	152	93
152	"66"	1	2022	"GBC023"	"5R   "	103	"197        "	152	54.8
*/

select normaliza_notas (2022,1,'GBC023','66');

select * from frequenta, turma where frequenta.id_turma=turma.id and turma='66' 
and semestre=1 and ano=2022 and cod_disc='GBC023';
/*
"id"	"turma"	"semestre"	"ano"	"cod_disc"	"predio_s"	"n_sala"	"id_est"	"id_turma"	"nota"
"199        "	152	9.354838	152	"66"	1	2022	"GBC023"	"5R   "	103
"198        "	152	10	152	"66"	1	2022	"GBC023"	"5R   "	103
"197        "	152	6	152	"66"	1	2022	"GBC023"	"5R   "	103
*/

--5) Fazer um stored procedure para remover do banco as turmas de um semestre/ano com menos de N alunos (parâmetros:ano,semestre,N)
create or replace function remove_turma (ano_at turma.ano%type, semestre_at turma.semestre%type, n integer)
returns void as 
$$
declare
  novo_id integer;
  cont integer;
begin

	for novo_id in select id from turma where ano = ano and semestre = semestre
	loop
  		select count(id_est) into cont from frequenta where id_turma = novo_id;
  		if cont < n 
  		then
  			delete from horario_aula where id_turma = novo_id;
			delete from ensina where id_turma = novo_id;
			delete from frequenta where id_turma = novo_id;
    		delete from turma where id = novo_id;
  		end if;
	end loop;
end;

$$ language plpgsql;

select count (id_est), id_turma, semestre, ano from turma, frequenta where id=id_turma and ano=2022 and semestre=1
group by id_turma, semestre, ano
/*
"count"	"id_turma"	"semestre"	"ano"
2	2015	1	2022
1	1418	1	2022
1	1	1	2022
1	1302	1	2022
1	923	1	2022
1	1725	1	2022
3	152	1	2022
1	1724	1	2022
2	1417	1	2022
1	922	1	2022
1	2019	1	2022
1	1722	1	2022
1	2017	1	2022
1	1723	1	2022
4	654	1	2022
1	2016	1	2022
3	1300	1	2022
1	921	1	2022
2	1419	1	2022
2	1720	1	2022
1	511	1	2022
1	920	1	2022
1	1301	1	2022
*/

select remove_turma(2022,1,2);

select count (id_est), id_turma, semestre, ano from turma, frequenta where id=id_turma and ano=2022 and semestre=1
group by id_turma, semestre, ano
/*
"count"	"id_turma"	"semestre"	"ano"
3	1300	1	2022
3	152	1	2022
2	2015	1	2022
2	1419	1	2022
2	1720	1	2022
2	1417	1	2022
4	654	1	2022
*/

