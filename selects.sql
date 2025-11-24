-- 1. Listar todos os visitantes ordenados por saldo
SELECT * FROM Visitante ORDER BY saldo_total DESC;

-- 2. Consultar consumos com JOIN completo
SELECT v.nome AS visitante, b.nome AS barraca, c.nome AS categoria, cs.quantidade, cs.data_hora
FROM Consumo cs
JOIN Visitante v ON v.id_visitante = cs.id_visitante
JOIN Barraca b ON b.id_barraca = cs.id_barraca
JOIN CategoriaFicha c ON c.id_categoria = cs.id_categoria;

-- 3. Buscar visitantes com saldo abaixo de 15
SELECT nome, saldo_total FROM Visitante WHERE saldo_total < 15;

-- 4. Listar barracas de comida
SELECT * FROM Barraca WHERE categoria = 'Comida';

-- 5. Trazer os 2 consumos mais recentes
SELECT * FROM Consumo ORDER BY data_hora DESC LIMIT 2;
