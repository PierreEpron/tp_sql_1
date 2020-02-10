DROP DATABASE IF EXISTS data;

CREATE DATABASE data;

USE data;

DROP TABLE IF EXISTS client_0;
CREATE TABLE client_0
(
	id INT PRIMARY KEY NOT NULL,
	nom VARCHAR(100),
	prenom VARCHAR(100),
	email VARCHAR(255),
	date_naissance DATE,
	pays VARCHAR(255),
	ville VARCHAR(255),
	code_postal VARCHAR(5),
	nombre_achat INT
);