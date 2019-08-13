CREATE DATABASE T_OpFlix

Use T_OpFlix;

CREATE TABLE Permissoes(
	IdPermissao INT PRIMARY KEY IDENTITY,
	Tipo Varchar(20) not null
);

CREATE TABLE Usuarios(
	IdUsuario Int Primary Key Identity,
	Nome Varchar(45) not null,
	Email Varchar(255) not null unique,
	Senha Varchar(255) not null,
	DataNascimento Date not null,
	IdPermissao int foreign key references Permissoes (IdPermissao)
);


Alter table Usuarios Add Imagem Nvarchar(2083) default 'http://cdn.onlinewebfonts.com/svg/img_333639.png'

Create table Tipo(
	IdTipo int primary key identity,
	Nome Varchar(20) not null
);

Create Table Categoria(
	IdCategoria int primary key identity,
	Nome Varchar(255) not null
);

Create Table Lancamentos(
	IdLancamento int primary key identity,
	Titulo varchar(255) not null unique,
	Sinopse text not null,
	IdTipo int foreign key references Tipo (IdTipo),
	IdCategoria int foreign key references Categoria (IdCategoria),
	DataLancamento date not null,
	TempoDuracao int not null
);

Create Table Plataformas(
	IdPlataforma INT PRIMARY KEY IDENTITY,
	Nome Varchar(255) not null
)
