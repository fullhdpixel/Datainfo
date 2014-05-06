insert into F (x, y, violation, motivation) values
	(ABC,EF,false,'BCNF is goed toegepast'),
	(E,D,true,''),
	(D,A,true,'Uit A volgt D d.m.v. ABC -> EF, E -> D, D -> A D is not unique');