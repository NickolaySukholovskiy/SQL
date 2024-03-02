SELECT menu.pizza_name, (SELECT pizzeria.name
						FROM pizzeria
						WHERE pizzeria.id = menu.pizzeria_id), menu.price
FROM (SELECT *
	  FROM menu
	  WHERE menu.pizza_name = 'mushroom pizza' OR menu.pizza_name = 'pepperoni pizza') AS menu
ORDER BY 1, 2