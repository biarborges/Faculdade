CREATE TABLE pessoa_Trabalho7
(
   id int PRIMARY KEY auto_increment,
   nome varchar(50),
   sexo varchar(15),
   email varchar(50) UNIQUE,
   telefone varchar(15),
   cep char(10),
   logradouro varchar(100),
   cidade varchar(50),
   estado char(2)
) ENGINE=InnoDB;

CREATE TABLE paciente
(
   id int PRIMARY KEY auto_increment,
   peso real,
   altura real,
   tipo_sangue char(3),
   id_pessoa int not null,
   FOREIGN KEY (id_pessoa) REFERENCES pessoa(id) ON DELETE CASCADE
) ENGINE=InnoDB;