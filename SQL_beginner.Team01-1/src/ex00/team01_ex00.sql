SELECT COALESCE("user".name, NULL, 'not defined'),
	   COALESCE(lastname, NULL, 'not defined'),
	   type,
	   SUM(money) AS volume,
	   COALESCE(last_currency_table.name, NULL, 'not defined') AS currency_name,
	   COALESCE(rate_to_usd, NULL, 1) AS last_rate_to_usd,
	   SUM(money) * COALESCE(rate_to_usd, NULL, 1) AS total_volume_in_usd
FROM "user"
FULL JOIN balance ON balance.user_id = "user".id
FULL JOIN (SELECT *
		   FROM currency c1
		   WHERE c1.updated = (SELECT MAX(c2.updated)
							   FROM currency c2)) AS last_currency_table ON last_currency_table.id = balance.currency_id
GROUP BY "user".name, lastname, type, last_currency_table.name, rate_to_usd
ORDER BY 1 DESC, 2, 3