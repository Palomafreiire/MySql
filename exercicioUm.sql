CREATE DATABASE db_empresa;
USE db_empresa;
CREATE TABLE tb_rh(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_colaborador VARCHAR (255),
    telefone INT,
    email VARCHAR (255),
    valor_salario INT,
    area_trabalho VARCHAR (255)
);

SELECT * FROM tb_rh;

INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,area_trabalho) VALUES ("Paloma",81122323,"palomafreiire@hotmail.com", 3000, "TI");
INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,area_trabalho) VALUES ("Camyla",81122323,"camyla123@hotmail.com", 3000, "TI");
INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,area_trabalho) VALUES ("Antonio",81122323,"antonio345@hotmail.com", 4000, "TI");
INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,area_trabalho) VALUES ("Michelle",81122323,"michelle78@hotmail.com", 3000, "TI");
INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,area_trabalho) VALUES ("Deborah",81122323,"Deborahbac@hotmail.com", 2000, "TI");
INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,area_trabalho) VALUES ("Miguel",81122323,"miguelit@hotmail.com", 1200, "TI");

DELETE FROM tb_rh
WHERE id = 5;

DELETE FROM tb_rh
WHERE id = 6;

UPDATE tb_rh SET valor_salario = 1500
WHERE id = 4;

UPDATE tb_rh SET  id =5
WHERE id = 7;

UPDATE tb_rh SET  id =6
WHERE id = 8;

