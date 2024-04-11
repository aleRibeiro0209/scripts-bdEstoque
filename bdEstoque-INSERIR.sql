/*
	Comando .: INSERT
	Categoria: DML
	Sintaxe:
		INSERT [INTO] <NomeTb>
			[(<NomeCP1, NomeCP2, ..., NomeCPN>)]
		VALUES (<Reg1CP1, Reg1CP2, ..., Reg1CPN>),
			   (<Reg2CP1, Reg2CP2, ..., Reg2CPN>),
			   (<RegNCP1, RegNCP2, ..., RegNCPN>)
*/
 
-- Selecionando qual o Banco de Dados devera ser usado --
USE bdEstoque
GO

-- Inserir dados na Tabela Cargo --
INSERT INTO tbCargo (Codigo, Nome, VlHora)
	VALUES (1234, 'Gerente Senior', 38.00),
		   (1235, 'Gerente Pleno', 30.25),
		   (1345, 'Auxiliar Estoque', 12.55),
		   (1346, 'Auxiliar Administrativo', 12.55),
		   (1347, 'Auxiliar Limpeza', 11.00),
		   (1123, 'Operador Caixa Senior', 18.25),
		   (1124, 'Operador Caixa Auxiliar', 12.55),
		   (1456, 'Supervisor Caixa', 22.25),
		   (1457, 'Supervisor Estoque', 22.25)
GO

-- Inserir dados na Tabela Departamento --
INSERT INTO tbDep (Codigo, Nome)
	VALUES (512, 'Almoxarifado'),
		   (900, 'Gerencia'),
		   (650, 'Caixa'),
		   (712, 'Financeiro'),
		   (855, 'Limpeza'),
		   (910, 'Presidencia'),
		   (550, 'Expedicao')
GO

-- Inserir dados na Tabela funcionario --
INSERT INTO tbFunc (Codigo, Nome, dtInicio, Cargo, Depto)
	VALUES (100, 'Jose', '31/05/1985', 1234, 910),
		   (101, 'Antonio', '06/11/1985', 1234, 900),
		   (250, 'Maria', '10/06/1999', 1235, 900),
		   (255, 'Francioso', '10/08/2000', 1235, 512),
		   (256, 'Marilda', '15/08/2000', 1235, 712),
		   (257, 'Reginaldo', '15/08/2000', 1235, 855),
		   (259, 'David', '01/06/2001', 1235, 550),
		   (301, 'Rosangela', '15/08/2001', 1245, 512),
		   (302, 'Josue', '15/08/2001', 1245, 512),
		   (355, 'Leandra', '10/07/2005', 1347, 855),
		   (359, 'Airton', '15/02/2005', 1347, 855),
		   (360, 'Silva', '15/02/2005', 1347, 855),
		   (361, 'Andre', '15/02/2005', 1347, 855),
		   (380, 'Aline S', '28/10/2005', 1123, 650),
		   (381, 'Mariana', '28/10/2005', 1123, 650),
		   (385, 'Aline L', '15/11/2005', 1123, 650),
		   (390, 'Zulene', '18/12/2005', 1123, 650),
		   (402, 'Keyla', '20/01/2006', 1124, 712),
		   (410, 'Roberto', '25/02/2006', 1124, 712),
		   (450, 'Cindy', '30/06/2006', 1456, 650),
		   (451, 'Michely', '10/08/2006', 1456, 650),
		   (500, 'Cesar', '11/09/2006', 1456, 512)
GO

