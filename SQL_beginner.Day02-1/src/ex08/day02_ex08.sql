WITH new_table_menu AS (SELECT po.person_id AS "id"
					    FROM person_order po
					    WHERE po.menu_id IN (SELECT menu.id
										    FROM menu
										    WHERE menu.pizza_name = 'pepperoni pizza' OR
										   		  menu.pizza_name = 'mushroom pizza'))

SELECT per.name
FROM (SELECT person.id, person.name
	  FROM person
	  WHERE person.gender = 'male' AND 
	  (person.address = 'Moscow' OR person.address = 'Samara')) AS per, new_table_menu
WHERE new_table_menu.id = per.id
ORDER BY 1 DESC