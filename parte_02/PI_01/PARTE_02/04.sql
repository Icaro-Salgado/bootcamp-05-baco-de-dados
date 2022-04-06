-- Mostrar o nome de todos os gêneros e o número total de filmes de cada um, desde
-- que seja maior ou igual a 3.

SELECT g.name, COUNT(m.genre_id)
FROM movies m
         INNER JOIN genres g on g.id = m.genre_id
GROUP BY g.name
HAVING COUNT(m.genre_id) >= 3;
