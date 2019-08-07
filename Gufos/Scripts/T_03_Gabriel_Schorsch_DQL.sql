USE T_Gufos;

Select * from Categorias ORDER BY IdCategoria asc;
Select * from Eventos;
Select * from Usuarios;
Select * from Presencas;

select E.*,C.Nome from Eventos as E 
join Categorias as C on E.IdCategoria = C.IdCategoria;

select P.*,U.*,E.* from Presencas P 
join Usuarios U on P.IdUsuario = U.IdUsuario 
join Eventos E on P.IdEvento = E.IdEvento;

select P.*,U.*,E.*,C.* from Presencas P join
Usuarios U on P.IdUsuario = U.IdUsuario join
Eventos E on P.IdEvento = E.IdEvento join 
Categorias C on C.IdCategoria = E.IdCategoria order by U.IdUsuario asc;