-- SELECT (PARTE 1)

select ano, nome, carga from cursos
order by ano, nome;

select * from cursos  -- select nome, carga from cursos -> pegará só o nome e carga dos cursos de 2016
where ano = '2016'
order by nome;
-- o "*" significa todas as colunas 
-- filtrará quais cursos são do ano de 2016 e os ordena por nome


select nome, descricao from cursos  
where ano <= 2015  -- cursos antes e até 2015
order by ano, nome;  -- vai ordenar por ano primeiro depois pelo nome

-- para excluir o ano de 2015 da consulta: "!=" ou "<>"

select nome, ano from cursos
where ano between 2014 and 2016
-- mostrará quais cursos estão entre os anos de 2014 e 2016, considerando ambos os anos
order by ano desc, nome;  -- desc de "descendente" e nao como "describe"
-- caso queira "ascendente", só utilizar "asc"

select nome, descricao, ano from cursos
where ano in (2014, 2016)
order by ano;
-- mostrará apenas os cursos dos anos de 2014 e 2016

select * from cursos
where carga > 35 and totaulas < 30;
-- mostrará os cursos com carga acima de 35 horas e o total de aulas abaixo de 30

select * from cursos
where carga > 35 or totaulas < 30;
-- mostrará cursos com carga acima de 35 horas ou cursos com total de aulas abaixo de 30;
-- se o curso cumprir um das condiçoes acima, sera mostrado na selecao