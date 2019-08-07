USE T_Gufos

INSERT INTO Usuarios (Nome, Email, Senha, Permissao) 
	VALUES ('Rayssa','rayssa@gmail.com','r123456','ALUNO');

INSERT INTO Usuarios (Nome, Email, Senha, Permissao) 
	VALUES ('Clayton','c.y@mail.com','123456','ADMINISTRADOR');

SELECT * FROM Usuarios;

INSERT INTO Categorias (Nome)
	VALUES ('Jogos'),('Meetup'),('Futebol');

SELECT * FROM Categorias ORDER BY IdCategoria asc;

INSERT INTO Eventos(Titulo, Descricao, DataEvento, Ativo, Localizacao, IdCategoria) 
	VALUES ('Campeonato de Ping-Pong', 'Campeonato entre as turmas de tec. de redes e dev', GETDATE() , 1, 'Alameda Barão de Limeira, 539', 1 );

INSERT INTO Eventos(Titulo, Descricao, DataEvento, Localizacao, IdCategoria) 
	VALUES ('Meetup', 'BR Relacionais', '2019-08-06T18:00:00', 'Alameda Barão de Limeira, 539', 2 );

INSERT INTO Eventos(Titulo, Descricao, DataEvento, Localizacao, IdCategoria) 
	VALUES ('Futebol no terraço', 'Do NUDES', '2019-08-06T18:00:00', 'Alameda Barão de Limeira, 539', 2 );

INSERT INTO Presencas (IdEvento, IdUsuario) VALUES (1,2),(1,1),(2,2);

UPDATE Eventos SET IdCategoria = 3 WHERE IdEvento = 3