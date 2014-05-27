CREATE TABLE Bestelling
(
  isbn integer NOT NULL,
  aantal integer,
  CONSTRAINT Bestelling_pkey PRIMARY KEY (isbn)
);

CREATE FUNCTION addbook() RETURNS boolean AS $$
    BEGIN
		--Schrijver die nog niet in de tabel boek voorkomt.
		IF(NOT(EXISTS(SELECT auteur FROM Boek WHERE auteur = NEW.auteur))) {
			--Voeg nieuwe rij aan bestelling toe
			INSERT INTO Bestelling (isbn, aantal) VALUES (new.isbn, new.aantal);
		}
    END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER addBooks AFTER INSERT OF isbn ON Boek
FOR EACH ROW 
EXECUTE PROCEDURE addbook();