--Which year produced the most top-ranked movies?
SELECT
	year,
	count(*) as movie_count
FROM movies
GROUP BY year
ORDER BY movie_count DESC
LIMIT 1;

