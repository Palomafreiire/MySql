CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	tipo_pizza VARCHAR (255)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR (30),
    tamanho CHAR,
    preco DECIMAL (4,2),
    borda BOOLEAN,
	categoria_id BIGINT,
    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias (tipo_pizza) VALUES ("Tradicional"), ("Italiana"), ("Doce"), ("Premium");

SELECT * FROM tb_pizzas;
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categoria_id) VALUES ("calabresa","G", 35, false, 1);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categoria_id) VALUES ("Pepperoni","M", 60, true, 4 );
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categoria_id) VALUES ("Brigadeiro","P",25 , false, 3);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categoria_id) VALUES ("Tres queijo","G", 50, false, 1);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categoria_id) VALUES ("Nutella com morango","M", 35, false, 4);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categoria_id) VALUES ("Capricciosa","G", 65, false, 2);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categoria_id) VALUES ("Marguerita e Marinara","G", 70, false, 2);
INSERT INTO tb_pizzas (sabor, tamanho, preco, borda, categoria_id) VALUES ("Camarão com provolone","G", 80, false, 4);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "m%"; -- localizando na tabela os elementos com a letra m;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias -- unindo as duas tabelas pela chave estrangeira;
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias -- selecionando na tabela onde o tipo de pizza é premium;
ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 4;

