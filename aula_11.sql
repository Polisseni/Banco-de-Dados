-- UPDATE + WHERE

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
LIMIT 1; --  Para limitar o numero de linhas alteradas para '1' linha

select * from cursos;

update cursos
set ano = '2050', carga = '800'
where ano = '2018'  -- Vai mexer em todas as linhas que tiver o ano igual a '2018' 