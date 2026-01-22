-- JOIN (PARTE 3)

select g.nome, idcurso from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto;
-- para relacionar o idcuso com os nomes da tabela gafanhotos

select g.nome, c.nome from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;
-- para relacionar o nome do curso com os nomes da tabela gafanhoto
-- basicamente um relacionamento entre entidades (3 tabelas)