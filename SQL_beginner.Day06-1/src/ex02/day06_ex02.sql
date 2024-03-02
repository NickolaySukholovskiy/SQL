SELECT person.name, pizza_name, price, (price * (100 - discount) / 100)::INT AS discount_price, pizzeria.name
FROM person_order po
JOIN menu ON menu.id = po.menu_id 
JOIN person ON person.id = po.person_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
JOIN person_discounts ON person_discounts.person_id = po.person_id AND person_discounts.pizzeria_id = menu.pizzeria_id
ORDER BY 1, 2