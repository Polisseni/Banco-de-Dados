-- SELECT (PARTE 3)

select carga from cursos
group by carga;  -- vai selecionar as tuplas (registros) agrupados por carga
-- agrupado por 

select totaulas, count(*) from cursos  -- vai contar quantas ocorrencias para totaulas iguais
group by totaulas  -- agrupar pelo total de aulas
order by totaulas;  -- ordenar do menor ao maior o numero de aulas 

-- exemplo:
select carga, count(nome) from cursos where totaulas = 40
order by carga;
-- vai mostrar a carga e quantos cursos tem o total de aulas = 30 e agrupado pela carga, do menor ao maior

select ano, count (*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count (*) desc;

select avg(carga) from cursos;  -- faz a media somando a quantidade de horas e depois dividindo pela quantidade de cursos

select carga, count (*) from cursos
where ano > 2020
group by carga
having carga > (select avg(carga) from cursos);