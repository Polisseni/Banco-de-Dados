-- BIBLIOTECA

-- Tabela de aluguéis

CREATE TABLE alugueis (
    id_aluguel INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    data_aluguel DATETIME NOT NULL,
    data_devolucao_prevista DATETIME NOT NULL,
    data_devolucao_real DATETIME,
    valor_aluguel DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);