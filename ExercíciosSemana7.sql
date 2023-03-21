-- EXERCÍCIOS SEMANA 7 SQL

CREATE DATABASE SEMANA7;

USE SEMANA7;

-- Ex 1 - Crie uma Tabela chamada clientes

CREATE TABLE CLIENTES(Id INT,
					Nome VARCHAR(50),
					Telefone VARCHAR(11),
					Endereco VARCHAR(100))

--Ex 2 - Crie um Script para inserir 3 Clientes na tabela

INSERT INTO CLIENTES(Id,Nome,Telefone,Endereco) VALUES (1, 'Vinicius Silva',987654, 'Rua Girassol');
INSERT INTO CLIENTES(Id,Nome,Telefone,Endereco) VALUES (2, 'Maria Antonia',123456, 'Rua das Rosas');
INSERT INTO CLIENTES(Id,Nome,Telefone,Endereco) VALUES (3, 'Marcus Vinicius',654123, 'Rua Itajai');

-- Ex 3 - Crie um script que selecione todos os clientes
SELECT * FROM CLIENTES;

-- Ex 4 - Selecione os clientes por Id
SELECT * FROM CLIENTES WHERE Id = 1;

-- Ex 5 - Selecione os clientes por nome Utilizando Like
SELECT * FROM CLIENTES WHERE Nome LIKE '%V%';

-- Ex 6 - Crie um Script para atualizar um cliente
UPDATE CLIENTES SET Endereco = 'Rua do Limão' WHERE Nome = 'Marcus Vinicius';



