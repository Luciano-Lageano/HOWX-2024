CREATE DATABASE db_pb_epi;
USE db_pb_epi;
CREATE TABLE tbepi (
idproduto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(50),
calca VARCHAR(2),
camisa VARCHAR(3),
sapato VARCHAR(2),
luva VARCHAR(1),
capacete VARCHAR(2),
oculos VARCHAR(8));
select * fromproduto tbepi;


