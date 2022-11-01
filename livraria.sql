# CRIA O BANCO DE DADOS
CREATE DATABASE LIVRARIA;
USE LIVRARIA;
CREATE TABLE LIVROS(
	NOME_LIVRO VARCHAR(50),
	NOME_AUTOR VARCHAR(50),
	SEXO_AUTOR CHAR(9), /*É interessante colocar como CHAR(1) quando for se referir ao sexo, pois ficará como "M" ou "F", ocupando menos bytes no BD e melhorando a performance dele. */
	NUM_PAGINAS INT(4),
	NOME_EDITORA VARCHAR(30),
	VALOR FLOAT(6,2),
	UF CHAR(2),
	ANO_PUBLICADO INT(4)
);

INSERT INTO LIVROS(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUM_PAGINAS, NOME_EDITORA, VALOR, UF, ANO_PUBLICADO) VALUES('Cavaleiro Real','Ana Claudia','Femenino','465','Atlas',49.9,'RJ',2009),
	('SQL para Leigos','João Nunes','Masculino',450,'Addison',98,'SP',2018),
	('Receitas Caseiras','Celia Tavares','Femenino',210,'Atlas',45,'RJ',2008),
	('Pessoas Efetivas','Eduardo Santos','Masculino',390,'Beta',78.99,'RJ',2018),
	('Hábitos Saudáveis','Eduardo Santos','Masculino',630,'Beta',150.98,'RJ',2019),
	('A Casa Marrom','Hermes Macedo','Masculino',250,'Bubba',60,'MG',2016),
	('Estacio Querido','Geraldo Francisco','Masculino',310,'Insignia',100,'ES',2015),
	('Pra sempre amigas','Leda Silva','Femenino',510,'Insignia',78.98,'ES',2011),
	('Copas Inesquecíveis','Marco Alcantara','Masculino',200,'Larson',130.98,'RS',2018),
	('O poder da mente','Clara Mafra','Femenino',120,'Continental',56.58,'RS',2017)
  ;

SELECT * FROM LIVROS;

SELECT NOME_LIVRO, NOME_EDITORA FROM LIVROS;

SELECT NOME_LIVRO, UF FROM LIVROS WHERE SEXO_AUTOR = "Masculino";

SELECT NOME_LIVRO, NUM_PAGINAS FROM LIVROS WHERE SEXO_AUTOR = "Femenino";

SELECT VALOR FROM LIVROS WHERE UF = "SP";

SELECT NOME_AUTOR, SEXO_AUTOR FROM LIVROS WHERE SEXO_AUTOR = "Masculino" AND (UF = "SP" OR UF = "RJ");
