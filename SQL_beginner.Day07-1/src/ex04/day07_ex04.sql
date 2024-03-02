WITH num_of_visits AS (SELECT person.name, COUNT(*) AS count_of_visits
					   FROM person_visits
					   JOIN person ON person.id = person_visits.person_id
					   GROUP BY person.id)
				   
SELECT *
FROM num_of_visits
ORDER BY 2 DESC
OFFSET 0 ROWS FETCH FIRST 1 ROWS ONLY