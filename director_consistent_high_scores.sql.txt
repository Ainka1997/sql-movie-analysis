--Find the top 5 directors whose movies consistently score above 8.0.
SELECT * FROM movies limit 5;
SELECT 
	director,
	count(*) as movie_count,
	AVG(imdb_10) as avg_rating
FROM movies
GROUP BY director
HAVING count(*)>=2
ORDER BY avg_rating DESC, movie_count DESC
LIMIT 5;

