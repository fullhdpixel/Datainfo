SELECT p.pid FROM Person p, Movie m
	WHERE EXISTS(
		SELECT * FROM Acts a
		WHERE a.pid = p.pid
		AND m.mid = a.mid
		AND m.name = 'Back to the Future'
		);
		
SELECT DISTINCT a.pid FROM Acts a, Movie m
	WHERE m.mid = a.mid
	AND m.name = 'Back to the Future';