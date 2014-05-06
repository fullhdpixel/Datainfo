INSERT INTO F (x, y, violation, motivation) 
	values
		(ABC,EF,false,'BCNF is goed toegepast. Als je ABC weet, kun je daar alles van afleiden (Superkey).'),
		(E,D,true,'E -> is overbodig, want ABC -> EFD'),
		(D,A,true,'Uit A volgt D d.m.v. ABC -> EF, E -> D, D -> A D is not unique');
	
INSERT INTO F1 (x, y, violation, motivation)
	values
		(ABC,EF,false,'BCNF is toegepast: geen schending');
		
INSERT INTO F2 (x, y, violation, motivation)
	values
		(E,D,false,'BCNF is toegepast: geen schending');