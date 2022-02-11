SELECT
u.user_name AS usuario,
COUNT(r.user_id) AS qtde_musicas_ouvidas,
ROUND(SUM(s.duration_seconds) / 60, 2) AS total_minutos

FROM SpotifyClone.users AS u
JOIN SpotifyClone.reproductions AS r
ON u.user_id = r.user_id

JOIN SpotifyClone.songs AS s
ON s.song_id = r.song_id

group by usuario
ORDER BY usuario;