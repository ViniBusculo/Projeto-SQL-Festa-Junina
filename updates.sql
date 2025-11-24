-- 1. Atualizar saldo de João após ganhar fichas bônus
UPDATE Visitante SET saldo_total = saldo_total + 5 WHERE id_visitante = 1;

-- 2. Renomear a barraca
UPDATE Barraca SET nome = 'Pipoca Premium da Tia Ana' WHERE id_barraca = 1;

-- 3. Ajustar quantidade de consumo registrada erroneamente
UPDATE Consumo SET quantidade = 1 WHERE id_consumo = 2;
