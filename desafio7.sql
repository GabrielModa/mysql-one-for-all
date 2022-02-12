SELECT 
a.artist_name AS artista,
al.album_name AS album,
COUNT(f.artists_id) AS seguidores

FROM  SpotifyClone.artists AS a
JOIN SpotifyClone.albuns AS al
ON a.artists_id = al.artists_id

JOIN SpotifyClone.followers AS f
ON f.artists_id = al.artists_id

GROUP BY album_id
ORDER BY seguidores desc,
artista ASC,
album ASC;