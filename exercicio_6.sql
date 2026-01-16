-- Estrutura do Banco de Dados – Escola (Notas)

-- 1️) Tabela de Alunos

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    serie INT NOT NULL CHECK (serie BETWEEN 1 AND 9)
);

-- 2️) Tabela de Professores

CREATE TABLE professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- 3️) Tabela de Provas

CREATE TABLE provas (
    id_prova INT AUTO_INCREMENT PRIMARY KEY,
    data_prova DATE NOT NULL,
    descricao VARCHAR(100)
);

-- 4️) Tabela de Notas

CREATE TABLE notas (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_professor INT NOT NULL,
    id_prova INT NOT NULL,
    nota DECIMAL(4,2) NOT NULL CHECK (nota BETWEEN 0 AND 10),

    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor),
    FOREIGN KEY (id_prova) REFERENCES provas(id_prova)
);
