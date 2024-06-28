-- Exercicio 01
CREATE DATABASE db_atividades; 

USE db_atividades;

CREATE TABLE departamento (
	id BIGINT AUTO_INCREMENT, 
	nome VARCHAR(255) NOT NULL, 
    cargo VARCHAR(100) NOT NULL,
    documento VARCHAR(100) NOT NULL,
	salario DECIMAL (10,2) NOT NULL, 
    PRIMARY KEY (id)
   );
   
INSERT INTO departamento (nome, cargo, documento, salario) 
VALUES ("Maria Eduarda Cândico","Auxiliar Administrativo Jr", 4235, 1900.00);

INSERT INTO departamento (nome, cargo, documento, salario) 
VALUES ("Simone Mendes Cerqueira","Assistente de Departamento Pessoal", 1355, 2500.00);

INSERT INTO departamento (nome, cargo, documento, salario) 
VALUES ("Carlos Eduardo Souza Ramos","Analista de Recursos Humanos", 2355, 3000.00);

INSERT INTO departamento (nome, cargo, documento, salario) 
VALUES ("Emanoel Ramos da Silva","Supervisor", 1245, 4000.00);

INSERT INTO departamento (nome, cargo, documento, salario) 
VALUES ("Stella Toff Gray","Gerente", 1273, 7000.00);

SELECT * FROM departamento;

SELECT * FROM departamento WHERE id = 2;

SELECT * FROM departamento WHERE salario < 2000.00;

SELECT * FROM departamento WHERE salario > 4000.00;

UPDATE departamento SET salario = 2800.00 WHERE id = 2;

SELECT * FROM departamento WHERE id = 2;
