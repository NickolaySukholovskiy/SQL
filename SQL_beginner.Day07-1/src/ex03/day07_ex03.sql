SELECT pizzeria.name, COUNT(*) + (SELECT COUNT(*)
								  FROM person_visits
								  WHERE pizzeria.id = person_visits.pizzeria_id
								  GROUP BY person_visits.pizzeria_id) AS count 
FROM person_order
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY pizzeria.id
ORDER BY 2 DESC, 1