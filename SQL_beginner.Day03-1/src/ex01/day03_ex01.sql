SELECT menu.id
FROM menu
EXCEPT
SELECT menu.id
FROM menu
WHERE menu.id IN (SELECT person_order.menu_id
				 FROM person_order)
ORDER BY 1