--GO
--IF DB_ID('ChefsDeCozinhaBD') IS NULL
--BEGIN
-- CREATE DATABASE ChefsDeCozinhaBD;
--END
--GO

--CREATE TABLE Clientes(

--IDcliente int primary key not null,
--Palavra_passe nvarchar(40) not null,
--Nome nvarchar(40) not null,
--Morada nvarchar(40) not null,
--Contacto nvarchar(20) not null,
--Email nvarchar(40) not null,
--Nif nvarchar(40) not null,
--Cartao_de_credito nvarchar(40) not null
--)


--CREATE TABLE Chef(

--IDChef int primary key not null,
--Nome nvarchar(40) not null,
--Email nvarchar(40) not null,
--Contacto nvarchar(20) not null,
--Nacionalidade nvarchar(40) not null,
--)

--CREATE TABLE TipoDeCozinha(

--IDtipo_cozinha int primary key not null,
--Nome nvarchar(40) not null,
--Descricao nvarchar(250) not null,
--)

--CREATE TABLE Chef_TipoDeCozinha (
--IDchef INT NOT NULL,
--IDtipo_cozinha INT NOT NULL,
--PRIMARY KEY (IDchef, IDtipo_cozinha),
--FOREIGN KEY (IDchef) REFERENCES Chef(IDchef),
--FOREIGN KEY (IDtipo_cozinha) REFERENCES TipoDeCozinha(IDtipo_cozinha)
--);


--CREATE TABLE EstadoPedido(

--IDestadoPedido int primary key not null,
--descricao nvarchar(40) not null,
--)


--CREATE TABLE Pedido(

--IDpedido int primary key not null,
--IDcliente int references Clientes(IDcliente) not null,
--IDchef int references Chef(IDchef) not null,
--IDtipo_cozinha int references TipoDeCozinha(IDtipo_cozinha) not null,
--Rua nvarchar(40) not null,
--Numero_porta int not null,
--Localidade nvarchar(40) not null,
--Distrito nvarchar(40) not null,
--Codigo_postal nvarchar(40) not null,
--Data_do_pedido date not null,
--Data_prestacao_servico date not null,
--Hora_pedido datetime not null,
--Hora_prestacao_servico datetime not null,
--Valor_proposto money not null,
--IDEstadoPedido int references EstadoPedido(IDEstadoPedido)
--)




--CREATE TABLE Fatura(

--IDfatura int primary key not null,
--metodo_pagamento nvarchar(40) not null,
--)


--CREATE TABLE Servico(
--IDservico int primary key not null,
--IDcliente int references Clientes(IDcliente) not null,
--IDchef int references Chef(IDchef) not null,
--IDpedido int references Pedido(IDpedido) not null,
--IDfatura int references Fatura(IDfatura) not null,
--Metodo_pagamento nvarchar(40) not null,
--Valor money not null,
--Comissao_ganha money not null,
--)

--CREATE TABLE Feedback(

--IDfeedback int primary key not null,
--IDchef int REFERENCES Chef(IDchef) not null,
--IDcliente int REFERENCES Clientes(IDcliente) not null,
--IDservico int REFERENCES Servico(IDservico) not null,
--Avaliacao int not null,
--)







--INSERTS


--INSERT INTO Clientes (IDcliente, Palavra_passe, Nome, Morada, Contacto, Email, Nif, Cartao_de_credito)
--VALUES
--    (1, 'senha123', 'Maria Silva', 'Rua das Flores', '+351 912345678', 'maria@gmail.com', '123456789', '1234 5678 9123 4567'),
--    (2, 'abc123', 'João Santos', 'Avenida Central', '+351 923456789', 'joao@gmail.com', '987654321', '9876 5432 1098 7654'),
--    (3, 'senha456', 'Ana Costa', 'Praça da Liberdade', '+351 934567890', 'ana@gmail.com', '456789123', '4567 8901 2345 6789'),
--    (4, 'qwerty', 'Pedro Oliveira', 'Estrada Nacional', '+351 945678901', 'pedro@gmail.com', '789123456', '7890 1234 5678 9012'),
--    (5, '123abc', 'Sofia Santos', 'Avenida dos Aliados', '+351 956789012', 'sofia@gmail.com', '321654987', '3210 6543 9876 5432'),
--    (6, 'senha789', 'Miguel Pereira', 'Rua do Comércio', '+351 967890123', 'miguel@gmail.com', '654987321', '6543 2109 8765 4321');