-- Inserir dados na Tabela Fornecedor -- 
INSERT INTO tbFornec (Codigo, Empresa, Email, Cidade)
	VALUES (10, 'Solintel', 'solintel@sol.com.br', 'S�o Paulo'),
		   (15, 'Hd Informatica', 'hd@info.com', 'S�o Paulo'),
		   (20, 'Cpm Hard & Soft', 'cpm@cpm.com', 'Rio de Janeiro'),
		   (25, 'High System', 'high@system.com', 'Rio de Janeiro'),
		   (30, 'Kairos System', 'kairos@kairos.com.br', 'S�o Paulo'),
		   (35, 'Good Boys', 'good@boys.com', 'Belo Horizonte'),
		   (40, 'Art Chip System', 'art@chip.com', 'Belo Horizonte'),
		   (45, 'First Technology', 'first@first.com', 'Fortaleza'),
		   (50, 'Four Future Info', 'four@future.com', 'Fortaleza'),
		   (55, 'NoName Inc', 'null', 'null'),
		   (60, 'Oakmi Ltda', 'null', 'S�o Paulo'),
		   (65, 'Intelectos S/A', 'etec.intelectos@gmail.com', 'null'),
		   (70, 'Informatica Tche', 'tche@uol.com.br', 'Porto Alegre')
GO

-- Inserir dados na Tabela Produto --
INSERT INTO tbProd (Codigo, Nome, Valor, Fornec)
	VALUES (100, 'teclado abnt2', 25.00, 20),
		   (101, 'teclado abnt2 gamer', 65.00, 20),
		   (102, 'teclado abnt prof', 45.00, 20),
		   (110, 'teclado abnt2', 15.00, 35),
		   (112, 'teclado abnt2 prof', 27.50, 35),
		   (200, 'mouse usb 3b', 10.00, 20),
		   (201, 'mouse usb prof', 35.00, 20),
		   (202, 'mouse usb gamer', 47.50, 20),
		   (210, 'mouse usb 3b', 12.50, 50),
		   (220, 'mouse usb gamer', 42.50, 35),
		   (300, 'monitor 12p Samsung', 115.00, 35),
		   (305, 'monitor lcd 14p samsung', 195.00, 35),
		   (310, 'monitor lcd 22p samsung', 275.00, 35),
		   (330, 'monitor 12p Samsung', 117.00, 20),
		   (340, 'monitor lcd 22p Samsung', 281.00, 20),
		   (400, 'hd 500gb � Samsung', 198.00, 15),
		   (401, 'hd 500gb � seagate', 150.00, 15),
		   (402, 'hd 500 � Samsung', 190.00, 35),
		   (410, 'hd 1tb � Samsung', 300.00, 15),
		   (420, 'hd 1.5tb � seagate', 350.00, 35),
		   (500, 'ram 1g - ddr3', 50.00, 15),
		   (501, 'ram 1g - ddr3', 45.00, 35),
		   (510, 'ram 2g - ddr3', 90.00, 20),
		   (512, 'ram 2g - ddr3', 90.00, 15),
		   (520, 'ram 4g - ddr3', 150.00, 15),
		   (521, 'ram 4g - ddr3', 140.00, 35),
		   (700, 'mb gamer � scpu', 650.00, 40),
		   (701, 'mb gamer � scpu', 620.00, 35),
		   (710, 'mb hiper game � dcpu', 1750.00, 35),
		   (711, 'mb home � scpu', 180.00, 40),
		   (712, 'mb home � scpu', 195.00, 35),
		   (950, 'placa rede 100/1000', 35.00, 20),
		   (951, 'placa rede 100/1000', 30.00, 40),
		   (1010, 'placa som 16bits 4canais', 350.00, 35),
		   (1011, 'placa som 16bits 4canais', 375.00, 25),
		   (1020, 'placa som 64bits 16canais', 1635.00, 25),
		   (1025, 'placa video svga 0.16mp', 250.00, 10),
		   (1030, 'placa video 3d svga 0.11mp 128mb', 1189.00, 10),
		   (1040, 'mb home � scpu', 195.00, 70)
GO

