-- 4. Modifique a tabela de atores para que pelo menos um ator tenha o filme adicionado no ponto 1 como favorito.
UPDATE actors
SET favorite_movie_id = (SELECT id FROM genres WHERE name = 'Comercial trash')
WHERE id = 1;