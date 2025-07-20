 -- INSERINDO DADOS
 INSERT INTO autores VALUES
 (1, 'Machado de Assis'),
 (2, 'Clarice Lispector'),
 (3, 'George Orwell'),
 (4, 'J. K. Rowling');

 INSERT INTO livros VALUES
 (1, 'Dom Casmurro', 'Clássico', 4, 1),
 (2, '1984', 'Distopia', 3, 3),
 (3, 'A Hora da Estrela', 'Romance', 1, 2), -- Manuscrito raro
 (4, 'Harry Potter', 'Fantasia', 2, 4);

INSERT INTO funcionarios VALUES
 (1, 'João Oliveira', 1),
 (2, 'Maria Souza', 1),
 (3, 'Luana Martins', 0);
 
INSERT INTO leitores VALUES
(1, 'Beatriz Silva', 1),
(2, 'Carlos Henrique', 0),
(3, 'Fernanda Lima', 1),
(4, 'Lucas Pereira', 1);
 
INSERT INTO emprestimos VALUES
(1, 1, 2, '2023-11-15'),
(2, 3, 1, '2023-11-15'),
(3, 4, 4, '2023-11-15'),
(4, 1, 3, '2023-11-15');

INSERT INTO convidados_evento VALUES
(2, '2023-11-15'),
(4, '2023-11-15');
 