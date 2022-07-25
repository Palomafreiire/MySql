CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_products(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_produto VARCHAR (255),
	quantidade INT,
	estoque BOOLEAN,
	valor INT
);

SELECT * FROM tb_products;

INSERT INTO tb_products (nome_produto, quantidade, estoque, valor) VALUES ("Blusa vermelha", 300, true, 30);
INSERT INTO tb_products (nome_produto, quantidade, estoque, valor) VALUES ("Blusa branca", 10, true, 60);
INSERT INTO tb_products (nome_produto, quantidade, estoque, valor) VALUES ("Blusa preta", 1000, true, 50);
INSERT INTO tb_products (nome_produto, quantidade, estoque, valor) VALUES ("Blusa jeans", 400, true, 200);
INSERT INTO tb_products (nome_produto, quantidade, estoque, valor) VALUES ("short jeans", 800, true, 80);
INSERT INTO tb_products (nome_produto, quantidade, estoque, valor) VALUES ("short branco", 700, true, 30);
INSERT INTO tb_products (nome_produto, quantidade, estoque, valor) VALUES ("saia longa", 0 , false, 700);
INSERT INTO tb_products (nome_produto, quantidade, estoque, valor) VALUES ("saia curta jeans", 700, true, 250);
INSERT INTO tb_products (nome_produto, quantidade, estoque, valor) VALUES ("jaqueta jeans", 250, true, 100);
INSERT INTO tb_products (nome_produto, quantidade, estoque, valor) VALUES ("moletom colorido", 500, true, 60);

SELECT * FROM tb_products WHERE quantidade >= 500;
SELECT * FROM tb_products WHERE quantidade <500;