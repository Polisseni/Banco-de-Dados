-- Consultas (queries) úteis no dia a dia

-- Notas com nome do aluno, professor e data da prova
SELECT 
    a.nome AS aluno,
    a.serie AS serie,
    p.nome AS professor,
    pr.data_prova,
    n.nota
FROM notas n
INNER JOIN alunos a ON n.id_aluno = a.id_aluno
INNER JOIN professores p ON n.id_professor = p.id_professor
INNER JOIN provas pr ON n.id_prova = pr.id_prova;

-- Média de notas por aluno
SELECT 
    a.nome,
    AVG(n.nota) AS media
FROM notas n
INNER JOIN alunos a ON n.id_aluno = a.id_aluno
GROUP BY a.nome;

-- Alunos com média maior ou igual a 7
SELECT 
    a.nome,
    AVG(n.nota) AS media
FROM notas n
INNER JOIN alunos a ON n.id_aluno = a.id_aluno
GROUP BY a.nome
HAVING AVG(n.nota) >= 7;

-- Notas por série
SELECT 
    a.serie,
    AVG(n.nota) AS media_serie
FROM notas n
INNER JOIN alunos a ON n.id_aluno = a.id_aluno
GROUP BY a.serie;