--Which movie has the highest customer score?

--Query1
SELECT title, custom_score
FROM movies
ORDER BY custom_score DESC
LIMIT 1;

--Alternative Query
SELECT title, custom_score
FROM movies
WHERE custom_score = (
    SELECT MAX(custom_score) FROM movies
);

