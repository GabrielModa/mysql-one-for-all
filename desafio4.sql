SELECT 
  user_name AS usuario,
IF(YEAR(MAX(reproduction_date)) >= 2021,
 'Usuário ativo', 'Usuário inativo' ) AS condicao_usuario

FROM SpotifyClone.users AS u
JOIN SpotifyClone.reproductions AS r
ON u.user_id = r.user_id  

GROUP BY usuario
ORDER BY usuario;