--INSERT INTO Chef (IDchef, Nome, Email, Contacto, Nacionalidade)
--VALUES
--    (1, 'Carlos Rodrigues', 'carlos@gmail.com', '912345678', 'Portuguesa'),
--    (2, 'Luísa Ferreira', 'luisa@gmail.com', '923456789', 'Brasileira'),
--    (3, 'António Silva', 'antonio@gmail.com', '934567890', 'Portuguesa'),
--    (4, 'Marta Costa', 'marta@gmail.com', '945678901', 'Italiana'),
--    (5, 'Rui Santos', 'rui@gmail.com', '956789012', 'Francesa'),
--    (6, 'Beatriz Oliveira', 'beatriz@gmail.com', '967890123', 'Espanhola');


--INSERT INTO TipoDeCozinha (IDtipo_cozinha, Nome, Descricao)
--VALUES
--    (1, 'Sushi', 'Comida japonesa feita com arroz e peixe cru'),
--    (2, 'Churrasco', 'Assado de carne ou peixe na grelha'),
--    (3, 'Italiana', 'Massas e molhos tradicionais italianos'),
--    (4, 'Vegetariana', 'Pratos sem carne, com vegetais e legumes'),
--    (5, 'Francesa', 'Cozinha sofisticada com molhos e técnicas refinadas'),
--    (6, 'Indiana', 'Condimentos e especiarias intensas, pratos picantes');


--	INSERT INTO Chef_TipoDeCozinha (IDchef, IDtipo_cozinha)
--VALUES
--    (1, 1),  -- Carlos Rodrigues faz Sushi
--    (2, 2),  -- Luísa Ferreira faz Churrasco
--    (3, 3),  -- António Silva faz Italiana
--    (4, 4),  -- Marta Costa faz Vegetariana
--    (5, 5),  -- Rui Santos faz Francesa
--    (6, 6);  -- Beatriz Oliveira faz Indiana  



--INSERT INTO EstadoPedido (IDEstadoPedido, descricao)
--VALUES
--(1, 'Pendente'),
--(2, 'Aceite'),
--(3, 'Concluido');


--INSERT INTO Pedido (IDpedido, IDcliente, IDchef, IDtipo_cozinha, Rua, Numero_porta, Localidade, Distrito, Codigo_postal, Data_do_pedido, Data_prestacao_servico, Hora_pedido, Hora_prestacao_servico, valor_proposto, IDEstadoPedido)
--VALUES
--    (1, 1, 1, 1, 'Rua das Flores', 123, 'Porto', 'Porto', '4000-001', '2024-06-23', '2024-06-24', '12:00:00', '19:00:00', 150.00, 3),
--    (2, 2, 3, 3, 'Avenida Central', 456, 'Lisboa', 'Lisboa', '1000-002', '2024-06-24', '2024-06-25', '13:30:00', '20:30:00', 180.50, 1),
--    (3, 3, 2, 2, 'Praça da Liberdade', 789, 'Porto', 'Porto', '4000-003', '2024-06-25', '2024-06-26', '18:00:00', '22:00:00', 200.00, 2),
--    (4, 4, 4, 4, 'Estrada Nacional', 1011, 'Faro', 'Faro', '8000-004', '2024-06-26', '2024-06-27', '19:00:00', '21:00:00', 175.75, 3),
--    (5, 5, 5, 5, 'Avenida dos Aliados', 1213, 'Porto', 'Porto', '4000-005', '2024-06-27', '2024-06-28', '20:00:00', '23:00:00', 160.25, 2),
--    (6, 6, 6, 6, 'Rua do Comércio', 1415, 'Lisboa', 'Lisboa', '1000-006', '2024-06-28', '2024-06-29', '21:00:00', '00:00:00', 190.00, 1);




