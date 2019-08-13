Use T_OpFlix

Select * from Usuarios
Select * from Permissoes
Select * from Tipo
Select * from Categoria
Select * from Lancamentos

Exec ListarFilmesPorCategoria 1
Exec ContarFilmesPorCategoria 5

Select * from vwGenerosPlataformas


CREATE PROCEDURE ListarFilmesPorCategoria @IdCategoria Int
AS Select * from Lancamentos Where IdCategoria = @IdCategoria


CREATE PROCEDURE ContarFilmesPorCategoria @IdCategoria Int
AS Select COUNT(*) from Lancamentos Where IdCategoria = @IdCategoria


CREATE VIEW vwGenerosPlataformas
AS Select P.Nome AS Plataforma, C.Nome As Genero from Lancamentos L join Categoria C on L.IdCategoria = C.IdCategoria join Plataformas P on P.IdPlataforma = L.Plataforma