CREATE TABLE Classifica_2024 (
    Posizione INT NOT NULL,
    ID_Player INT NOT NULL,
    ID_Club INT NOT NULL,
    ID_Competizione INT NOT NULL,
    PRIMARY KEY (ID_Player, ID_Club, ID_Competizione),
    FOREIGN KEY (ID_Player) REFERENCES Anagrafica_Player(ID_Player),
    FOREIGN KEY (ID_Club) REFERENCES Anagrafica_Club(ID_Club),
    FOREIGN KEY (ID_Competizione) REFERENCES Competizioni(ID_Competizione)
);

insert into Classifica_2024 (Posizione, ID_Player, ID_Club, ID_Competizione)
values 
( 1 , 76 , 7 , 1 ),
( 2 , 77 , 1 , 1 ),
( 3 , 84 , 1 , 1 ),
( 4 , 92 , 1 , 1 ),
( 5 , 50 , 7 , 1 ),
( 6 , 4 , 3 , 1 ),
( 7 , 57 , 18 , 1 ),
( 8 , 93 , 4 , 1 ),
( 9 , 94 , 1 , 1 ),
( 10 , 10 , 11 , 1 ),
( 11 , 59 , 7 , 1 ),
( 12 , 95 , 29 , 1 ),
( 13 , 96 , 23 , 1 ),
( 14 , 97 , 27 , 1 ),
( 15 , 98 , 28 , 1 ),
( 16 , 99 , 29 , 1 ),
( 17 , 100 , 1 , 1 ),
( 18 , 82 , 25 , 1 ),
( 19 , 91 , 13 , 1 ),
( 20 , 101 , 18 , 1 ),
( 21 , 87 , 13 , 1 ),
( 22 , 72 , 1 , 1 ),
( 23 , 61 , 7 , 1 ),
( 24 , 102 , 13 , 1 ),
( 25 , 103 , 7 , 1 ),
( 26 , 104 , 13 , 1 ),
( 27 , 105 , 3 , 1 ),
( 28 , 106 , 29 , 1 ),
( 29 , 107 , 30 , 1 ),
( 30 , 108 , 17 , 1 );

select cl.posizione , p.Nome , p.Cognome, p.Nazionalità, p.Ruolo, c.Nome, com.Nome
from Classifica_2024 as cl
join Anagrafica_Player as p on cl.ID_Player = p.ID_player
join Anagrafica_Club as c on cl.ID_Club = c.ID_club
join Competizioni as com on cl.ID_Competizione = com.ID_competizione;
