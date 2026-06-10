--Calculate the difference between a movie’s IMDb rating and the genre average.
SELECT
 title,
 genre,
 imdb_10,
 AVG(imdb_10)OVER (PARTITION BY genre)AS genre_avg,
 imdb_10- AVG(imdb_10)OVER (PARTITION BY genre)AS rating_diff
FROM movies
ORDER BY genre,rating_diff;

--Identify movies where critics and audiences disagreed the most (largest rating gap).


SELECT 
	title,
	critic_rating_rt,
	audience_rating,
	COALESCE(ABS(critic_rating_rt - audience_rating),0) as rating_gap
FROM movies
ORDER BY rating_gap DESC;

