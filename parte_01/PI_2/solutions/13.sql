-- Mostrar o título dos filmes com classificação superior a 3, com mais de 1 prêmio e
-- com data de lançamento entre 1988 e 2009. Ordenar os resultados por
-- classificação.
SELECT title FROM movies WHERE rating > 3 AND awards > 1 AND release_date BETWEEN '19880101' AND '20091231' ORDER BY rating;
