-- Controle de Gastos Pessoais

-- Consultas úteis (queries reais)

-- Ver todas as despesas
SELECT * FROM despesas;

-- Ver despesas apenas de alimentação
SELECT descricao, valor, data_gasto
FROM despesas
WHERE categoria = 'Alimentação';

-- Total gasto no mês
SELECT SUM(valor) AS total_gasto
FROM despesas
WHERE MONTH(data_gasto) = 1
  AND YEAR(data_gasto) = 2026;

-- Quanto foi gasto por categoria
SELECT categoria, SUM(valor) AS total
FROM despesas
GROUP BY categoria;

-- Maior despesa registrada
SELECT descricao, valor
FROM despesas
ORDER BY valor DESC
LIMIT 1;