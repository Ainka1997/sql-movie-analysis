--Find the genre with the highest average combined score.
SELECT 
	genre,
	AVG(imdb_10) as avg_combined_score
FROM movies
GROUP BY genre
ORDER BY avg_combined_score DESC
LIMIT 1;

