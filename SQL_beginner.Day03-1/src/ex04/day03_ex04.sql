SELECT pizzeria.name
FROM pizzeria
WHERE (SELECT COUNT(person.gender)
	   FROM person_order
	   JOIN person ON person.id = person_order.person_id
	   JOIN menu ON menu.id = person_order.menu_id
	   WHERE person.gender = 'male' AND pizzeria.id = menu.pizzeria_id) = 0
EXCEPT
SELECT pizzeria.name
FROM pizzeria
WHERE (SELECT COUNT(person.gender)
	   FROM person_order
	   JOIN person ON person.id = person_order.person_id
	   JOIN menu ON menu.id = person_order.menu_id
	   WHERE person.gender = 'female' AND pizzeria.id = menu.pizzeria_id) = 0
ORDER BY 1