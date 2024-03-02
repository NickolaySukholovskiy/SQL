SELECT DISTINCT person.name
FROM person_order
-- JOIN menu ON menu.id = person_order.menu_id
JOIN person ON person.id = person_order.person_id
ORDER BY 1;