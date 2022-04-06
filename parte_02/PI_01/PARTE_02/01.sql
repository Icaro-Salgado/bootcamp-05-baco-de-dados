-- Mostrar o título e o nome do gênero de todas as séries.
SELECT s.title, g.name
FROM series s
         INNER JOIN genres g on s.genre_id = g.id