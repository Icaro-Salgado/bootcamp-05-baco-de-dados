-- Mostrar o título de todas as séries e o número total de temporadas que cada uma delas possui.

SELECT series.title, COUNT(seasons.*) as seasons_count
FROM series
         INNER JOIN seasons
                    on series.id = seasons.serie_id
GROUP BY series.title;