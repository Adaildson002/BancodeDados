create view v_ContaNaoPagas as
	select contareceber.ID , cliente.Nome, cliente.CPF, contareceber.dataVencimento as 'Vencimento', contareceber.valor 
	from cliente inner join contareceber
	on contareceber.Cliente_ID = cliente.id
	where contareceber.situação = 1