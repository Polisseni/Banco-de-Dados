-- CHAVES ESTRANGEIRAS

describe gafanhotos;
alter table gafanhotos add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos (idcurso);

select * from gafanhotos;
update gafanhotos set cursopreferido = '6' where id = '1';
-- para nao ter que alterar um por um mudar o valor do campo desejado direto na interface da tabela no workbench
-- apos as alteraçoes lembrar de clicar no canto inferior direito no botao "apply" para salvar as mudanças feitas

delete from cursos where idcurso = '6';
-- vai dar erro de inconsistencia ja que o curso 6 apresenta um relacionamento com uma entidade
-- caso o curso a ser apagadonao apresentar nenhuma relaçao com nenhuma entidade, podera ser apagado sem maiores problemas
-- integridade referencial: nao consigo modificar um campo se ele for afetar a transaçao