Use T_OpFlix

Insert into Permissoes Values ('Administrador'), ('Cliente')
Insert into Usuarios (Nome,Email,Senha,DataNascimento,IdPermissao) Values ('Gabriel','gabriel.schorsch@email.com','123312','2003-03-20',1),
																		  ('Mariana','mariana.regia@email.com','123123','2003-05-13',2)
Insert into Categoria Values ('Ação'),('Romance'),('Terror'),('Ficção Científica');
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

Update Usuarios SET Imagem
= 'https://scontent-lht6-1.cdninstagram.com/vp/4e9bc2de56050b8f2aa421337a73395a/5D9B01DD/t51.2885-19/s150x150/52730233_551230265283567_3460431815829880832_n.jpg?_nc_ht=scontent-lht6-1.cdninstagram.com' 
WHERE IdUsuario = 1;
