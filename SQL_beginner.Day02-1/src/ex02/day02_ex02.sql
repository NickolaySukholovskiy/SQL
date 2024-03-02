SELECT COALESCE(person.name, NULL, '-') AS person_name, person_visits.visit_date, COALESCE(pizzeria.name, NULL, '-') AS pizzeria_name
FROM person
FULL JOIN (SELECT *
		   FROM person_visits
		   WHERE person_visits.visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS person_visits ON person_visits.person_id = person.id
FULL JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
ORDER BY person_name, person_visits.visit_date, pizzeria_name