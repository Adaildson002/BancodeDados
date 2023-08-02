insert into estado (Nome,UF) 
values  ('Bahia','BA'),('Minas Gerais', 'MG'),('São Paulo','SP');

insert into municipio (Estado_ID, nome, codIBGE)
values (1,'Serra do Ramalho',2930154), (2,'São Gotardo',3162104), (3,'Suzano', 3552502);

insert into cliente (Nome, CPF, Celular, endLOGRADOURO, endNumero, endmunicipio, Municipio_ID, endCEP)
values ('eitan', 586322245,77995632232, 'rua i', 25,350, 1, 04763000),
		('cleiton', 562452525, 3199252352, 'rua do oitizeiro', 450, 951, 2, 3880000),
        ('Elena', 7891324213, 1192321056, 'av marengo', 1888, 121, 3, 086950000);

insert into contareceber ( Cliente_ID, faturaVenda, dataConta, dataVencimento, valor, situação)
values 	(1, 1111, '2023-07-15', '2023-08-05', 149.99, 1),
		(2, 2222, '2023-05-17', '2023-06-10', 450, 3),
        (3, 3333, '2023-06-25', '2023-07-20', 1372.88, 2);

