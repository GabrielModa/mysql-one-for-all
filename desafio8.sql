SELECT 
a.artist_name AS artista,
al.album_name AS album

FROM SpotifyClone.artists AS a
JOIN SpotifyClone.albuns as al
ON a.artists_id = al.artists_id  
WHERE a.artist_name = 'Walter Phoenix'

ORDER BY album