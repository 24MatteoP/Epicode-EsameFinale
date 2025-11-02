CREATE TABLE Classifica_2023 (
    Posizione INT NOT NULL,
    ID_Player INT NOT NULL,
    ID_Club INT NOT NULL,
    ID_Competizione INT NOT NULL,
    PRIMARY KEY (ID_Player, ID_Club, ID_Competizione),
    FOREIGN KEY (ID_Player) REFERENCES Anagrafica_Player(ID_Player),
    FOREIGN KEY (ID_Club) REFERENCES Anagrafica_Club(ID_Club),
    FOREIGN KEY (ID_Competizione) REFERENCES Competizioni(ID_Competizione)
);

insert into Classifica_2023 (Posizione, ID_Player, ID_Club, ID_Competizione)
values 
( 1 , 5 , 3 , 1 ),
( 2 , 50 , 7 , 1 ),
( 3 , 4 , 3 , 1 ),
( 4 , 9 , 7 , 1 ),
( 5 , 76 , 7 , 1 ),
( 6 , 77 , 1 , 1 ),
( 7 , 78 , 7 , 1 ),
( 8 , 79 , 14 , 1 ),
( 9 , 33 , 7 , 1 ),
( 10 , 1 , 1 , 1 ),
( 11 , 6 , 5 , 1 ),
( 12 , 32 , 4 , 1 ),
( 13 , 80 , 24 , 1 ),
( 14 , 81 , 7 , 1 ),
( 15 , 82 , 25 , 1 ),
( 16 , 18 , 1 , 1 ),
( 17 , 83 , 14 , 1 ),
( 18 , 84 , 17 , 1 ),
( 19 , 10 , 8 , 1 ),
( 20 , 57 , 18 , 1 ),
( 21 , 3 , 2 , 1 ),
( 22 , 85 , 14 , 1 ),
( 23 , 86 , 18 , 1 ),
( 24 , 87 , 13 , 1 ),
( 25 , 88 , 23 , 1 ),
( 26 , 89 , 11 , 1 ),
( 27 , 60 , 18 , 1 ),
( 28 , 90 , 26 , 1 ),
( 29 , 91 , 13 , 1 ),
( 30 , 61 , 7 , 1 );

select cl.posizione , p.Nome , p.Cognome, p.Nazionalità, p.Ruolo, c.Nome, com.Nome
from Classifica_2023 as cl
join Anagrafica_Player as p on cl.ID_Player = p.ID_player
join Anagrafica_Club as c on cl.ID_Club = c.ID_club
join Competizioni as com on cl.ID_Competizione = com.ID_competizione;
