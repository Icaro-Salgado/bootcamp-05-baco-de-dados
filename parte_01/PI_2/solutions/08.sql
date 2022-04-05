-- Mostrar os 5 melhores filmes com a classificação mais alta.
SELECT *
FROM movies
ORDER BY rating DESC
LIMIT 5;
