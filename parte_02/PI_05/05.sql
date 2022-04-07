-- 5. Crie uma tabela temporária da tabela filmes.
CREATE TEMPORARY TABLE temp_movies AS
SELECT *
FROM movies;