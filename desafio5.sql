SELECT  
song_name AS cancao,
COUNT(s.song_id) AS reproducoes

FROM SpotifyClone.songs AS s
JOIN SpotifyClone.reproductions AS r
ON s.song_id = r.song_id

GROUP BY cancao
ORDER BY
reproducoes DESC, 
cancao ASC
LIMIT 2;
