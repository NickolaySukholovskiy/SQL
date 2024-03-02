SELECT person.name, menu.pizza_name, menu.price, (menu.price * 0.9)::integer AS discount_price
FROM menu
JOIN person_order ON person_order.menu_id = menu.id
JOIN person ON person.id = person_order.person_id
ORDER BY 1, 2