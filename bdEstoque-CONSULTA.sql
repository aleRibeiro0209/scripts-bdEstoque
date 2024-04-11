/*
	Comando .: SELECT
	Categoria: DQL
	Sintaxe: SELECT <nomeCampo(s)>
			 FROM <nomeTabela>
			 WHERE (condicao)
*/

-- Selecionando qual o Banco de Dados devera ser usado --
USE bdEstoque
GO

-- Consulta basica
SELECT Nome
FROM tbCliente
GO

-- Consulta b�sica para um evento especifico
SELECT Nome
FROM tbCliente
WHERE Codigo = 10
GO

-- Consulta com LIKE
SELECT *
FROM tbProd
WHERE Nome LIKE '%RA%'
GO

-- Consulta com subQuery
SELECT * 
FROM tbFunc
WHERE Depto = (
				SELECT Codigo
				FROM tbDep
				WHERE Nome = 'Limpeza'
			  )
GO

-- Consulta sem BETWEEN
SELECT * 
FROM tbMovimento
WHERE movData >= '20/01/2014'
AND movData <= '15/02/2015'
GO

-- Consulta com BETWEEN
SELECT * 
FROM tbMovimento
WHERE movData BETWEEN '20/01/2014' AND '15/02/2015'
GO

-- Consulta todos os produtos cujo valor e igual ou maior que R$ 100,00 e igual ou menor que R$ 500,00
SELECT *
FROM tbProd
WHERE Valor BETWEEN 100 AND 500
GO