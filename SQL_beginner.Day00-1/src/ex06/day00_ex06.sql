
SELECT (SELECT per.name FROM person per	WHERE per.id = o.person_id) AS NAME,
	   (SELECT case when per.name = 'Denis' then true else false END FROM person per WHERE per.id = o.person_id) AS check_name
FROM person_order o
WHERE (o.menu_id = 13 OR o.menu_id = 14 OR o.menu_id = 18) AND o.order_date = '2022-01-07'