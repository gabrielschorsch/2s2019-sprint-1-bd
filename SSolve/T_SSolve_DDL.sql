CREATE DATABASE T_SSolve;

USE T_SSolve;

CREATE TABLE Clientes (
	IdCliente INT PRIMARY KEY IDENTITY,
	NomeFantasia Varchar(255) NOT NULL,
	CNPJ Varchar(18) not null unique,
	RazaoSocial Varchar(255) not null,
	Endereco Varchar(255)
);

CREATE TABLE Servico (
	IdServico INT PRIMARY KEY IDENTITY,
	Categoria Varchar(255) not null
);

CREATE TABLE Funcionarios (
	IdFuncionario INT PRIMARY KEY IDENTITY,
	Nome Varchar(255) not null
);

CREATE TABLE Pedidos (
	IdPedido INT PRIMARY KEY IDENTITY,
	IdCliente INT FOREIGN KEY REFERENCES Clientes (IdCliente),
	IdServico INT FOREIGN KEY REFERENCES Servico (IdServico),
	Descricao text not null,
	Preco decimal not null,
	HorarioInicio smalldatetime not null,
	HorarioFim smalldatetime not null
);

CREATE TABLE FuncionariosPedido (
	IdPedido INT FOREIGN KEY REFERENCES Pedidos (IdPedido),
	IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios (IdFuncionario)
);