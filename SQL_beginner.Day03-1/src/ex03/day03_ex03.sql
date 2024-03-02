SELECT pizzeria.name
FROM pizzeria
WHERE (SELECT COUNT(person.gender)
	   FROM person_visits
	   JOIN person ON person.id = person_visits.person_id
	   WHERE person.gender = 'male' AND pizzeria.id = person_visits.pizzeria_id) !=
	   (SELECT COUNT(person.gender)
	   FROM person_visits
	   JOIN person ON person.id = person_visits.person_id
	   WHERE person.gender = 'female' AND pizzeria.id = person_visits.pizzeria_id)
ORDER BY 1