CREATE TABLE Classifica_2025 (
    Posizione INT NOT NULL,
    ID_Player INT NOT NULL,
    ID_Club INT NOT NULL,
    ID_Competizione INT NOT NULL,
    PRIMARY KEY (ID_Player, ID_Club, ID_Competizione),
    FOREIGN KEY (ID_Player) REFERENCES Anagrafica_Player(ID_Player),
    FOREIGN KEY (ID_Club) REFERENCES Anagrafica_Club(ID_Club),
    FOREIGN KEY (ID_Competizione) REFERENCES Competizioni(ID_Competizione)
);

insert into Classifica_2025 (Posizione, ID_Player, ID_Club, ID_Competizione)
values 
( 1 , 109 , 3 , 1 ),
( 2 , 93 , 4 , 1 ),
( 3 , 105 , 3 , 1 ),
( 4 , 6 , 5 , 1 ),
( 5 , 110 , 4 , 1 ),
( 6 , 111 , 3 , 1 ),
( 7 , 4 , 1 , 1 ),
( 8 , 103 , 6 , 1 ),
( 9 , 49 , 3 , 1 ),
( 10 , 112 , 3 , 1 ),
( 11 , 58 , 4 , 1 ),
( 12 , 83 , 14 , 1 ),
( 13 , 10 , 11 , 1 ),
( 14 , 113 , 3 , 1 ),
( 15 , 114 , 31 , 1 ),
( 16 , 77 , 1 , 1 ),
( 17 , 32 , 4 , 1 ),
( 18 , 115 , 14 , 1 ),
( 19 , 116 , 3 , 1 ),
( 20 , 57 , 18 , 1 ),
( 21 , 117 , 17 , 1 ),
( 22 , 118 , 5 , 1 ),
( 23 , 84 , 1 , 1 ),
( 24 , 119 , 3 , 1 ),
( 25 , 120 , 18 , 1 ),
( 26 , 50 , 7 , 1 ),
( 27 , 104 , 13 , 1 ),
( 28 , 31 , 5 , 1 ),
( 29 , 95 , 29 , 1 ),
( 30 , 121 , 11 , 1 );

select cl.posizione , p.Nome , p.Cognome, p.Nazionalità, p.Ruolo, c.Nome, com.Nome
from Classifica_2025 as cl
join Anagrafica_Player as p on cl.ID_Player = p.ID_player
join Anagrafica_Club as c on cl.ID_Club = c.ID_club
join Competizioni as com on cl.ID_Competizione = com.ID_competizione;
