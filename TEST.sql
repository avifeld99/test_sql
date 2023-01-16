USE movies;

# 1
SELECT * FROM movie
WHERE runtime > 120;

# 2
SELECT * FROM movie
WHERE title LIKE '%teen%';

# 3
SELECT DISTINCT vote_average FROM movie;

# 4
SELECT title,
       revenue AS EURO,
       revenue * 1.11 AS POUND
FROM movie;

# 5
SELECT COUNT(*) AS Gendercount FROM movie_cast
GROUP BY gender_id;

# 6
SELECT title FROM movie
JOIN movie_languages ON movie.movie_id = movie_languages.movie_id
WHERE language_role_id >= 2;

# 7
SELECT * FROM movie
JOIN movie_keywords ON movie.movie_id = movie_keywords.movie_id
JOIN keyword ON movie_keywords.keyword_id = keyword.keyword_id
WHERE keyword_name LIKE 'space opera' AND
      movie.title NOT LIKE 'star';

# 8
SELECT * FROM movie
JOIN movie_genres mg on movie.movie_id = mg.movie_id
JOIN genre g on mg.genre_id = g.genre_id
WHERE genre_name LIKE 'Horror';

# 9
SELECT * FROM movie
JOIN movie_genres mg on movie.movie_id = mg.movie_id
JOIN genre g on mg.genre_id = g.genre_id
WHERE genre_name LIKE '';

# 10
SELECT person_name, COUNT(movie_id) AS amount FROM person
JOIN movie_cast mc on person.person_id = mc.person_id
GROUP BY person_name
ORDER BY COUNT(movie_id) DESC
LIMIT 5;

# 11
SELECT * FROM movie
WHERE runtime > (SELECT AVG(runtime) FROM movie)
ORDER BY title;

# 12

# 13

# 14

# 15

# 16