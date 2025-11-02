CREATE TABLE Classifica_2018 (
    Posizione INT NOT NULL CHECK (Posizione BETWEEN 1 AND 30),
    Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL,
    Nazionalità VARCHAR(50),
    Club VARCHAR(100),
    Nome_competizione VARCHAR(100),
    ID_Player INT NOT NULL,
    ID_Club INT NOT NULL,
    ID_Competizione INT NOT NULL,
    PRIMARY KEY (Posizione),
    FOREIGN KEY (ID_Player) REFERENCES Anagrafica_Player(ID_player)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ID_Club) REFERENCES Anagrafica_Club(ID_club)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ID_Competizione) REFERENCES Competizioni(ID_competizione)
        ON UPDATE CASCADE ON DELETE CASCADE
);


select * from Classifica_2018
