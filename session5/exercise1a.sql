--Code Tested: Thijs Smudde
--s1421689

CREATE TABLE Boek
(
  isbn integer NOT NULL,
  titel text,
  auteur text,
  CONSTRAINT boek_pkey PRIMARY KEY (isbn)
);

CREATE TABLE Exemplaar
(
  isbn integer PRIMARY KEY NOT NULL,
  volgnummer integer PRIMARY KEY,
  gewicht double precision,
  kast text,
  CONSTRAINT exemplaar_isbn_fkey FOREIGN KEY (isbn)
      REFERENCES boek (isbn) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);