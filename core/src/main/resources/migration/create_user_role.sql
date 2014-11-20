--liquibase formatted sql

--changeset aislas:2
CREATE TABLE USER_ROLE(
ID bigint(20) PRIMARY KEY,
USER_ID bigint(20),
ROLE varchar(30),
FOREIGN KEY (USER_ID) REFERENCES USER (ID)
)