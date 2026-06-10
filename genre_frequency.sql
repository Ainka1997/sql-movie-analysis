--Which genres appear most frequently in the dataset?

SELECT 
	genre,
	COUNT(title) as movies_count
FROM movies
GROUP BY genre
ORDER BY movies_count DESC
LIMIT 10;

--Compare average scores of movies before and after 2000.

SELECT 
	CASE 
		WHEN YEAR<2000 then 'before 2000'
		ELSE 'after 2000'
	END AS period,
	AVG(imdb_10) AS avg_score
FROM movies
GROUP BY period;
