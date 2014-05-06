SELECT name FROM person p, Writes w
	WHERE p.pid = w.pid
	AND NOT EXISTS(SELECT pid FROM Directs)
	
	--Not working well