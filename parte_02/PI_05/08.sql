-- 8. Obtenha a lista de atores cujo filme favorito ganhou mais de 3 prêmios.
SELECT DISTINCT first_name, last_name
FROM actors
         LEFT JOIN movies on movies.id = actors.favorite_movie_id
WHERE movies.awards > 3;