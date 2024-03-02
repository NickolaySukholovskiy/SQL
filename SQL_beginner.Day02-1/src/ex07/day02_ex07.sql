WITH new_table AS (SELECT po.menu_id AS "id"
				   FROM person_order po
				   WHERE po.order_date = '2022-01-08' AND po.person_id = (SELECT per.id
																		  FROM person per
																		  WHERE per.name = 'Denis'))
																		  
SELECT (SELECT pizzeria.name
	    FROM pizzeria
	    WHERE pizzeria.id = menu.pizzeria_id)
FROM menu, new_table
WHERE menu.id = new_table.id AND menu.price <= 800