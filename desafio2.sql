SELECT COUNT(DISTINCT songs.song_name) AS cancoes,
 COUNT(DISTINCT artists.artists_id) AS artistas,
 COUNT(DISTINCT albuns.album_id) AS albuns

FROM SpotifyClone.songs AS songs
INNER JOIN  SpotifyClone.albuns AS albuns
ON  albuns.album_id = songs.album_id

INNER JOIN  SpotifyClone.artists AS artists
ON artists.artists_id = albuns.artists_id;