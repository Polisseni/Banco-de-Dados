-- ESTACIONAMENTO

CREATE TABLE estacionamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    veiculo VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    placa VARCHAR(10) NOT NULL,
    data_entrada DATE NOT NULL,
    horario_entrada TIME NOT NULL
);

-- Explicação rápida das colunas:

-- id → identificador único (chave primária)
-- veiculo → tipo do veículo (ex: Carro, Moto)
-- modelo → modelo do veículo (ex: Gol, Civic)
-- placa → placa do automóvel
-- data_entrada → data no formato AAAA-MM-DD (o banco já organiza dia/mês/ano)
--horario_entrada → horário de entrada no estacionamento