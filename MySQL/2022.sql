CREATE TABLE Classifica_2022 (
    Posizione INT NOT NULL,
    ID_Player INT NOT NULL,
    ID_Club INT NOT NULL,
    ID_Competizione INT NOT NULL,
    PRIMARY KEY (ID_Player, ID_Club, ID_Competizione),
    FOREIGN KEY (ID_Player) REFERENCES Anagrafica_Player(ID_Player),
    FOREIGN KEY (ID_Club) REFERENCES Anagrafica_Club(ID_Club),
    FOREIGN KEY (ID_Competizione) REFERENCES Competizioni(ID_Competizione)
);

insert into Classifica_2022 (Posizione, ID_Player, ID_Club, ID_Competizione)
values ( 1 , 18 , 1 , 1 ),
( 2 , 23 , 5 , 1 ),
( 3 , 9 , 7 , 1 ),
( 4 , 32 , 11 , 1 ),
( 5 , 6 , 5 , 1 ),
( 6 , 4 , 3 , 1 ),
( 7 , 14 , 1 , 1 ),
( 8 , 77 , 1 , 1 ),
( 9 , 1 , 1 , 1 ),
( 10 , 50 , 17 , 1 ),
( 11 , 41 , 8 , 1 ),
( 12 , 34 , 7 , 1 ),
( 13 , 64 , 12 , 1 ),
( 14 , 65 , 16 , 1 ),
( 15 , 66 , 5 , 1 ),
( 16 , 31 , 5 , 1 ),
( 17 , 67 , 1 , 1 ),
( 18 , 68 , 21 , 1 ),
( 19 , 69 , 22 , 1 ),
( 20 , 2 , 10 , 1 ),
( 21 , 10 , 8 , 1 ),
( 22 , 33 , 7 , 1 ),
( 23 , 38 , 5 , 1 ),
( 24 , 59 , 7 , 1 ),
( 25 , 70 , 11 , 1 ),
( 26 , 71 , 19 , 1 ),
( 27 , 72 , 6 , 1 ),
( 28 , 73 , 7 , 1 ),
( 29 , 74 , 23 , 1 ),
( 30 , 75 , 15 , 1 );

select cl.posizione , p.Nome , p.Cognome, p.Nazionalità, p.Ruolo, c.Nome, com.Nome
from Classifica_2022 as cl
join Anagrafica_Player as p on cl.ID_Player = p.ID_player
join Anagrafica_Club as c on cl.ID_Club = c.ID_club
join Competizioni as com on cl.ID_Competizione = com.ID_competizione;
