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

-- Ex 7 - Crie o Script para excluir um cliente
DELETE CLIENTES WHERE Id = 2;

-- Ex 8 - Normalize a tabela Funcionarios até sua terceira forma normal
CREATE TABLE CARGOS(Id INT PRIMARY KEY IDENTITY(1,1),
					CARGO VARCHAR(30));

INSERT INTO CARGOS(CARGO) VALUES ('Atendente'),
								('Gerente');

SELECT * FROM CARGOS


CREATE TABLE FUNCIONARIOS(Id INT PRIMARY KEY IDENTITY(1,1),
					Nome VARCHAR(50),
					Id_Cargos INT REFERENCES CARGOS(Id));

INSERT INTO FUNCIONARIOS(Nome, Id_Cargos) VALUES ('Marcos',1),('Maria',2),('Julia',1);

SELECT * FROM FUNCIONARIOS;

SELECT*FROM FUNCIONARIOS
JOIN CARGOS ON CARGOS.Id=FUNCIONARIOS.Id_Cargos;


CREATE TABLE TELEFONES(Id_Funcionarios INT REFERENCES FUNCIONARIOS(Id),
					Telefone VARCHAR(11));



INSERT INTO TELEFONES (Id_Funcionarios, Telefone) VALUES (1,'3654589'),
														(1,'36545987'),
														(2,'3654698'),
														(2,'36524569'),
														(3,'3654962'),
														(3,'12365458');

SELECT * FROM TELEFONES;

SELECT*FROM FUNCIONARIOS
JOIN CARGOS ON CARGOS.Id=FUNCIONARIOS.Id_Cargos
JOIN TELEFONES ON TELEFONES.Id_Funcionarios=FUNCIONARIOS.Id;



