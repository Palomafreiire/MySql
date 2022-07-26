CREATE DATABASE db_cidade_das_carnes;
USE  db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_produto VARCHAR (255)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	tipo_produto VARCHAR (255),
    preco DECIMAL (8,2),
    tamanho CHAR,
    categorias_id BIGINT,
    
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias (nome_produto) VALUES ("Carne vermelha") , ("Carne de porco"),("Carne de frango"),("Bebidas"),("itens Churrasco");

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos (tipo_produto, preco, tamanho, categorias_id) VALUES ("hamburguer fraldinha", 70, "G", 1);
INSERT INTO tb_produtos (tipo_produto, preco, tamanho, categorias_id) VALUES ("bisteca", 20, "M", 2);
INSERT INTO tb_produtos (tipo_produto, preco, tamanho, categorias_id) VALUES ("asinha", 60, "G", 3);
INSERT INTO tb_produtos (tipo_produto, preco, tamanho, categorias_id) VALUES ("Cerveja", 55, "G", 4);
INSERT INTO tb_produtos (tipo_produto, preco, tamanho, categorias_id) VALUES ("kit churrasco", 60, "G", 5);
INSERT INTO tb_produtos (tipo_produto, preco, tamanho, categorias_id) VALUES ("espetinho kafta", 70, "G", 1);
INSERT INTO tb_produtos (tipo_produto, preco, tamanho, categorias_id) VALUES ("coração de galinha", 80, "G", 3);
INSERT INTO tb_produtos (tipo_produto, preco, tamanho, categorias_id) VALUES ("picanha", 120, "G", 1);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE tipo_produto LIKE "c%"; -- tipo de produtos que começam com a letra C;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id WHERE tb_categorias.id = 1;
