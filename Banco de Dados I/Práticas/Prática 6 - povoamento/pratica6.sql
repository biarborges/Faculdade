--grupo 3: INFIS

SET search_path TO universidade;

-- FACULDADE
INSERT INTO faculdade (sigla, nome, predio, orcamento) VALUES ('INFIS', 'Instituto de Fisica', '1X', 37500000.00);

--PROFESSOR
INSERT INTO professor (id, nome, fac_prof, admissao) VALUES (300,'Ademir Cavalheiro','INFIS','2007-12-10'),
															(301,'Adevailton Bernardo dos Santos', 'INFIS','2003-11-07'),
															(302,'Alessandra Riposati Arantes','INFIS','2012-01-12'),
															(303,'Djalmir Nestor Messias','INFIS','2003-11-07'),
															(304,'Marcel Novaes','INFIS','2012-01-12');

--ESTUDANTE
INSERT INTO estudante (id, nome, datanasc, fac_est, cra, tutor) VALUES (305,'Neil Gaiman', '2000-11-10','INFIS',90.5,300),
																		(306,'Robert Louis Stevenson','1999-11-13','INFIS',85.0,301),
																		(307,'Anne Rice','2000-10-04','INFIS',78.2,302),
																		(308,'Bram Stocker','2000-11-08','INFIS',88.0,302),
																		(309,'Marry Shelley','1999-08-30','INFIS',91.7,303);

--DISCIPLINA
INSERT INTO disciplina (codigo, nome, fac_disc, ch) VALUES (310,'Fisica Basica I','INFIS',90), --2 semestre
															(311,'Fisica Basica II','INFIS',90), --3 semestre
															(312,'Fisica Basica III','INFIS',90), --4 semestre
															(313,'Geometrica Analitica','INFIS',60), --1 semestre
															(314,'Algoritmo e Programacao de Computadores','INFIS',60); --4 semestre

--PRÉ-REQUISITO
INSERT INTO pre_requisito (cod_disc, cod_pre) VALUES (311,310),
													(312,311);
													
--SALA
INSERT INTO sala (predio,numero,capacidade) VALUES ('1X',1,60),
													('1X',2,60),
													('1X',3,60);

--TURMA
INSERT INTO turma (id, turma, semestre, ano, cod_disc, predio_s, n_sala) VALUES (315,'A1',2,2020,310,'1X',2), --segunda, 13:10
																					(316,'A2',2,2020,310,'1X',2), -- terça, 19
																					(317,'B1',3,2020,311,'1X',3), -- terça 07:10
																					(318,'C1',4,2021,312,'1X',1),--quarta 13:10
																					(319,'D1',1,2021,313,'1X',1),--quinta 07:10 
																					(320,'E1',4,2021,314,'1X',1);--sexta 13:10

--ENSINA
INSERT INTO ensina (id_prof,id_turma) VALUES (300,315),
											(300,317),
											(301,316),
											(302,318),
											(303,319),
											(304,320);

--FREQUENTA
INSERT INTO frequenta (id_est, id_turma, nota) VALUES (305,315,9.0),
														(306,316,8.0),
														(307,317,9.5),
														(308,318,7.0), 
														(308,320,8.6),
														(309,319,9.2);

--HORARIO
INSERT INTO horario (id_hora,hora_inicio,hora_fim) VALUES ('a', '07:10:00', '08:00:00'),
															('b', '08:00:00', '08:50:00'),
															('c', '08:50:00', '09:40:00'),
															('d', '09:50:00', '10:40:00'),
															('e', '10:40:00', '11:30:00'),
															('q', '11:30:00', '12:20:00'),
															('f', '13:10:00', '14:00:00'),
															('g', '14:00:00', '14:50:00'),
															('h', '14:50:00', '15:40:00'),
															('i', '16:00:00', '16:50:00'),
															('j', '16:50:00', '17:40:00'),
															('k', '17:40:00', '18:30:00'),
															('l', '18:10:00', '19:00:00'),
															('m', '19:00:00', '19:50:00'),
															('n', '19:50:00', '20:40:00'),
															('o', '20:50:00', '21:40:00'),
															('p', '21:40:00', '22:30:00');

--SEMANA
INSERT INTO semana (id_sem,descricao) VALUES ('1','Domingo'),
												('2','Segunda'),
												('3','Terca'),
												('4','Quarta'),
												('5','Quinta'),
												('6','Sexta'),
												('7','Sabado');

--HORARIO_AULA
INSERT INTO horario_aula (id_sem, id_hora, id_turma) VALUES ('2','f',315),
															('3','m',316),
															('3','a',317),
															('4','f',318),
															('5','a',319),
															('6','f',320);

