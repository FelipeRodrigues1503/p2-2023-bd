
CREATE DATABASE games;

USE games;


CREATE TABLE categorias (
  id INT IDENTITY NOT NULL,
  nome VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE jogos (
  id INT IDENTITY NOT NULL,
  titulo VARCHAR(255) NOT NULL,
  competitivo BOOLEAN NOT NULL,
  categoria_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES categorias (id)
);

CREATE TABLE plataformas (
  id INT IDENTITY NOT NULL,
  nome VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);


ALTER TABLE jogos
ADD FOREIGN KEY (plataforma_id) REFERENCES plataformas (id)