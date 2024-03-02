WITH new_per_or AS (SELECT menu_id
					FROM person_order
					WHERE person_id IN (SELECT per.id
									   FROM person per
									   WHERE per.name = 'Denis' OR per.name = 'Anna'))

SELECT menu.pizza_name, (SELECT pizzeria.name
						 FROM pizzeria
						 WHERE pizzeria.id = menu.pizzeria_id)
FROM menu, new_per_or
WHERE menu.id IN (new_per_or.menu_id)
ORDER BY 1, 2