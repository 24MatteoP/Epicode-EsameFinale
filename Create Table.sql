-- Creazione del database
CREATE DATABASE IF NOT EXISTS CalcioDB;
USE CalcioDB;

-- Tabella Anagrafica_Club
CREATE TABLE Anagrafica_Club (
    ID_club INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Nazionalità VARCHAR(50)
);

-- Tabella Competizioni
CREATE TABLE Competizioni (
    ID_competizione INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL
);

-- Tabella Anagrafica_Player
CREATE TABLE Anagrafica_Player (
    ID_player INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL,
    Nazionalità VARCHAR(50),
    Ruolo VARCHAR(30),
    Anno YEAR, #anno di nascita
    Ruolo_giocato VARCHAR(30),
    ID_club INT,
    FOREIGN KEY (ID_club) REFERENCES Anagrafica_Club(ID_club)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);
