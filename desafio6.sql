SELECT 
ROUND(MIN(plan_value) , 2) AS faturamento_minimo,
ROUND(MAX(plan_value), 2) AS faturamento_maximo,
ROUND(AVG(p.plan_value) , 2) AS faturamento_medio,
ROUND(SUM(p.plan_value) , 2) AS faturamento_total


FROM SpotifyClone.plans AS p
JOIN SpotifyClone.users AS u
ON p.plan_id = u.plan_id