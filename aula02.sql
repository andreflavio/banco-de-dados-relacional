-- Criar banco de dados bd_sistema_bancario
CREATE DATABASE bd_sistema_bancario;


-- Criar 5 tabelas quaiquer
CREATE TABLE tabela1 (
    coluna1 INTEGER,
    coluna2 CHAR(50),
    coluna3 VARCHAR(100)
);

CREATE TABLE tabela2 (
    coluna1 INTEGER,
    coluna2 CHAR(50),
    coluna3 VARCHAR(100)
);

CREATE TABLE tabela3 (
    coluna1 INTEGER,
    coluna2 CHAR(50),
    coluna3 VARCHAR(100)
);

CREATE TABLE tabela4 (
    coluna1 INTEGER,
    coluna2 CHAR(50),
    coluna3 VARCHAR(100)
);

CREATE TABLE tabela5 (
    coluna1 INTEGER,
    coluna2 CHAR(50),
    coluna3 VARCHAR(100)
);




-- Criar tabelas conforme MER (Sistema Bancario):

CREATE TABLE cliente (
    NOME_CLIENTE VARCHAR(100),
    cidade_cliente VARCHAR(100),
    endereco_cliente VARCHAR(100)
);

CREATE TABLE emprestimo (
    NUMERO_EMPRESTIMO INTEGER,
    NOME_AGENCIA VARCHAR(100),
    VALOR DECIMAL
);

CREATE TABLE conta (
    NUMERO_CONTA INTEGER,
    NOME_AGENCIA VARCHAR(100),
    SALDO DECIMAL
);

CREATE TABLE agencia (
    NOME_AGENCIA VARCHAR(100),
    CIDADE_AGENCIA VARCHAR(100),
    DEPOSITOS DECIMAL
);



-- Deletar as 5 tabelas criadas aleatoriamente

DROP TABLE tabela1;
DROP TABLE tabela3;
DROP TABLE tabela2;
DROP TABLE tabela5;
DROP TABLE tabela4;


-- alterar as tabelas conforme o MER atualizado

-- Alterando o nome da tabela 'cliente' para 'tbl_cliente' e adicionando as colunas 'IDADE' e 'CPF'
ALTER TABLE cliente RENAME TO tbl_cliente;
ALTER TABLE tbl_cliente ADD COLUMN IDADE INTEGER;
ALTER TABLE tbl_cliente ADD COLUMN CPF VARCHAR(11);

-- Alterando o nome da tabela 'emprestimo' para 'tbl_emprestimo'
ALTER TABLE emprestimo RENAME TO tbl_emprestimo;

-- Alterando o nome da tabela 'conta' para 'tbl_conta'
ALTER TABLE conta RENAME TO tbl_conta;

-- Alterando o nome da tabela 'agencia' para 'tbl_agencia' e renomeando a coluna 'CIDADE_AGENCIA' para 'ENDERECO_AGENCIA'
ALTER TABLE agencia RENAME TO tbl_agencia;
ALTER TABLE tbl_agencia RENAME COLUMN CIDADE_AGENCIA TO ENDERECO_AGENCIA;




-- Criar um esquema com o seu nome


CREATE SCHEMA andre_flavio_de_oliveira;

-- Verificar se tá certo
\dn

-- Mostrar se tá certo
SHOW SEARCH_PATH;

-- Definir o caminho de pesquisa para o novo esquema

SET SEARCH_PATH TO andre_flavio_de_oliveira;



