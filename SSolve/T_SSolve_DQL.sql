USE T_SSolve

Select * from Clientes;
Select * from Funcionarios;
Select * from Pedidos;
Select * from FuncionariosPedido;
Select * from Servico;

Select C.NomeFantasia, C.Endereco, C.CNPJ,S.Categoria,P.Descricao,P.Preco,P.HorarioInicio,P.HorarioFim 
from Clientes C join Pedidos P on C.IdCliente = P.IdCliente join Servico S on S.IdServico = P.IdServico;