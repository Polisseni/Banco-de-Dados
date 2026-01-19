-- SELECT (PARTE 2)

-- WILDCARDS: "%" e "_"
-- % : pode ser um espaço vazio ou nao (nao ter nada naquela posiçao e começar dali ou "abrevear" algo)
-- _ : obrigatoriamente precisa ter algo no espaço indicado (espaço, letra ou numero)

select * from cursos
where nome like 'a%'  -- vai procurar por resultados que comecem com a letra "a"
where nome like '%a'  -- vai procurar por resultados que terminem com a letra "a" 
where nome like '%a%' -- vai procurar por resultados que contenham a letra "a" em qualquer posiçao
where nome not like '%a%' -- vai procurar por resultados que não contenham a letra "a"
where nome like 'ph%p' -- vai aparecer como resultados os cursos de "PHP" e "PhotoShop"
where nome like 'ph%p%' -- vai aparecer como resultados os cursos de "PHP", "PhotoShop", "PHP4", "PHP7"'...
where nome like 'ph%p_' -- vai aparecer como resultados os cursos de "PHP4" e "PHP7"
-- o sublinhado exige que tenha uma numeraçao naquela posiçao
where nome like '%silva' -- vai aparecer as pessoas cadastradas com sobrenome silva
where nome like 'silva%' -- vai aparecer as pessoas cadastradas que começam com silva
where nome like '%silva%' -- resultados com o nome "silva" em qualquer posiçao
where nome like '_silva%'; -- excluirá o resultado "silvana" nesse caso


select nacionalidade from gafanhotos;  -- ira exibir todos os resultados para esse campo, contendo varias repetiçoes
select distinct nacionalidade from gafanhotos;  -- ira exibir todos os paises desse campo apenas uma vez cada

select distinct carga from cursos
order by carga;
-- ira exibir uma vez so quais sao as cargas horarias dos cursos da tabela (ex: 10, 20, 30, 40,)

select * from cursos where carga >40;
-- ira exibir quais cursos possuem carga horaria maior que 40 horas
select count(*) from cursos where carga > 40;
-- ira exibir quantos cursos possuem carga horaria maior que 40 horas

select max(carga) from cursos; -- ira exibir o curso com a maior carga horaria
select max(totaulas) from cursos where ano = '2020'; 
-- ira exibir o curso em 2020 que mais teve aulas (maximo)
select min(totaulas) from cursos; -- ira exibir o curso com menos aulas (minimo)
select sum(totaulas) from cursos; -- ira exibir o somatorio da quantidade total de aulas dos cursos
select avg(totaulas) from cursos; -- ira exibir a media do total de aulas dentro do curso