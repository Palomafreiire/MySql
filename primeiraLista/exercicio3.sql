CREATE DATABASE escola;

USE escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(255),
    cpf VARCHAR (15),
    idade INT,
    nota INT,
    aprovado BOOLEAN
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos(nome_aluno,cpf,idade,nota,aprovado) VALUES ("Paloma", "123123123-12",28, 8, true);
INSERT INTO tb_alunos(nome_aluno,cpf,idade,nota,aprovado) VALUES ("karol", "123123123-12",28, 5, false);
INSERT INTO tb_alunos(nome_aluno,cpf,idade,nota,aprovado) VALUES ("camyla", "123123123-12",29, 7, true);
INSERT INTO tb_alunos(nome_aluno,cpf,idade,nota,aprovado) VALUES ("danilo", "123123123-12",28, 9, true);
INSERT INTO tb_alunos(nome_aluno,cpf,idade,nota,aprovado) VALUES ("renata", "123123123-12",28, 3, false);
INSERT INTO tb_alunos(nome_aluno,cpf,idade,nota,aprovado) VALUES ("sandrelly", "123123123-12",25, 4, false);
INSERT INTO tb_alunos(nome_aluno,cpf,idade,nota,aprovado) VALUES ("marcos", "123123123-12",30, 10, true);
INSERT INTO tb_alunos(nome_aluno,cpf,idade,nota,aprovado) VALUES ("michelane", "123123123-12",28, 7, true);
INSERT INTO tb_alunos(nome_aluno,cpf,idade,nota,aprovado) VALUES ("Antonio", "123123123-12",28, 6,true);

DROP TABLE tb_alunos;

UPDATE tb_alunos SET aprovado = false WHERE id = 9;

SELECT * FROM tb_alunos WHERE nota >= 7;
SELECT * FROM tb_alunos WHERE nota < 7;

SELECT * FROM tb_alunos;