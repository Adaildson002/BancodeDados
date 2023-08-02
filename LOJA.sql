create database Loja;
use loja;
create table Cliente ( id int auto_increment primary key, Nome varchar(80) not null, 
CPF char(11) not null, Celular char(11), endLOGRADOURO VARCHAR (100) not null, 
endNumero varchar(10)not null, endMunicipio int,  Municipio_ID int not null, endCEP char(8));

create table contaReceber (ID int auto_increment primary key, Cliente_ID int,
 faturaVenda int, dataConta date not null, dataVencimento date not null, valor decimal (18,2) not null, 
 situação enum ('1','2','3') not null);
 
 create table municipio (id int auto_increment primary key , Estado_ID int,
 nome varchar (80) not null, codIBGE int not null);
 
 create table Estado (id int auto_increment primary key, 
 Nome varchar(50) not null, UF char (2) not null);
 
 ALTER TABLE Cliente 
 add constraint FK_municipio 
 foreign key (Municipio_ID) references Municipio(id);
 
 alter table contaReceber
 add constraint Fk_Cliente
 foreign key (Cliente_id) references Cliente(id);
 
 alter table Municipio
 add constraint FK_Estado
 foreign key (Estado_ID) references Estado(id)