SELECT menu.id AS object_id, menu.pizza_name AS object_name
FROM menu
UNION ALL
SELECT per.id AS object_id, per.name AS object_name
FROM person per
ORDER BY object_id ASC, object_name ASC