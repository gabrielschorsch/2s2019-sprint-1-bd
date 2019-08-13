Use T_OpFlix

Insert into Permissoes Values ('Administrador'), ('Cliente')
Insert into Usuarios (Nome,Email,Senha,DataNascimento,IdPermissao) Values ('Gabriel','gabriel.schorsch@email.com','123312','2003-03-20',1),
																		  ('Mariana','mariana.regia@email.com','123123','2003-05-13',2)
Insert into Categoria Values ('Ação'),('Romance'),('Terror'),('Ficção Científica');
Insert into Categoria Values ('Animação')

Insert into Tipo Values ('Filme'),('Série')

Insert into Lancamentos (Titulo,Sinopse,IdTipo,IdCategoria,DataLancamento,TempoDuracao) Values 
('Batman: O Cavaleiro das Trevas ',
'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.
The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
1,
3,
'2008-07-18',
152
)
Insert into Lancamentos (Titulo,Sinopse,IdTipo,IdCategoria,DataLancamento,TempoDuracao) Values 
('Matrix',
'Neo acorda da Matrix e está pronto para abalar o mundo',
1,
4,
'1999-05-21',
135
)
Insert into Lancamentos (Titulo,Sinopse,IdTipo,IdCategoria,DataLancamento,TempoDuracao) Values 
('Deuses Americanos', 'Uma série exclusiva Amazon Prime',2,1,'2017-04-30',8)
Insert into Lancamentos (Titulo,Sinopse,IdTipo,IdCategoria,DataLancamento,TempoDuracao) Values 
('La Casa de Papel 3 temp', 'Um novo assalto',2,1,'2019-07-19',8)
Insert into Lancamentos (Titulo,Sinopse,IdTipo,IdCategoria,DataLancamento,TempoDuracao) Values 
('Rei Leão', 'A animação original',1,5,'0001-01-11',118)
Insert into Lancamentos (Titulo,Sinopse,IdTipo,IdCategoria,DataLancamento,TempoDuracao) Values 
('Toy Story 4', 'A quarta sequência do filme Toy Story',1,5,'2019-06-20',100)
Insert into Lancamentos (Titulo,Sinopse,IdTipo,IdCategoria,DataLancamento,TempoDuracao) Values 
('Rei Leão - 2019', 'A adaptação',1,6,'2019-07-18',118)
Insert into Categoria Values ('Drama'), ('Comédia'), ('Documentário')

Insert into Plataformas Values ('Netflix'),('Cinema'),('Amazon Prime'), ('VHS')


Insert into Usuarios (Nome,Email,Senha,DataNascimento,IdPermissao) Values ('Victor','victor.aro@email.com','1233121','2000-01-01',2)
Insert into Usuarios (Nome,Email,Senha,DataNascimento,IdPermissao) Values ('Helena','helena.strada@email.com','123312','1990-05-05',1)

Delete from Lancamentos Where Titulo = 'Deuses Americanos'

Update Lancamentos SET Titulo = 'La Casa De Papel - 3º Temporada' WHERE Titulo = 'La Casa de Papel 3 temp'
Update Lancamentos SET DataLancamento = '1994-07-08' WHERE Titulo = 'Rei Leão'
Update Lancamentos SET Plataforma = 4 Where 
Update Usuarios SET IdPermissao = 2 Where IdUsuario = 5
Update Usuarios SET Imagem
= 'https://scontent-lht6-1.cdninstagram.com/vp/4e9bc2de56050b8f2aa421337a73395a/5D9B01DD/t51.2885-19/s150x150/52730233_551230265283567_3460431815829880832_n.jpg?_nc_ht=scontent-lht6-1.cdninstagram.com' 
WHERE IdUsuario = 1;
