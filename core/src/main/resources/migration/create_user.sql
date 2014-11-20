--liquibase formatted sql

--changeset aislas:1
CREATE TABLE USER (
    ID BIGINT NOT NULL AUTO_INCREMENT,
	USERNAME varchar(100),
	PASSWORD varchar(32),
	ENABLED tinyint(1),
	NOMBRE varchar(100),
	APELLIDO_PATERNO varchar(100),
	APELLIDO_MATERNO varchar(100),
	FECHA_DE_NACIMIENTO date,
	DATE_CREATED datetime,
	LAST_UPDATED datetime,
	SEXO varchar(50),
	TELEFONO varchar(10),
    PRIMARY KEY (ID)
);

