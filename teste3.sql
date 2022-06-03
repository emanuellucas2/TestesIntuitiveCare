create database if not exists Teste3;
use Teste3;

CREATE TABLE if not exists Contabeis_1T2020 (
  DATA date NOT NULL,
  REG_ANS int NOT NULL,
  CD_CONTA_CONTABIL int NOT NULL,
  DESCRICAO varchar(80) NOT NULL,
  VL_SALDO_FINAL float NOT NULL,
  PRIMARY KEY (REG_ANS)
);

CREATE TABLE if not exists Contabeis_2T2020 (
  DATA date NOT NULL,
  REG_ANS int NOT NULL,
  CD_CONTA_CONTABIL int NOT NULL,
  DESCRICAO varchar(80) NOT NULL,
  VL_SALDO_FINAL float NOT NULL,
  PRIMARY KEY (REG_ANS)
);

CREATE TABLE if not exists Contabeis_3T2020 (
  DATA date NOT NULL,
  REG_ANS int NOT NULL,
  CD_CONTA_CONTABIL int NOT NULL,
  DESCRICAO varchar(80) NOT NULL,
  VL_SALDO_FINAL float NOT NULL,
  PRIMARY KEY (REG_ANS)
);

CREATE TABLE if not exists Contabeis_4T2020 (
  DATA date NOT NULL,
  REG_ANS int NOT NULL,
  CD_CONTA_CONTABIL int NOT NULL,
  DESCRICAO varchar(80) NOT NULL,
  VL_SALDO_FINAL float NOT NULL,
  PRIMARY KEY (REG_ANS)
);

CREATE TABLE if not exists Contabeis_1T2021 (
  DATA date NOT NULL,
  REG_ANS int NOT NULL,
  CD_CONTA_CONTABIL int NOT NULL,
  DESCRICAO varchar(80) NOT NULL,
  VL_SALDO_FINAL float NOT NULL,
  PRIMARY KEY (REG_ANS)
);

CREATE TABLE if not exists Contabeis_2T2021 (
  DATA date NOT NULL,
  REG_ANS int NOT NULL,
  CD_CONTA_CONTABIL int NOT NULL,
  DESCRICAO varchar(80) NOT NULL,
  VL_SALDO_FINAL float NOT NULL,
  PRIMARY KEY (REG_ANS)
);

CREATE TABLE if not exists Contabeis_3T2021 (
  DATA date NOT NULL,
  REG_ANS int NOT NULL,
  CD_CONTA_CONTABIL int NOT NULL,
  DESCRICAO varchar(80) NOT NULL,
  VL_SALDO_FINAL float NOT NULL,
  PRIMARY KEY (REG_ANS)
);

CREATE TABLE if not exists Contabeis_4T2021 (
  DATA date NOT NULL,
  REG_ANS int NOT NULL,
  CD_CONTA_CONTABIL int NOT NULL,
  DESCRICAO varchar(80) NOT NULL,
  VL_SALDO_INICIAL float NOT NULL,
  VL_SALDO_FINAL float NOT NULL,
  PRIMARY KEY (REG_ANS)
);

CREATE TABLE if not exists Op_Ativas (
  Registro_ANS int NOT NULL,
  CNPJ bigint NOT NULL,
  Razao_Social varchar(200) NOT NULL,
  Nome_Fantasia varchar(80) NOT NULL,
  Modalidade varchar(80) NOT NULL,
  Logradouro varchar(80) NOT NULL,
  Numero varchar(30) NOT NULL,
  Complemento varchar(80) NOT NULL,
  Bairro varchar(80) NOT NULL,
  Cidade varchar(80) NOT NULL,
  UF varchar(2) NOT NULL,
  CEP int NOT NULL,	
  DDD int NOT NULL,
  Telefone int NOT NULL,
  Fax int NOT NULL,
  Endereco_eletronico varchar(80) NOT NULL,
  Representante varchar(80) NOT NULL,
  Cargo_Representante varchar(80) NOT NULL,
  Data_Registro_ANS date NOT NULL,
  PRIMARY KEY (Registro_ANS)
);

ALTER DATABASE Teste3 CHARSET = Latin1 COLLATE = latin1_swedish_ci;

LOAD DATA LOCAL INFILE 'Teste3/1T2020.csv' 
INTO TABLE Contabeis_1T2020 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'Teste3/2T2020.csv' 
INTO TABLE Contabeis_2T2020 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'Teste3/3T2020.csv' 
INTO TABLE Contabeis_3T2020 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'Teste3/4T2020.csv' 
INTO TABLE Contabeis_4T2020 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'Teste3/1T2021.csv' 
INTO TABLE Contabeis_1T2021
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'Teste3/2T2021.csv' 
INTO TABLE Contabeis_2T2021 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'Teste3/3T2021.csv' 
INTO TABLE Contabeis_3T2021 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'Teste3/4T2021.csv' 
INTO TABLE Contabeis_4T2021 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'Teste3/Relatorio_cadop_teste_3.csv' 
INTO TABLE Op_Ativas 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n';

