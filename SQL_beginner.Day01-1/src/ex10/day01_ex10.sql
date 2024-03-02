SELECT person.name, menu.pizza_name, pizzeria.name
FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY person.name ASC, pizzeria.name ASC, menu.pizza_name ASC