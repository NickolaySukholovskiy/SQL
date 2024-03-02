(SELECT per.name AS object_name
FROM person per
ORDER BY per.name ASC)
UNION ALL
(SELECT menu.pizza_name AS object_name
FROM menu
ORDER BY menu.pizza_name ASC)