--INSERT INTO Fatura (IDfatura, metodo_pagamento)
--VALUES 
--    (1, 'Cartão de crédito'),
--    (2, 'Transferência bancária'),
--    (3, 'Cartão de crédito'),
--    (4, 'Cheque'),
--    (5, 'MB Way'),
--    (6, 'Cartão de crédito');

--INSERT INTO Servico (IDservico, IDcliente, IDchef, IDpedido, IDfatura, Metodo_pagamento, Valor, Comissao_ganha)
--VALUES 
--    (1, 1, 1, 1, 1, 'Cartão de crédito', 150.00, 18.00),
--    (2, 2, 3, 2, 2, 'Transferência bancária', 180.50, 21.66),
--    (3, 3, 2, 3, 3, 'Cartão de crédito', 200.00, 24.00),
--    (4, 4, 4, 4, 4, 'Cheque', 175.75, 21.09),
--    (5, 5, 5, 5, 5, 'MB Way', 160.25, 19.20),
--    (6, 6, 6, 6, 6, 'Cartão de crédito', 190.00, 22.80);

--INSERT INTO Feedback (IDfeedback, IDchef, IDcliente, IDservico, Avaliacao)
--VALUES 
--    (1, 1, 1, 1, 4),
--    (2, 2, 2, 2, 5),
--    (3, 3, 3, 3, 3),
--    (4, 4, 4, 4, 4),
--    (5, 5, 5, 5, 2),
--    (6, 6, 6, 6, 5);
  --  (7, 1, 1, 1, 1)


--QUERYS

--Mostrar o numero de chefs especialistas em comida italiana

--SELECT COUNT(CTC.IDchef) AS 'Chefs especialistas em comida indiana'
--FROM Chef_TipoDeCozinha CTC
--INNER JOIN TipoDeCozinha TC ON CTC.IDtipo_cozinha = TC.IDtipo_cozinha
--WHERE TC.Nome LIKE 'indiana';




--Mostrar os chefs que são especialistas em sushi

--SELECT Chef.Nome, TipoDeCozinha.Nome
--FROM Chef INNER JOIN Chef_TipoDeCozinha ON Chef.IDchef = Chef_TipoDeCozinha.IDchef
--INNER JOIN TipoDeCozinha ON Chef_TipoDeCozinha.IDtipo_cozinha = TipoDeCozinha.IDtipo_cozinha
--WHERE TipoDeCozinha.Nome = 'Sushi';



--Mostrar os chefs que têm pedidos concluidos 

--SELECT C.IDchef, C.Nome, C.Email, C.Contacto, C.Nacionalidade , P.IDpedido , EP.descricao
--FROM Chef C 
--INNER JOIN Pedido P ON  C.IDchef = P.IDchef 
--INNER JOIN  EstadoPedido EP ON P.IDEstadoPedido = EP.IDEstadoPedido 
--WHERE EP.descricao like 'concluido'

--Mostrar os chefs que têm avaliação superior a 4

--select C.IDchef, C.Nome , AVG(F.avaliacao) AS 'Avaliação'
--FROM Chef C INNER JOIN Feedback F ON C.IDchef = F.IDchef
--GROUP BY C.IDChef, C.Nome
--HAVING AVG(F.avaliacao) >= 4



--Mostrar os ids das faturas, a comissão ganha pelo chef e a comissão ganha pela empresa em que a comissão ganha é maior que 20

