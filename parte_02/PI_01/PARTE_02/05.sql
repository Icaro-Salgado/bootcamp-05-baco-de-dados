-- Mostrar apenas o nome e sobrenome dos atores que atuam em todos os filmes de Star Wars e que estes não se repitam.

SELECT DISTINCT a.first_name, a.last_name
FROM actor_movie am
         INNER JOIN actors a on a.id = am.actor_id
         INNER JOIN movies m on m.id = am.movie_id
WHERE m.title LIKE 'Guerra nas Estrelas%'