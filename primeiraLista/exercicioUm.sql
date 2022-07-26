CREATE DATABASE db_empresa;
USE db_empresa;
CREATE TABLE tb_rh(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_colaborador VARCHAR (255),
    telefone INT,
    email VARCHAR (255),
    valor_salario INT,
    cargo VARCHAR (255)
);

 -- ALTER TABLE tb_rh CHANGE area_trabalho  cargo VARCHAR(255);  -- para alterar o nome da coluna da planilha;
ALTER TABLE tb_rh MODIFY COLUMN telefone VARCHAR (255);      -- modificando uma coluna

SELECT * FROM tb_rh;

INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,cargo) VALUES ("Paloma","81122323","palomafreiire@hotmail.com", 3000, "TI");
INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,cargo) VALUES ("Camyla",81122323,"camyla123@hotmail.com", 3000, "TI");
INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,cargo) VALUES ("Antonio",81122323,"antonio345@hotmail.com", 4000, "TI");
INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,cargo) VALUES ("Michelle",81122323,"michelle78@hotmail.com", 3000, "TI");
INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,cargo) VALUES ("Deborah",81122323,"Deborahbac@hotmail.com", 2000, "TI");
INSERT INTO tb_rh (nome_colaborador,telefone,email,valor_salario,cargo) VALUES ("Miguel",81122323,"miguelit@hotmail.com", 1200, "TI");

-- DELETE FROM tb_rh WHERE id = 5; deletar a linha 5 

UPDATE tb_rh SET valor_salario = 1500
WHERE id = 4;

-- UPDATE tb_rh SET  id =5    WHERE id = 7; para atualizar a linha da tabela
UPDATE tb_rh SET cargo = "estagiaria" WHERE id = 4;
UPDATE tb_rh SET cargo = "estagiario" WHERE id=6;

DROP TABLE tb_rh;  -- deletar a tabela para depois fazer de novo;

SELECT * FROM tb_rh WHERE valor_salario > 2000;
SELECT * FROM tb_rh WHERE valor_salario < 2000;

-- SELECT * FROM tb_rh WHERE cargo LIKE "%t%" OR cargo LIKE "t%"; pesquisar o produto dentro da planilha;

