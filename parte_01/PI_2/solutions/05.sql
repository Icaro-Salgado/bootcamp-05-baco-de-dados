-- Mostrar o título dos filmes, a classificação e os prêmios dos filmes com classificação
-- superior a 7,5 e com mais de dois prêmios.
SELECT title, rating, awards
FROM movies
WHERE awards > 2
  AND rating > 7.5;
