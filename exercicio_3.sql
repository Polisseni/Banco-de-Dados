-- BIBLIOTECA

-- Query com cálculo da multa (R$ 0,50 por dia de atraso)

SELECT 
    c.cpf,
    a.data_aluguel AS horario_aluguel,
    a.data_devolucao_prevista AS horario_devolucao,
    a.valor_aluguel,
    
    CASE 
        WHEN a.data_devolucao_real > a.data_devolucao_prevista THEN
            DATEDIFF(a.data_devolucao_real, a.data_devolucao_prevista) * 0.50
        ELSE
            0
    END AS multa,

    a.valor_aluguel +
    CASE 
        WHEN a.data_devolucao_real > a.data_devolucao_prevista THEN
            DATEDIFF(a.data_devolucao_real, a.data_devolucao_prevista) * 0.50
        ELSE
            0
    END AS valor_total

FROM alugueis a
JOIN clientes c ON a.id_cliente = c.id_cliente;

-- O que essa query faz

-- Mostra:

-- CPF do cliente
-- Horário que alugou
-- Horário previsto para devolver
-- Valor do aluguel
-- Multa (R$ 0,50 por dia de atraso)
-- Valor total (aluguel + multa)
-- Usa DATEDIFF() para calcular quantos dias atrasou
-- Se não houver atraso, a multa será 0