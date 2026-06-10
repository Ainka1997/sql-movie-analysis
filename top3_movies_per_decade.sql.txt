--Show the top 3 movies per decade.

Select * from movies;

Select * 
From (
		Select 
			title,
			year,
			((year/10)*10) as decade_year,
			imdb_10,
			RANK() OVER (
				PARTITION BY(year/10)*10 
				ORDER BY imdb_10 DESC) AS rank_in_decade
		from movies
) ranked
Where rank_in_decade<=3
Order by decade_year, rank_in_decade;
