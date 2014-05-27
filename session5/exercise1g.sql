--Code Tested: Thijs Smudde
--s1421689

CREATE TABLE Bestelling
(
  isbn integer NOT NULL,
  aantal integer,
  CONSTRAINT Bestelling_pkey PRIMARY KEY (isbn)
);

CREATE FUNCTION addbook() RETURNS trigger AS $emp_stamp$
    BEGIN
	--Schrijver die nog niet in de tabel boek voorkomt.
	IF(NOT(EXISTS(SELECT auteur FROM Boek WHERE auteur = NEW.auteur))) THEN
		--Voeg nieuwe rij aan bestelling toe
		INSERT INTO Bestelling (isbn, aantal) VALUES (NEW.isbn, NEW.aantal);
	END IF;	
    END;
$emp_stamp$ LANGUAGE plpgsql;


CREATE TRIGGER addBooks AFTER INSERT OF isbn ON Boek
FOR EACH ROW 
EXECUTE PROCEDURE addbook();