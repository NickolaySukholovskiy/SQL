SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name, person_visits.visit_date
FROM person_visits
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE (menu.price BETWEEN 800 AND 1000) AND person_visits.person_id = (SELECT person.id
																	   FROM person
																	   WHERE person.name = 'Kate')
ORDER BY 1, 2, 3