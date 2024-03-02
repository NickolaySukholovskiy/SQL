CREATE FUNCTION fnc_person_visits_and_eats_on_date(IN pperson varchar DEFAULT 'Dmitriy', 
												   IN pprice numeric DEFAULT 500,
												   IN pdate date DEFAULT '2022-01-08')
	RETURNS TABLE(pizzeria_name varchar)
	LANGUAGE PLPGSQL
	AS
$$
BEGIN
	RETURN QUERY
	SELECT DISTINCT pizzeria.name
	FROM pizzeria
	JOIN menu ON menu.pizzeria_id = pizzeria.id
	JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
	WHERE person_visits.visit_date = pdate AND menu.price < pprice AND person_visits.person_id = (SELECT id
																								  FROM person
																								  WHERE name = pperson);
END;
$$;

SELECT * FROM fnc_person_visits_and_eats_on_date(pperson := 'Andrey',
												 pprice := 900,
												 pdate := '2022-01-01');
SELECT * FROM fnc_person_visits_and_eats_on_date();