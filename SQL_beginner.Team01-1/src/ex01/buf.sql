-- insert into currency values (100, 'EUR', 0.85, '2022-01-01 13:29');
-- insert into currency values (100, 'EUR', 0.79, '2022-01-08 13:29');

SELECT COALESCE("user".name, NULL, 'not defined'),
	   COALESCE(lastname, NULL, 'not defined'),
	   currency.name--,
-- 	   AS currency_in_usd
FROM "user"
JOIN balance ON balance.user_id = "user".id
JOIN currency ON currency.id = balance.currency_id