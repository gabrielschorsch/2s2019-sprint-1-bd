Use T_OpFlix

Select * from Usuarios
Select * from Permissoes
Select * from Tipo
Select * from Categoria
Select * from Lancamentos
Exec ContagemUsuarios;
Exec MostrarLancamentos;


Create Procedure MostrarLancamentos
AS Select L.Titulo, L.Sinopse, T.Nome as Tipo,C.Nome as Categoria, L.DataLancamento,L.TempoDuracao
FROM Lancamentos As L join Tipo as T on T.IdTipo = L.IdTipo join Categoria C on C.IdCategoria = L.IdCategoria;



CREATE Procedure ContagemUsuarios
AS Select COUNT(*) AS NumeroUsuarios From Usuarios

