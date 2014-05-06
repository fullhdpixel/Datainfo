SELECT p.name FROM Person p, Movie m
WHERE EXISTS(SELECT * FROM Acts a
	WHERE a.mid = m.mid
	AND p.pid = a.pid)
GROUP BY 1
HAVING COUNT(m.mid >= 4 and max(m.rating) >= 9;