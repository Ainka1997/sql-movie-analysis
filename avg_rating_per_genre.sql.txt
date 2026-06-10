--What is the average IMDb rating per genre?
SELECT 
	genre,
	AVG(imdb_10) as average_IMDB
FROM movies
GROUP BY genre
ORDER BY average_IMDB DESC
LIMIT 10;

