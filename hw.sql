-- Question 1 --
Select * From movies


-- Question 2 --
SELECT title, id FROM 
movies 
ASC limit 10


-- Question 3 --
SELECT * FROM 
movies 
WHERE id = 485


-- Question 4 --
SELECT id
FROM movies
WHERE title = ('Made in America (1993)')


-- Question 5 --
SELECT *
FROM movies
WHERE id BETWEEN 1 AND 10
ORDER BY title


-- Question 6 --
SELECT *
FROM movies
WHERE title LIKE "%(2002)%"


-- Question 7 --
SELECT *
FROM movies
WHERE title LIKE "%Godfather%"


-- Question 8 --
SELECT *
FROM movies
WHERE genres LIKE "Comedy"


-- Question 9 --
SELECT *
FROM movies
WHERE genres LIKE "Comedy" AND title LIKE "%(2000)%"


-- Question 10 --
SELECT *
FROM movies
WHERE title LIKE "%death%" AND genres LIKE "%comedy%"


-- Question 11 --
SELECT *
FROM movies
WHERE title LIKE "%super%" AND (title LIKE "%(2001)%" OR "%(2002)%")

-- Question 12 --
SELECT movies.title, ratings.rating
FROM ratings
INNER JOIN movies ON ratings.movie_id=movies.id
WHERE ratings.movie_id=858

-- Question 13 --
SELECT movies.title, ratings.rating
FROM ratings
INNER JOIN movies ON ratings.movie_id=movies.id
WHERE ratings.movie_id=858
ORDER BY ratings.timestamp DESC

-- Question 14 --
SELECT movies.title, links.imdb_id
FROM links
INNER JOIN movies ON links.movie_id=movies.id
WHERE movies.genres LIKE "comedy" AND movies.title LIKE "%(2005)%"

-- Question 15 --
SELECT movies.title
FROM movies 
LEFT OUTER JOIN ratings ON (movies.id = ratings.movie_id)
WHERE ratings.movie_id IS NULL


-- Question 16 --
SELECT AVG(rating), movie_id
FROM ratings
GROUP BY movie_id


-- Question 17 --
SELECT TOTAL(rating), movie_id
FROM ratings
GROUP BY movie_id


-- Question 18 --
SELECT TOTAL(title), genres
FROM movies
GROUP BY genres


-- Question 19 --
SELECT AVG(rating), user_id
FROM ratings
GROUP BY user_id

-- Question 20 --
-- Question 21 --
-- Question 22 --
-- Question 23 --

-- IGNORE CREATE A NEW TABLE ONLY SELECTING