-- Most popular movie (A movie having highest ratings)
SELECT * FROM (SELECT mid as id, AVG(ratings.rating) as average FROM ratings GROUP BY mid) t1 NATURAL JOIN movie ORDER BY average DESC LIMIT 6;

-- Latest Movie
SELECT * FROM movie ORDER BY year desc;

-- corresponding ratings
movieId
SELECT * FROM ratings where mid = movieId

-- most popular movie in a  India
SELECT * FROM (SELECT mid as id, AVG(ratings.rating) as average FROM ratings NATURAL JOIN userProfile WHERE country = 'India' GROUP BY mid) t1 NATURAL JOIN movie ORDER BY average DESC;

-- most popular actor in india
SELECT t1.pid
FROM
	(SELECT pid, AVG(rating) as average
	FROM casts NATURAL JOIN ratings NATURAL JOIN userProfile
	WHERE role='Actor' AND country='India'
	GROUP BY pid
	) t1
	NATURAL JOIN
	(SELECT MAX(t2.average) as average
	FROM
		(SELECT pid, AVG(rating) as average
		FROM casts NATURAL JOIN ratings NATURAL JOIN userProfile
		WHERE role='Actor' AND country='India'
		GROUP BY pid
		) t2
	)t3

-- top movies ie A movie which is rated by more no of users


