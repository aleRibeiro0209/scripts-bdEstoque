/*
	bdEstoque
	Autor: A.Ribeiro
	21/mar
*/

 -- Criando o Banco de Dados --
CREATE DATABASE bdEstoque
GO

 -- Selecionando qual o Banco de Dados devera ser usado --
USE bdEstoque
GO

 -- Criando as Tabelas --
CREATE TABLE tbCargo
	(
		Codigo INT PRIMARY KEY NOT NULL,
		Nome NVARCHAR(50) NOT NULL,
		VlHora MONEY
	)
GO

CREATE TABLE tbDep
	(
		Codigo INT PRIMARY KEY NOT NULL,
		Nome NVARCHAR(50) NOT NULL
	)
GO

CREATE TABLE tbFunc
	(
		Codigo INT PRIMARY KEY NOT NULL,
		Nome NVARCHAR(50) NOT NULL,
		dtInicio DATE,
		Cargo INT,
		Depto INT
	)
GO

CREATE TABLE tbMovimento
	(
		movCod INT PRIMARY KEY NOT NULL,
		cliCod INT,
		funCod INT,
		movData DATE
	)
GO

CREATE TABLE tbFornec
	(
		Codigo INT PRIMARY KEY NOT NULL,
		Empresa NVARCHAR(50) NOT NULL,
		Email NVARCHAR(50),
		Cidade NVARCHAR(25)
	)
GO

CREATE TABLE tbMoviAux
	(
		auxCod INT PRIMARY KEY NOT NULL,
		movCod INT,
		prodCod INT,
		auxQuant FLOAT
	)
GO

CREATE TABLE tbProd
	(
		Codigo INT PRIMARY KEY NOT NULL,
		Nome NVARCHAR(50) NOT NULL,
		Valor MONEY,
		Fornec INT
	)
GO

CREATE TABLE tbCliente
	(
		Codigo INT PRIMARY KEY NOT NULL,
		Nome NVARCHAR(50) NOT NULL,
		Email NVARCHAR(50),
		Fone NVARCHAR(15)
	)
GO