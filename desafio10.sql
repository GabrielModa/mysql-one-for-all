SELECT 
s.song_name AS nome,
COUNT(r.song_id) AS reproducoes

FROM SpotifyClone.songs AS s
JOIN SpotifyClone.reproductions AS r
ON s.song_id = r.song_id

JOIN SpotifyClone.users AS u
ON u.user_id = r.user_id

JOIN SpotifyClone.plans AS p
ON p.plan_id = u.plan_id
WHERE p.plan_name = 'gratuito' OR  p.plan_name = 'pessoal'

GROUP BY nome
ORDER BY reproducoes DESC,
nome ASC