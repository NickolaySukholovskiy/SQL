INSERT INTO menu(id, pizzeria_id, pizza_name, price)
VALUES ((SELECT COUNT(menu.id)
	    FROM menu) + 1, (SELECT pizzeria.id
						 FROM pizzeria
						 WHERE pizzeria.name = 'Dominos'), 'sicilian pizza', 900)