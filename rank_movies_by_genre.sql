--Rank movies within each genre by combined score.

SELECT 
	title,
	GENRE,
	imdb_10,
	RANK() OVER(PARTITION BY GENRE ORDER BY imdb_10 DESC) as genre_rank
FROM movies
ORDER BY genre,genre_rank;
