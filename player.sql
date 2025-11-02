SELECT * FROM Anagrafica_Player;

-- Tabella Anagrafica_Player
CREATE TABLE Anagrafica_Player (
    ID_player INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL,
    Nazionalità VARCHAR(50),
    Ruolo VARCHAR(30),
    Anno YEAR,
    Ruolo_giocato VARCHAR(30)
);