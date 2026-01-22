-- JOIN

select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;
-- como juntar os campos?

select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;
-- obrigatoriamente utilizar o "on" quando der o comando JOIN

-- COMANDO FUNCIONANDO DA MESMA FORMA (SIMPLIFICADO)
select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

-- OUTRO EXEMPLO COM OUTER JOIN (LEFT JOIN)
select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c  -- vai dar prioridade a tabela da esquerda (alunos); Exibira os resultados mesmo sem relacionamento
on c.idcurso = g.cursopreferido
order by g.nome;

-- OUTRO EXEMPLO COM OUTER JOIN (RIGHT JOIN)
select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c  -- vai dar prioridade a tabela da direita (cursos); Exibira os resultados mesmo sem relacionamento
on c.idcurso = g.cursopreferido
order by g.nome;