-- 1. Remover um consumo incorreto
DELETE FROM Consumo WHERE id_consumo = 3;

-- 2. Excluir um visitante removido do evento
DELETE FROM Consumo WHERE id_visitante = 3;
DELETE FROM Transacao WHERE id_visitante = 3;
DELETE FROM Visitante WHERE id_visitante = 3

-- 3. Remover uma categoria descontinuada
DELETE FROM Consumo WHERE id_categoria = 3;
DELETE FROM CategoriaFicha WHERE id_categoria = 3;
