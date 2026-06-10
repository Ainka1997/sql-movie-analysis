--List the top 10 movies by IMDb rating.
SELECT *
FROM MOVIES
ORDER BY imdb_10 DESC
LIMIT 10;

--Find the most common language among top-rated movies.

Select * from movies limit 5;

SELECT 
	language,
	COUNT(*) AS movies_count
FROM movies
GROUP BY language
ORDER BY movies_count DESC;

