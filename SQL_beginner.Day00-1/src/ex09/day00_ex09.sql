SELECT (SELECT per.name
		FROM person per
		WHERE per.id = pv.person_id) AS person_name,
	   (SELECT pi.name
	    FROM pizzeria pi
	    WHERE pi.id = pv.pizzeria_id) AS pizzeria_name
FROM (SELECT *
	  FROM person_visits p_v
	  WHERE p_v.visit_date BETWEEN '2022-01-07' AND '2022-01-09') AS pv
ORDER BY person_name ASC, pizzeria_name DESC 