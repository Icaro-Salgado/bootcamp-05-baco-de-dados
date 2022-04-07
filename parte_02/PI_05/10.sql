-- 10. Verifique se o índice foi criado corretamente.
SELECT tablename, indexname, indexdef
FROM pg_indexes
WHERE tablename = 'movies';