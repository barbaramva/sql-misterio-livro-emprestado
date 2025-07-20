-- ETAPAS DA INVESTIGAÇÃO

--> Verifique quem está autorizado 
SELECT nome
from leitores
WHERE autorizado = 1;

--> Filtre empréstimos no dia do desaparecimento (2023-11-15)
SELECT * FROM emprestimos
WHERE data_emprestimo = '2023-11-15';

--> Descubra quem pegou o livro nesse dia
SELECT leitores.nome, emprestimos.data_emprestimo
FROM leitores
JOIN emprestimos on leitores.id_leitor = emprestimos.id_leitor
WHERE emprestimos.data_emprestimo = '2023-11-15';

--> Descubra qual livro tem apenas 1 exemplar (raro)
SELECT * FROM livros
WHERE quantidade_estoque = 1;

--> Quantos livros cada pessoa pegou naquela noite?
SELECT leitores.nome, COUNT(*) AS livros_emprestados
FROM leitores
JOIN emprestimos ON leitores.id_leitor = emprestimos.id_leitor
WHERE data_emprestimo = '2023-11-15'
group by leitores.nome
order by livros_emprestados DESC;

--> Quem pegou esse livro raro na data?
SELECT leitores.nome, livros.titulo
FROM emprestimos
JOIN leitores ON leitores.id_leitor = emprestimos.id_leitor
JOIN livros ON livros.id_livro = emprestimos.id_livro
WHERE emprestimos.data_emprestimo = '2023-11-15' 
AND livros.quantidade_estoque = 1;

--> Filtrar apenas leitores autorizados que pegaram o livro raro
SELECT leitores.nome
FROM emprestimos
JOIN leitores on leitores.id_leitor = emprestimos.id_leitor
JOIN livros on livros.id_livro = emprestimos.id_livro
WHERE livros.quantidade_estoque = 1
AND leitores.autorizado = 1
AND emprestimos.data_emprestimo = '2023-11-15';
