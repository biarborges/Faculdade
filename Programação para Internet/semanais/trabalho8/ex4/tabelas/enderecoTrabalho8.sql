CREATE TABLE enderecoTrabalho8(
   id serial,
   cep char(10) not null,
   rua varchar(100),
   bairro varchar(50),
   cidade varchar(50),
   primary key (id)
) ENGINE=InnoDB;