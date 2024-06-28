-- Exercício 03
-- DROP DATABASE db_farmacia_bem_estar;
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT, 
descricao VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);


CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (descricao)
VALUES ("Medicamentos");

INSERT INTO tb_categorias (descricao)
VALUES ("Cosmeticos");

INSERT INTO tb_categorias (descricao)
VALUES ("Higiene Pessoal");

INSERT INTO tb_categorias (descricao)
VALUES ("Produtos Medicos");

INSERT INTO tb_categorias (descricao)
VALUES ("Suplementos");

INSERT INTO tb_categorias (descricao)
VALUES ("Outros");

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Ibuprofeno 600mg", 500, "2026-07-01", 15.00, 1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Paracetamol 750mg", 450, "2025-04-01", 10.00, 1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Esmalte Colorama", 100, "2026-02-20", 5.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Base Líquida cor 04",60, "2026-04-15", 60.00,2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Escova Dental Colgate com 2UN", 200, "2026-10-20", 25.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Sabonete Granado", 1000, "2025-05-23", 8.99, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Gaze pacote com 500UN ", 760, "2026-08-12", 18.00, 4);

INSERT INTO tb_produtos (nome, quantidade, preco, categoriaid)
VALUES ("Aferidor de Pressão Digital", 150, 15.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Lavitan Mulher A-Z", 320, "2026-11-23", 30.00, 5);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Creatina Carbo Fuel 300g", 500, "2026-07-01", 57.90, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco >=50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE preco >= 5 AND preco <=10;

SELECT * FROM tb_produtos WHERE nome LIKE "c%";

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.descricao = "cosmeticos"; 