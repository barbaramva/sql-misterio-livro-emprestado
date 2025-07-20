-- CRIANDO TABELAS
CREATE TABLE autores (
  id_autor INT PRIMARY KEY,
  nome_autor VARCHAR(100)
  );
  
CREATE TABLE livros (
  id_livro INT PRIMARY KEY,
  titulo VARCHAR(100),
  genero VARCHAR(50),
  quantidade_estoque INT,
  id_autor INT,
  FOREIGN key (id_autor) REFERENCES autores(id_autor)
  );
    
CREATE TABLE vendas (
  id_venda INT PRIMARY KEY,
  id_livro INT,
  data_venda DATE,
  quantidade INT,
  FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
  );
  
CREATE TABLE funcionarios (
  id_funcionario INT PRIMARY KEY,
  nome VARCHAR(100),
  presente_na_noite BOOLEAN
  );
  
CREATE TABLE leitores (
  id_leitor INT PRIMARY KEY,
  nome VARCHAR(100),
  autorizado BOOLEAN
  );
  
CREATE TABLE emprestimos (
  id_emprestimo INT PRIMARY KEY,
  id_leitor INT,
  id_livro INT,
  data_emprestimo DATE,
  FOREIGN KEY (id_leitor) REFERENCES leitores(id_leitor),
  FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
  );
  
CREATE TABLE convidados_evento (
  id_autor INT,
  data_evento DATE,
  FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
  );













