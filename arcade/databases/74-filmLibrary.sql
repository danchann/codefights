/*Please add ; after each select statement*/
CREATE PROCEDURE filmLibrary()
BEGIN
    SELECT actor_ages.*
    FROM actor_ages
    JOIN starring_actors USING(actor)
    JOIN movies ON movie = movie_name
    JOIN (
        SELECT genre
        FROM movies
        GROUP BY genre
        ORDER BY COUNT(movie) DESC
        LIMIT 1
        ) a USING(genre)
    ORDER BY age DESC, actor;
END