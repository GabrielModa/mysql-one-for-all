SELECT 
COUNT(u.user_id) AS quantidade_musicas_no_historico

FROM SpotifyClone.users AS u
right join SpotifyClone.reproductions AS r
ON u.user_id = r.user_id
WHERE u.user_name = 'Bill'