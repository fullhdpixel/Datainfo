INSERT INTO Boek (isbn, titel, auteur) VALUES (1,'Titel not found','404');

INSERT INTO Boek (isbn, titel, auteur) VALUES (1,'Harry Potter and the Deathly Hallows','J.K. Rowling');

-- Result:
--ERROR: duplicate key value violates unique constraint "boek_pkey"
--SQL state: 23505
--Detail: Key (isbn)=(1) already exists.
