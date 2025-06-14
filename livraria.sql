create  database livraria;
use livraria;
create table Editora
(
    Id_editora int not null auto_increment,
    nome varchar (30) not null,
    primary key (Id_editora)
);

create table cliente 
(
    codigo int not null primary key,
    telefone varchar (11),
    logradouro varchar (100) not null,
    numero varchar (10) not null,
    complemento varchar (30),
    bairro varchar (30) not null,
    cidade varchar (40) not null,
    UF varchar(2) not null,
    cep varchar(9) not null,
    cpf_cnpj varchar(14) not null,
    tipo char (1) not null
);

create tABLE Livro
(
    isbn varchar(15) not null,
    autor varchar (100) not null,
    assunto varchar(200) not null,
    qtde smallint not null,
    id_editora int not null, 
    primary key (isbn),
    foreign key (id_editora) references editora(id_editora)
);


create table cliente_livro
(
    codigo_cliente int not null,
    isbn varchar (15) not null,
    foreign key (codigo_cliente) references cliente (codigo),
    foreign key (isbn) references livro(isbn),
    primary key (codigo_cliente,isbn) 
);
