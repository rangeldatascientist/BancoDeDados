-- Exercicio 06

CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT, 
descricao VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);


CREATE TABLE tb_cursos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    professor VARCHAR(255) NOT NULL,
	aulas INT,
  	preco DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
    );

INSERT INTO tb_categorias (descricao)
VALUES ("Contabilidade");

INSERT INTO tb_categorias (descricao)
VALUES ("Administração");

INSERT INTO tb_categorias (descricao)
VALUES ("Engenharia");

INSERT INTO tb_categorias (descricao)
VALUES ("Psicologia");

INSERT INTO tb_categorias (descricao)
VALUES ("Geografia");

INSERT INTO tb_categorias (descricao)
VALUES ("Outros");

INSERT INTO tb_cursos (nome, professor, aulas, preco, categoriaid)
VALUES ("Contabilidade Básica", "Carlos Xavier", "200", 500.00, 1);

INSERT INTO tb_cursos (nome, professor, aulas, preco, categoriaid)
VALUES ("Contabilidade Tributária", "Osni Oliveira", "350", 600.00, 1);

INSERT INTO tb_cursos (nome, professor, aulas, preco, categoriaid)
VALUES ("Gestão de Projetos", "Alberto Sigma", "236", 965.00, 2);

INSERT INTO tb_cursos (nome, professor, aulas, preco, categoriaid)
VALUES ("Fundamentos da Administração básica", "Maria Betânia", "312", 500.00, 2);

INSERT INTO tb_cursos (nome, professor, aulas, preco, categoriaid)
VALUES ("Cálculo Básico ao Avançado", "Albert Einstein", "800", 500.00, 3);

INSERT INTO tb_cursos (nome, professor, aulas, preco, categoriaid)
VALUES ("Algoritmo e Programação", "Lucas ", "550", 1000.00, 3);

INSERT INTO tb_cursos (nome, professor, aulas, preco, categoriaid)
VALUES ("Terapia Comportamental", "Luiza Abrantes", "635", 700.00, 4);

INSERT INTO tb_cursos (nome, professor, aulas, preco, categoriaid)
VALUES ("Psicanálise", "Aline Mendes", "630", 625.50, 4);

INSERT INTO tb_cursos (nome, professor, aulas, preco, categoriaid)
VALUES ("Cartografia", "Iury Rangel", "400", 849.99, 5);

INSERT INTO tb_cursos (nome, professor, aulas, preco, categoriaid)
VALUES ("Análise Ambiental", "Marcos Cézar", "360", 899.99, 5);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco >=500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "a%";

SELECT nome, preco, professor, tb_categorias.descricao
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoriaid = tb_categorias.id;

SELECT nome, preco, professor, tb_categorias.descricao
FROM tb_cursos 
INNER JOIN tb_categorias
ON tb_cursos.categoriaid = tb_categorias.id
WHERE tb_categorias.descricao = "Psicologia"; 


