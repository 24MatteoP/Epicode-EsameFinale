CREATE TABLE Classifica_2021 (
    Posizione INT NOT NULL,
    ID_Player INT NOT NULL,
    ID_Club INT NOT NULL,
    ID_Competizione INT NOT NULL,
    PRIMARY KEY (ID_Player, ID_Club, ID_Competizione),
    FOREIGN KEY (ID_Player) REFERENCES Anagrafica_Player(ID_Player),
    FOREIGN KEY (ID_Club) REFERENCES Anagrafica_Club(ID_Club),
    FOREIGN KEY (ID_Competizione) REFERENCES Competizioni(ID_Competizione)
);


insert into Classifica_2021 (Posizione, ID_Player, ID_Club, ID_Competizione)
values ( 1 , 5 , 4 , 1 ),
( 2 , 32 , 11 , 1 ),
( 3 , 48 , 6 , 1 ),
( 4 , 18 , 1 , 1 ),
( 5 , 11 , 6 , 1 ),
( 6 , 2 , 10 , 1 ),
( 7 , 6 , 5 , 1 ),
( 8 , 9 , 7 , 1 ),
( 9 , 4 , 3 , 1 ),
( 10 , 49 , 19 , 1 ),
( 11 , 50 , 17 , 1 ),
( 12 , 51 , 18 , 1 ),
( 13 , 52 , 10 , 1 ),
( 14 , 53 , 10 , 1 ),
( 15 , 36 , 7 , 1 ),
( 16 , 12 , 3 , 1 ),
( 17 , 13 , 2 , 1 ),
( 18 , 54 , 19 , 1 ),
( 19 , 55 , 6 , 1 ),
( 20 , 34 , 7 , 1 ),
( 21 , 56 , 9 , 1 ),
( 22 , 57 , 18 , 1 ),
( 23 , 10 , 8 , 1 ),
( 24 , 58 , 4 , 1 ),
( 25 , 59 , 7 , 1 ),
( 26 , 60 , 18 , 1 ),
( 27 , 61 , 7 , 1 ),
( 28 , 62 , 20 , 1 ),
( 29 , 63 , 6 , 1 ),
( 30 , 1 , 1 , 1 );


select c2021.posizione , p.Nome , p.Cognome, p.Nazionalità, p.Ruolo, c.Nome, com.Nome
from Classifica_2021 as c2021
join Anagrafica_Player as p on c2021.ID_Player = p.ID_player
join Anagrafica_Club as c on c2021.ID_Club = c.ID_club
join Competizioni as com on c2021.ID_Competizione = com.ID_competizione;

