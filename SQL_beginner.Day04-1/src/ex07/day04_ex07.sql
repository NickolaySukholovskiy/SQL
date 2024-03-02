INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES(
	(SELECT max(id) FROM person_visits) + 1,
	(SELECT id FROM person WHERE person.name = 'Dmitriy'),
	(SELECT id FROM pizzeria WHERE pizzeria.name = 'Pizza Hut'),
	'2022-01-08');
	
INSERT INTO menu(id, pizzeria_id, pizza_name, price)
VALUES(
	(SELECT max(id) FROM menu) + 1,
	(SELECT id FROM pizzeria WHERE pizzeria.name = 'Pizza Hut'),
	'cheese pizza',
	600);

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats