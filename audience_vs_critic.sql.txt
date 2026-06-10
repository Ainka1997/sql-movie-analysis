--Which movies have a higher audience rating than critic rating?
SELECT 
	title,
	audience_rating,
	critic_rating_rt
FROM movies
WHERE audience_rating > critic_rating_rt;
