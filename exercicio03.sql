CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
  nome_classes VARCHAR(255),
 habilidade_especial VARCHAR(255),
PRIMARY KEY(id)
);

 
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
 nome VARCHAR(255),
 tipo VARCHAR(255),
 forca INT,
 destreza INT,
 agilidade INT,
 inteligencia INT,
 classes_id BIGINT,
 PRIMARY KEY(id),
 FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes(nome_classes,habilidade_especial) VALUES("lutador","força");
INSERT INTO tb_classes(nome_classes,habilidade_especial) VALUES("Mago","inteligencia");
INSERT INTO tb_classes(nome_classes,habilidade_especial) VALUES("Arqueiro","destreza");
INSERT INTO tb_classes(nome_classes,habilidade_especial) VALUES("Espadachim","destreza");
INSERT INTO tb_classes(nome_classes,habilidade_especial) VALUES("Gatuno","inteligência");

SELECT * FROM tb_personagens;
DELETE FROM tb_personagens WHERE id=2;

INSERT INTO tb_personagens(nome,tipo,forca,destreza,agilidade,inteligencia,classes_id) VALUES("Personagem 1","sobrenatural", 100,150,100,800,2);
INSERT INTO tb_personagens(nome,tipo,forca,destreza,agilidade,inteligencia,classes_id) VALUES("Personagem 2","humano", 900,300,200,100,1);
INSERT INTO tb_personagens(nome,tipo,forca,destreza,agilidade,inteligencia,classes_id) VALUES("Personagem 3","humano", 100,900,750,300,3);
INSERT INTO tb_personagens(nome,tipo,forca,destreza,agilidade,inteligencia,classes_id) VALUES("Personagem 4","humano", 75,850,550,300,3);
INSERT INTO tb_personagens(nome,tipo,forca,destreza,agilidade,inteligencia,classes_id) VALUES("Personagem 5","humano", 500,250,900,200,4);
INSERT INTO tb_personagens(nome,tipo,forca,destreza,agilidade,inteligencia,classes_id) VALUES("Personagem 6","humano", 450,150,950,200,4);
INSERT INTO tb_personagens(nome,tipo,forca,destreza,agilidade,inteligencia,classes_id) VALUES("Personagem 7","humano", 100,100,700,900,5);
INSERT INTO tb_personagens(nome,tipo,forca,destreza,agilidade,inteligencia,classes_id) VALUES("Personagem 8","humano", 100,150,650,800,5);

SELECT * FROM tb_personagens WHERE destreza>500;
SELECT * FROM tb_personagens WHERE inteligencia>500 AND agilidade > 300;
SELECT * FROM tb_personagens WHERE tipo LIKE "sobrenatural";
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id WHERE classes_id=2;

