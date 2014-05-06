SELECT name FROM person p, Writes w, Directs d
	WHERE p.pid = w.pid
	AND w.mid NOT IN (SELECT mid FROM Directs)