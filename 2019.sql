CREATE TABLE Classifica_2019 (
    Posizione INT NOT NULL,
    ID_Player INT NOT NULL,
    ID_Club INT NOT NULL,
    ID_Competizione INT NOT NULL,
    PRIMARY KEY (ID_Player, ID_Club, ID_Competizione),
    FOREIGN KEY (ID_Player) REFERENCES Anagrafica_Player(ID_Player),
    FOREIGN KEY (ID_Club) REFERENCES Anagrafica_Club(ID_Club),
    FOREIGN KEY (ID_Competizione) REFERENCES Competizioni(ID_Competizione)
);

insert into Classifica_2019 (Posizione, ID_Player, ID_Club, ID_Competizione)
values ( 1 , 5 , 4 , 1 ),
( 2 , 31 , 5 , 1 ),
( 3 , 2 , 10 , 1 ),
( 4 , 23 , 5 , 1 ),
( 5 , 6 , 5 , 1 ),
( 6 , 4 , 3 , 1 ),
( 7 , 25 , 5 , 1 ),
( 8 , 32 , 11 , 1 ),
( 9 , 33 , 7 , 1 ),
( 10 , 34 , 7 , 1 ),
( 11 , 35 , 12 , 1 ),
( 12 , 36 , 7 , 1 ),
( 13 , 8 , 6 , 1 ),
( 14 , 9 , 7 , 1 ),
( 15 , 37 , 12 , 1 ),
( 16 , 16 , 7 , 1 ),
( 17 , 19 , 5 , 1 ),
( 18 , 3 , 2 , 1 ),
( 19 , 38 , 5 , 1 ),
( 20 , 39 , 13 , 1 ),
( 21 , 40 , 12 , 1 ),
( 22 , 41 , 8, 1 ),
( 23 , 30 , 8 , 1 ),
( 24 , 42 , 14 , 1 ),
( 25 , 43 , 4 , 1 ),
( 26 , 18 , 1 , 1 ),
( 27 , 44 , 5 , 1 ),
( 28 , 45 , 15 , 1 ),
( 29 , 46 , 3 , 1 ),
( 30 , 47 , 12 , 1 );

select c2019.posizione , p.Nome , p.Cognome, p.Nazionalità, p.Ruolo, c.Nome, com.Nome
from Classifica_2019 as c2019
join Anagrafica_Player as p on c2019.ID_Player = p.ID_player
join Anagrafica_Club as c on c2019.ID_Club = c.ID_club
join Competizioni as com on c2019.ID_Competizione = com.ID_competizione;

