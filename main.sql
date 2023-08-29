--Automatically created the table using CREATE TABLE and used Insert into to put data entries into the table

SELECT * FROM MovieInfo 


-- SELECT * FROM MovieInfo ORDER BY rating DESC

-- 1st task: Find the actors that appear in the most movies in the dataset
 SELECT actor, COUNT(*) as TotalMovies --Take the total count of movies of each actor
 FROM (
  SELECT mainactor as actor FROM MovieInfo
  UNION ALL --Use Union all to combine mainactor, and mainctor2 columns into a single column
   SELECT mainactor2 as actor FROM MovieInfo
) AS AllActors --Calculates the total count of movies for each actor combination.
GROUP BY actor --Group results by actor combinations
ORDER BY TotalMovies DESC; --Sorted in descending order

--2nd task: Find the top rated movies in a specific genre
SELECT genre, movietitle, rating from MOVIEINFO WHERE genre = 'Drama' ORDER BY rating DESC 



--3rd task: Find the average rating for a specific director(E.g. Christopher Nolan in this case)
SELECT directors, AVG(rating) FROM MOVIEINFO WHERE directors = 'Christopher Nolan' GROUP BY directors ORDER BY AVG(rating) DESC
