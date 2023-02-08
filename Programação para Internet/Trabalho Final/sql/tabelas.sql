CREATE TABLE Anunciante
  (
     Codigo   INT PRIMARY KEY auto_increment, 
     Nome     VARCHAR(120) NOT NULL,
     CPF      VARCHAR(16) NOT NULL,
     Email    VARCHAR(144) NOT NULL,
     SenhaHash VARCHAR(200) NOT NULL,
     Telefone VARCHAR(20) NOT NULL,
     UNIQUE Email(Email),
     UNIQUE CPF(CPF)
  )
engine = InnoDB; 


CREATE TABLE Endereco(
    CEP VARCHAR(10) NOT NULL,
    Bairro VARCHAR(120) NOT NULL,
    Cidade VARCHAR(150) NOT NULL,
    Estado VARCHAR(30) NOT NULL
) ENGINE = InnoDB;


CREATE TABLE Categoria(
    Codigo INT PRIMARY KEY auto_increment,
    Nome VARCHAR(20) NOT NULL,
    Descricao VARCHAR(500) NOT NULL
) ENGINE = InnoDB;


CREATE TABLE Anuncio(
    Codigo INT PRIMARY KEY auto_increment,
    Titulo VARCHAR(144) NOT NULL,
    Descricao VARCHAR(3000) NOT NULL,
    Preco DOUBLE NOT NULL,
    DataHora DATETIME NOT NULL,
    Cep VARCHAR(10) NOT NULL,
    Bairro VARCHAR(120) NOT NULL,
    Cidade VARCHAR(150) NOT NULL,
    Estado VARCHAR(30) NOT NULL,
    CodCategoria INT NOT NULL,
    CodAnunciante INT NOT NULL,
    FOREIGN KEY(CodCategoria) REFERENCES Categoria(Codigo),
    FOREIGN KEY(CodAnunciante) REFERENCES Anunciante(Codigo)
) ENGINE = InnoDB;


CREATE TABLE Foto(
    CodAnuncio INT NOT NULL,
    NomeArqFoto VARCHAR(140) NOT NULL
) ENGINE = InnoDB;


CREATE TABLE Interesse(
    Codigo INT PRIMARY KEY auto_increment,
    Mensagem VARCHAR(200) NOT NULL,
    DataHora DATETIME NOT NULL,
    Contato VARCHAR(100) NOT NULL,
    CodAnuncio INT NOT NULL,
    FOREIGN KEY(CodAnuncio) REFERENCES Anuncio(Codigo)
) ENGINE = InnoDB;