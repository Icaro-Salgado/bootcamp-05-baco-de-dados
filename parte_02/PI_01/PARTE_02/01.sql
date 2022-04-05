SELECT s.title, g.name
FROM series s
INNER JOIN genres g on s.genre_id = g.id