--SELECT F.IDfatura, S.Valor - S.Comissao_ganha AS 'Lucro do Chef' , S.Comissao_ganha
--FROM Fatura F INNER JOIN Servico S ON F.IDfatura = S.IDfatura
--WHERE S.Comissao_ganha > 20



-- Mostrar os valores faturados por cada um dos tipos de cozinha 

--SELECT TC.Nome AS 'Tipo De Cozinha', SUM(S.Valor) AS 'Valor Total Faturado'
--FROM TipoDeCozinha TC
--INNER JOIN Chef_TipoDeCozinha CTC ON TC.IDtipo_cozinha = CTC.IDtipo_cozinha
--INNER JOIN Chef C ON CTC.IDchef = C.IDchef
--INNER JOIN Servico S ON C.IDchef = S.IDchef
--GROUP BY TC.Nome


--Mostrar o id, o nome dos chefes e o valor que eles geraram. Ordenado do maior para o menor 

--SELECT C.IDchef, C.Nome AS Chef_Nome, SUM(S.Valor) AS 'Valor Total Gerado'
--FROM Chef C
--INNER JOIN Servico S ON C.IDchef = S.IDchef
--GROUP BY C.IDchef, C.Nome
--ORDER BY SUM(S.Valor) DESC;

--Mostrar os clientes que já pediram italiana e que têm o seu pedido pendente 

--SELECT DISTINCT C.IDcliente, C.Nome, C.Morada, C.Contacto, C.Email 
--FROM Clientes AS C 
--INNER JOIN Pedido P ON C.IDcliente = P.IDcliente
--INNER JOIN TipoDeCozinha AS T ON P.IDtipo_cozinha = T.IDtipo_cozinha 
--INNER JOIN EstadoPedido EP ON P.IDEstadoPedido = EP.IDEstadoPedido
--WHERE EP.descricao LIKE 'Pendente' AND T.Nome LIKE 'Italiana';


--Mostrar as faturas, o seu valor, a comissão ganha, o total (a soma das duas) e o total com o valor do iva (+23%)

--SELECT F.IDfatura , S.Valor , S.Comissao_ganha , S.Valor + S.Comissao_ganha AS 'Total' , CONVERT(DECIMAL(10, 2), (S.Valor + S.Comissao_ganha) * 1.23) AS 'Valor Com Iva'
--FROM Fatura F INNER JOIN Servico S ON F.IDfatura = S.IDfatura


--Mostrar os chefes com nota superior a 3 que já fizeram 1 serviço de Vegetariana 

SELECT C.IDChef, C.Nome, C.Nacionalidade, AVG(F.Avaliacao) AS MediaAvaliacao, COUNT(S.IDchef) AS TotalServicos
FROM Chef C 
INNER JOIN Chef_TipoDeCozinha CT ON C.IDChef = CT.IDchef 
INNER JOIN TipoDeCozinha TC ON CT.IDtipo_cozinha = TC.IDtipo_cozinha
INNER JOIN Servico S ON C.IDChef = S.IDchef
INNER JOIN Feedback F ON S.IDservico = F.IDservico
WHERE TC.Nome = 'Vegetariana'
GROUP BY C.IDChef, C.Nome, C.Nacionalidade
HAVING AVG(F.Avaliacao) > 3 AND COUNT(S.IDchef) >= 1;




--Mostrar os feedbacks direcionados ao chefe 2, incluindo os dados do cliente que atribuiu o feedback e dados do serviço 

SELECT F.IDfeedback, CH.Nome AS NomeChef, C.Nome AS NomeCliente, S.IDservico, S.Valor, S.Comissao_ganha, F.Avaliacao
FROM Feedback F
INNER JOIN Chef CH ON F.IDchef = CH.IDChef
INNER JOIN Servico S ON F.IDservico = S.IDservico
INNER JOIN Clientes C ON F.IDcliente = C.IDcliente
WHERE CH.IDChef = 2





