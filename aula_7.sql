-- MODIFICANDO DEFINIÇOES (MODIFY, CHANGE, RENAME TO)

-- MODIFY

alter table pessoas
modify column profissao varchar(20) not null default '';  -- Default "vazio" para nao dar erro

-- CHANGE

alter table pessoas 
change column profissao prof varchar(20) not null default '';  
-- Ao usar o comando "CHANGE" para renomear a coluna certificar-se de nao esquecer das constraints dessa coluna

-- RENAME TO (MODIFICANDO O NOME DA TABELA INTEIRA)

desc gafanhotos;

alter table pessoas
rename to gafanhotos;  -- Lembrar sempre de dar refresh na tabela