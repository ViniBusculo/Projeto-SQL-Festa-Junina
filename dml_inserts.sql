-- Visitantes
INSERT INTO Visitante (nome, cpf, email, saldo_total) VALUES
('João Silva', '123.456.789-01', 'joao@gmail.com', 20),
('Maria Souza', '987.654.321-00', 'maria@hotmail.com', 35),
('Lucas Oliveira', '555.666.777-88', 'lucas@outlook.com', 10);

-- Barracas
INSERT INTO Barraca (nome, categoria) VALUES
('Pipoca da Tia Ana', 'Comida'),
('Pescaria do Zé', 'Brincadeira'),
('Churrasquinho do João', 'Comida');

-- Categorias de Ficha
INSERT INTO CategoriaFicha (nome) VALUES
('Pipoca'),
('Brincadeira'),
('Churrasquinho');

-- Transações
INSERT INTO Transacao (id_visitante, tipo, data_hora, quantidade) VALUES
(1, 'COMPRA', '2025-01-10 18:00:00', 10),
(2, 'COMPRA', '2025-01-10 18:05:00', 20),
(3, 'COMPRA', '2025-01-10 18:10:00', 5);

-- Consumos
INSERT INTO Consumo (id_visitante, id_barraca, id_categoria, quantidade, data_hora) VALUES
(1, 1, 1, 2, '2025-01-10 18:30:00'),
(2, 2, 2, 1, '2025-01-10 18:35:00'),
(2, 3, 3, 3, '2025-01-10 18:40:00');
