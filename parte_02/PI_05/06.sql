-- 6. Elimine dessa tabela temporária todos os filmes que ganharam menos de 5 prêmios.
DELETE
FROM temp_movies
WHERE awards < 5;