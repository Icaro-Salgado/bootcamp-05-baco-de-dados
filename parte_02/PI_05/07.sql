-- 7. Obtenha a lista de todos os gêneros que possuem pelo menos um filme.
SELECT DISTINCT name
FROM genres
         INNER JOIN movies on movies.genre_id = genres.id;