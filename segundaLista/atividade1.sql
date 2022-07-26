CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    personagens VARCHAR (255)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_personagem VARCHAR (255),
    cor VARCHAR(255),
    tamanho INT,
    roupa_tipo VARCHAR(255),
    poder_ataque INT,
    classe_id BIGINT,
    
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)	
);
DROP TABLE tb_personagens;
INSERT INTO tb_classe (personagens) VALUES ("Guerreiro"), ("Arqueiro"), ("Mago"), ("Curandeiro"), ("Barbaro");
SELECT * FROM tb_classe;

SELECT * FROM tb_personagens;
INSERT INTO tb_personagens (nome_personagem, cor, tamanho, roupa_tipo, poder_ataque, classe_id) VALUES ("Pama", "roxo", 160, "roupa de arqueiro",4000, 2);
INSERT INTO tb_personagens (nome_personagem, cor, tamanho, roupa_tipo,poder_ataque, classe_id) VALUES ("Sici", "amarelo", 160, "Roupa de couro",5000, 1);
INSERT INTO tb_personagens (nome_personagem, cor, tamanho, roupa_tipo,poder_ataque, classe_id) VALUES ("Camys", "azul", 160, "roupa de mago",3000, 3);
INSERT INTO tb_personagens (nome_personagem, cor, tamanho, roupa_tipo,poder_ataque, classe_id) VALUES ("San", "dourado", 160, "roupas leves",2000, 4);
INSERT INTO tb_personagens (nome_personagem, cor, tamanho, roupa_tipo,poder_ataque, classe_id) VALUES ("Debs", "preto", 160, "roupas pesadas",6000, 5);
INSERT INTO tb_personagens (nome_personagem, cor, tamanho, roupa_tipo,poder_ataque, classe_id) VALUES ("Dans", "azul escuro", 160, "roupa de couro",3000, 1);
INSERT INTO tb_personagens (nome_personagem, cor, tamanho, roupa_tipo,poder_ataque, classe_id) VALUES ("Kars", "rosa", 160, "roupas leves",1000, 4);
INSERT INTO tb_personagens (nome_personagem, cor, tamanho, roupa_tipo,poder_ataque, classe_id) VALUES ("Tars", "verde", 160, "roupas pesadas",4000, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_ataque BETWEEN 1000 AND 2000;  -- intervalos entre dois valores da tabela;
SELECT * FROM tb_personagens WHERE nome_personagem LIKE "c%";

SELECT * FROM tb_personagens INNER JOIN tb_classe
ON tb_classe.id = tb_personagens.classe_id; 

SELECT * FROM tb_personagens INNER JOIN tb_classe
ON tb_personagens.classe_id = tb_classe.id WHERE tb_classe.id = 1;

