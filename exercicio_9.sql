-- Cenário: Controle de gastos pessoais

-- Você quer registrar:

-- O que foi gasto
-- Em que categoria (alimentação, aluguel, transporte etc.)
-- O valor
-- A data do gasto

-- Criação da tabela
CREATE TABLE despesas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100),
    categoria VARCHAR(50),
    valor DECIMAL(10,2),
    data_gasto DATE
);

-- Inserindo despesas do dia a dia
INSERT INTO despesas (descricao, categoria, valor, data_gasto)
VALUES
('Almoço', 'Alimentação', 28.50, '2026-01-10'),
('Uber para o trabalho', 'Transporte', 18.00, '2026-01-10'),
('Conta de luz', 'Moradia', 145.90, '2026-01-05'),
('Supermercado', 'Alimentação', 220.30, '2026-01-08');