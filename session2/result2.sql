insert into F (x, y, violation, motivation) values
	(ABC,EF,false,'BCNF is goed toegepast. Als je ABC weet, kun je daar alles van afleiden (Superkey).'),
	(E,D,true,'E -> is overbodig, want ABC -> EFD'),
	(D,A,true,'Uit A volgt D d.m.v. ABC -> EF, E -> D, D -> A D is not unique');