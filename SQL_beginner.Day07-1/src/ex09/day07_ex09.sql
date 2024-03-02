SELECT person.address,
	   ROUND(MAX(age)::NUMERIC - MIN(age)::NUMERIC/MAX(age), 2) AS formula,
	   ROUND(AVG(age), 2) AS average,
	   (CASE 
		WHEN ROUND(MAX(age)::NUMERIC - MIN(age)::NUMERIC/MAX(age), 2) > ROUND(AVG(age), 2) THEN 'true'
		ELSE 'false'
	    END)
FROM person_order
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
JOIN person ON person.id = person_order.person_id
GROUP BY 1
ORDER BY 1