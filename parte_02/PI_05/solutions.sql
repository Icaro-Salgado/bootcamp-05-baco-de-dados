-- Tendo o banco de dados movies_db.sql, faça:

-- 1. Adicione um filme à tabela de filmes.
INSERT INTO movies (id, title, rating, release_date, length, genre_id)
VALUES (22, 'Os vingadores 30', 1.0, '20220407', 120, null);


-- 2. Adicione um gênero à tabela de gêneros.
INSERT INTO genres (id, name, ranking)
VALUES (13, 'Comercial trash', 13);


-- 3. Associe o filme do ponto 1. com o gênero criado no ponto 2.
UPDATE movies
SET genre_id = (SELECT id FROM genres WHERE name = 'Comercial trash')
WHERE title = 'Os vingadores 30';


-- 4. Modifique a tabela de atores para que pelo menos um ator tenha o filme adicionado no ponto 1 como favorito.
UPDATE actors
SET favorite_movie_id = (SELECT id FROM genres WHERE name = 'Comercial trash')
WHERE id = 1;


-- 5. Crie uma tabela temporária da tabela filmes.
CREATE TEMPORARY TABLE temp_movies AS
SELECT *
FROM movies;


-- 6. Elimine dessa tabela temporária todos os filmes que ganharam menos de 5 prêmios.
DELETE
FROM temp_movies
WHERE awards < 5;


-- 7. Obtenha a lista de todos os gêneros que possuem pelo menos um filme.
SELECT DISTINCT name
FROM genres
         INNER JOIN movies on movies.genre_id = genres.id;


-- 8. Obtenha a lista de atores cujo filme favorito ganhou mais de 3 prêmios.
SELECT DISTINCT first_name, last_name
FROM actors
         LEFT JOIN movies on movies.id = actors.favorite_movie_id
WHERE movies.awards > 3;


-- 9. Crie um índice no nome na tabela de filmes.
CREATE INDEX ON movies (title);

-- 10. Verifique se o índice foi criado corretamente.
SELECT tablename, indexname, indexdef
FROM pg_indexes
WHERE tablename = 'movies';

-- 11. No banco de dados movies, haveria uma melhoria notável na criação de índices? Analise e justifique a resposta.
-- Depende da consulta que sempre é realizada, caso o mais buscado em queries seja o nome do filme, com certeza
-- a criação de um indicie em 'title' ajudaria. O correto é fazer uma análise do que costuma mais ser indexado.

-- 12. Em que outra tabela você criaria um índice e por quê? Justifique a resposta
-- genres, pois a tendência é consultarmos o tipo de filme pelo nome do genero e assim obter o id dele para salvar em novos filmes;
-- actors, pois as consultas em atores tendem a ser pelo nome e não pelo id.