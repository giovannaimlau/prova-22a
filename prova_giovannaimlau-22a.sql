/*inserir um novo livro*/
insert into livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ('As cronicas de Narnia', 'C.S. Lewis', '1950', 'disponivel', 'fantasia', '978-0064471190', 'HarperCollins', '768', 'frances');

/* atualizar disponibilidade*/
update livros
set disponibilidade = false
where ano_publicacao < 1980;

/* atualizar editora */
update livros
set editora = plume_books
where titulo = 1984;

/* deletar por idioma*/
delete from livros
where idioma = ingles and ano_publicação < 2000;

/* selecionando com WHERE*/
select * from livros
where quantidade_paginas > 650;

/* selecionar com group by */
select count(categoria)
from livros
group by categoria;

/* selecionar com limit */
SELECT * FROM livros
limit = 6;

/* selecionar com avg */
select avg(quantidade_paginas)
from livros;

/* selecionar com order by */
select * from livros
order by ano_publicacao asc;

/* selecionar */
select * from livros
where '%s___%' and ano_publicacao > 1975 and ano_publicacao < 1990;

