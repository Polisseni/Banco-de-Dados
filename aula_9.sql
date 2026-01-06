-- DELETANDO UMA TABELA

create table if not exists teste(
id int,
nome varchar(20),
idade int
);

insert into teste value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

select * from teste;

drop table if exists teste;  -- Comando para apagar a tabela e apagar os dados da mesma