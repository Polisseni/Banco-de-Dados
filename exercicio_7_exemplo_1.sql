-- Inserindo dados de exemplo

-- Alunos
INSERT INTO alunos (nome, serie) VALUES
('Ana Souza', 3),
('Carlos Lima', 5),
('Mariana Costa', 9);

-- Professores
INSERT INTO professores (nome) VALUES
('João Pereira'),
('Luciana Alves');

-- Provas
INSERT INTO provas (data_prova, descricao) VALUES
('2025-03-10', 'Prova de Matemática'),
('2025-03-15', 'Prova de Português');

-- Notas
INSERT INTO notas (id_aluno, id_professor, id_prova, nota) VALUES
(1, 1, 1, 8.5),
(2, 2, 2, 7.0),
(3, 1, 1, 9.2);