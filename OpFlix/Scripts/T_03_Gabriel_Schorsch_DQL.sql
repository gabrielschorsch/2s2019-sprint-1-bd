Use T_OpFlix

Select * from Usuarios
Select * from Permissoes
Select * from Tipo
Select * from Categoria
Select * from Lancamentos
Select * from Plataformas
Select DISTINCT Lancamentos.Titulo, Lancamentos.DataLancamento, Categoria.Nome As Categoria , Tipo.Nome As Tipo From Lancamentos 
join Categoria on Lancamentos.IdCategoria = Categoria.IdCategoria join Tipo on Lancamentos.IdTipo = Tipo.IdTipo;

Exec ListarFilmesPorCategoria 5
Exec ContarFilmesPorCategoria 6

Select * from vwGenerosPlataformas

Select COUNT(*) AS QntdUsuarios from Usuarios

CREATE PROCEDURE ListarFilmesPorCategoria @IdCategoria Int
AS Select * from Lancamentos Where IdCategoria = @IdCategoria;


CREATE PROCEDURE ContarFilmesPorCategoria @IdCategoria Int
AS Select COUNT(*) from Lancamentos Where IdCategoria = @IdCategoria


CREATE VIEW vwGenerosPlataformas
AS Select P.Nome AS Plataforma, C.Nome As Genero from Lancamentos L join Categoria C on L.IdCategoria = C.IdCategoria join Plataformas P on P.IdPlataforma = L.Plataforma
