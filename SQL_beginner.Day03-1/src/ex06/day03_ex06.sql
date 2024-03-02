SELECT menu.pizza_name, (SELECT pizzeria.name
						 FROM pizzeria
						 WHERE pizzeria.id = menu.pizzeria_id) AS pizzeria_name_1,
						(SELECT pizzeria.name
						 FROM pizzeria
						 WHERE pizzeria.id = buf_menu.pizzeria_id) AS pizzeria_name_2, menu.price
FROM menu
JOIN menu buf_menu ON menu > buf_menu AND buf_menu.pizza_name = menu.pizza_name
WHERE buf_menu.price = menu.price AND buf_menu.pizzeria_id != menu.pizzeria_id
ORDER BY 1