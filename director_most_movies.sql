--Which director has the most movies in the top 500?
SELECT
	director,
	COUNT(title) as total_movies	
FROM movies
GROUP BY director
ORDER BY total_movies Desc
LIMIT 5;

