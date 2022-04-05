-- Mostrar o título dos filmes que saíram entre 2004 e 2008.
SELECT title
FROM movies
WHERE release_date BETWEEN '20040101' AND '20081231';
