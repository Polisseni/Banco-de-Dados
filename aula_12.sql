-- DELETE

-- idcurso é a chave primaria
delete from cursos
where idcurso = '8'; -- Irá apagar apenas a linha de indice 8

delete from cursos
where ano = '2018'; -- Para afetar mais de uma linha PORÉM Safe Update (preferencias) precisa estar off