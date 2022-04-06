-- Mostrar o título dos episódios, o nome e sobrenome dos atores que trabalham em
-- cada um deles.

SELECT e.title, a.first_name, a.last_name
FROM episodes e
         LEFT JOIN actor_episode ae on e.id = ae.episode_id
         LEFT JOIN actors a on a.id = ae.actor_id
ORDER BY e.title;