-- 3. Associe o filme do ponto 1. com o gênero criado no ponto 2.
UPDATE movies
SET genre_id = (SELECT id FROM genres WHERE name = 'Comercial trash')
WHERE title = 'Os vingadores 30';