INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES ((SELECT COUNT(id)
		 FROM person_order) + 1, (SELECT person.id
								  FROM person
								  WHERE person.name = 'Denis'), (SELECT menu.id
																 FROM menu
																 WHERE menu.pizza_name = 'sicilian pizza'), '2022-02-24'),
	   ((SELECT COUNT(id)
		 FROM person_order) + 2, (SELECT person.id
							  	  FROM person
							  	  WHERE person.name = 'Irina'), (SELECT menu.id
																 FROM menu
																 WHERE menu.pizza_name = 'sicilian pizza'), '2022-02-24')