-- Inserir dados na Tabela Cliente --
INSERT INTO tbCliente (Codigo, Nome, Email, Fone)
	VALUES (10, 'ANTONIO', 'ANTONIO@GMAIL.COM', '99695-2299'),
		   (15, 'SERGIO', 'SERGIO@HOTMAIL.COM', '98765-4321'),
		   (20, 'MARIA', 'MARIA@HOTMAIL.COM', '97654-3210'),
		   (25, 'LOURDES', 'LOURDES@IG.COM.BR', '96543-2109'),
		   (30, 'DAVID', 'DAVID@HOTMAIL.COM', '95432-1098'),
		   (35, 'JOSE', 'JOSE@UOL.COM.BR', '94321-0987'),
		   (40, 'SILMARA', 'SILMARA@GLOBO.COM', '93210-9876'),
		   (45, 'SANDRA', 'SANDRA@HOTMAIL.COM', '92109-8765'),
		   (50, 'PATRICK', 'PATRICK@AOL.COM', '91098-7654')
GO

-- Inserir dados na Tabela Movimento --
INSERT INTO tbMovimento (movCod, cliCod, funCod, movData)
	VALUES (01, 15, 380, '11/12/13'),
		   (02, 25, 380, '11/12/13'),
		   (03, 45, 390, '15/01/14'),
		   (04, 10, 380, '16/01/14'),
		   (05, 40, 381, '20/01/14'),
		   (06, 25, 385, '20/01/14'),
		   (07, 50, 385, '20/01/14'),
		   (08, 10, 381, '10/02/14'),
		   (09, 25, 390, '15/02/14'),
		   (10, 15, 402, '20/05/14'),
		   (11, 10, 390, '20/06/14'),
		   (12, 30, 385, '20/06/14'),
		   (13, 35, 410, '20/06/14'),
		   (14, 20, 390, '25/07/14'),
		   (15, 20, 390, '25/07/14')
GO

-- Inserir dados na Tabela Movimento Auxiliar --
INSERT INTO tbMoviAux (auxCod, movCod, prodCod, auxQuant)
	VALUES (01, 01, 202, 2),
		   (02, 01, 300, 1),
		   (03, 01, 110, 1),
		   (04, 01, 402, 1),
		   (05, 01, 520, 2),
		   (06, 02, 951, 2),
		   (07, 02, 1011, 1),
		   (08, 02, 1025, 1),
		   (09, 02, 710, 1),
		   (10, 02, 400, 2),
		   (11, 02, 410, 2),
		   (12, 02, 520, 2),
		   (13, 02, 110, 2),
		   (14, 03, 100, 3),
		   (15, 03, 210, 3),
		   (16, 03, 310, 1),
		   (17, 03, 410, 1),
		   (18, 04, 300, 1),
		   (19, 04, 420, 1),
		   (20, 04, 520, 1),
		   (21, 05, 100, 4),
		   (22, 05, 102, 3),
		   (23, 06, 200, 5),
		   (24, 06, 101, 5),
		   (25, 06, 300, 1),
		   (26, 07, 521, 5),
		   (27, 08, 710, 1),
		   (28, 09, 112, 1),
		   (29, 09, 220, 1),
		   (30, 09, 340, 1),
		   (31, 09, 420, 1),
		   (32, 09, 521, 1),
		   (33, 09, 710, 1),
		   (34, 09, 951, 1),
		   (35, 09, 1020, 1),
		   (36, 10, 110, 5),
		   (37, 10, 110, 5),
		   (38, 10, 210, 5),
		   (39, 10, 220, 5),
		   (40, 10, 330, 5),
		   (41, 10, 340, 5),
		   (42, 10, 410, 5),
		   (43, 10, 510, 5),
		   (44, 11, 112, 1),
		   (45, 11, 210, 1),
		   (46, 11, 340, 1),
		   (47, 12, 112, 3),
		   (48, 12, 220, 3),
		   (49, 12, 330, 3),
		   (50, 12, 420, 3),
		   (51, 12, 521, 3),
		   (52, 12, 711, 3),
		   (53, 12, 1030, 3),
		   (54, 13, 110, 1),
		   (55, 13, 112, 3),
		   (56, 13, 200, 2),
		   (57, 13, 310, 2),
		   (58, 14, 712, 1),
		   (59, 14, 950, 2),
		   (60, 14, 1010, 2),
		   (61, 14, 1030, 2),
		   (62, 15, 1040, 2),
		   (63, 15, 1040, 1)
GO