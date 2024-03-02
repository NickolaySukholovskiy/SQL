WITH chees_piz_id AS (SELECT po.person_id AS "id"
					  FROM person_order po
					  WHERE po.menu_id IN (SELECT menu.id
										   FROM menu
										   WHERE menu.pizza_name = 'cheese pizza')),
 pep_pizza_id AS (SELECT po.person_id AS "id"
					  FROM person_order po
					  WHERE po.menu_id IN (SELECT menu.id
										   FROM menu
										   WHERE menu.pizza_name = 'pepperoni pizza'))

SELECT per.name
FROM (SELECT person.id, person.name
	  FROM person
	  WHERE person.gender = 'female') AS per
WHERE per.id IN (SELECT ch.id
						 FROM chees_piz_id ch
						 JOIN pep_pizza_id pe ON pe.id = ch.id)
ORDER BY 1