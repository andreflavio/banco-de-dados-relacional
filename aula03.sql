-- criar banco de dados bd_aula03

CREATE TABLE bd_aula03;

-- conferir se criou 

\c bd_aula03

-- Criar a tabela “bd_aula03” dentro do banco de dados “bd_aula03”

CREATE TABLE bd_aula03 (Codigo INTEGER PRIMARY KEY, CPF INTEGER UNIQUE, Nome TEXT NOT NULL, IDADE INTEGER CONSTRAINT chk_idade CHECK (IDADE > 0));

-- criar tabelas do MER 

-- Crie a tabela tbl_cliente

CREATE TABLE tbl_cliente (codigo_cliente INTEGER PRIMARY KEY, Nome TEXT NOT NULL, Cidade TEXT, Endereco TEXT);

-- Crie a tabela tbl_titulo
CREATE TABLE tbl_titulo (codigo_titulo INTEGER PRIMARY KEY, titulo TEXT NOT NULL, descricao TEXT, categoria TEXT);

-- Crie a tabela tbl_livros
CREATE TABLE tbl_livros (cod_livro INTEGER PRIMARY KEY, codigo_titulo INT REFERENCES tbl_titulo(codigo_titulo), status TEXT);

-- Crie a tabela tbl_emprestimo
CREATE TABLE tbl_emprestimo (numero_emprestimo INTEGER PRIMARY KEY, codigo_cliente INT REFERENCES tbl_cliente(codigo_cliente), codigo_livro INT REFERENCES tbl_livros(cod_livro));

-- criar domains

CREATE DOMAIN chk_status AS text CHECK (VALUE IN ('DISPONIVEL', 'ALUGADO'));


-- adicionar domain a tabela

ALTER TABLE cliente ADD CONSTRAINT idade CHECK (idade > 10);

-- Renomeando a restrição
ALTER TABLE cliente RENAME CONSTRAINT idade TO idades;

-- Removendo a restrição
ALTER TABLE cliente DROP CONSTRAINT idades;

-- adicionar chaves estrangeiras

ALTER TABLE tbl_emprestimo ADD FOREIGN KEY (codigo_cliente) REFERENCES tbl_cliente(codigo_cliente);





-- SELECT tbl_cliente.codigo_cliente, tbl_cliente.Nome, tbl_cliente.Cidade, tbl_cliente.Endereco, tbl_emprestimo.numero_emprestimo, tbl_emprestimo.codigo_livro FROM tbl_cliente JOIN tbl_emprestimo ON tbl_cliente.codigo_cliente = tbl_emprestimo.codigo_cliente;
