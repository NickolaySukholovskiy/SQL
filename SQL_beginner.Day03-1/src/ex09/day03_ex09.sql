INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES ((SELECT COUNT(person_visits.id)
		 FROM person_visits) + 1, (SELECT person.id
						 		   FROM person
								   WHERE person.name = 'Denis'), (SELECT pizzeria.id
																  FROM pizzeria
															  	  WHERE pizzeria.name = 'Dominos'), '2022-02-24'),
		((SELECT COUNT(person_visits.id)
		 FROM person_visits) + 2, (SELECT person.id
						  		   FROM person
						  		   WHERE person.name = 'Irina'), (SELECT pizzeria.id
														 		  FROM pizzeria
																  WHERE pizzeria.name = 'Dominos'), '2022-02-24')