-- ADICIONANDO E REMOVENDO COLUNAS

desc pessoas;  -- Mostrar a tabela toda

alter table pessoas
add column profissao varchar(10);  -- Adicionando uma nova coluna a tabela (profissao)

alter table pessoas
drop column profissao;  -- Removendo a coluna "profissao" adicionada anteriormente

select * from pessoas;

-- ADICIONANDO COLUNAS EM POSIÇOES ESPECIFICAS

alter table pessoas
add column profissao varchar (10) after nome;  -- Adicionando a coluna "profissao" depois da coluna "nome"
    -- "column" nao e obrigatorio


alter table pessoas
add codigo int first;  -- Sem utilizar "column" e adicionando na primeira posicao
--  Para adicionar na ultima posicao so adicionar a coluna sem especificar nada apos 