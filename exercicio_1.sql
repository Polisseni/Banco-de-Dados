-- BIBLIOTECA

-- Tabela dos Clientes

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf CHAR(11) UNIQUE NOT NULL
);
