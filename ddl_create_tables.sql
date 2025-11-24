CREATE DATABASE festa_junina;
USE festa_junina;

-- Tabela Visitante
CREATE TABLE Visitante (
    id_visitante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(120),
    saldo_total INT DEFAULT 0
);

-- Tabela Barraca
CREATE TABLE Barraca (
    id_barraca INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL
);

-- Tabela CategoriaFicha
CREATE TABLE CategoriaFicha (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Tabela Transacao
CREATE TABLE Transacao (
    id_transacao INT AUTO_INCREMENT PRIMARY KEY,
    id_visitante INT NOT NULL,
    tipo ENUM('COMPRA','CONSUMO') NOT NULL,
    data_hora DATETIME NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_visitante) REFERENCES Visitante(id_visitante)
);

-- Tabela Consumo
CREATE TABLE Consumo (
    id_consumo INT AUTO_INCREMENT PRIMARY KEY,
    id_visitante INT NOT NULL,
    id_barraca INT NOT NULL,
    id_categoria INT NOT NULL,
    quantidade INT NOT NULL,
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (id_visitante) REFERENCES Visitante(id_visitante),
    FOREIGN KEY (id_barraca) REFERENCES Barraca(id_barraca),
    FOREIGN KEY (id_categoria) REFERENCES CategoriaFicha(id_categoria)
);
