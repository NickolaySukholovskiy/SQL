SELECT DISTINCT to_char(new_table.date, 'YYYY-MM-DD') AS missing_date
FROM (SELECT GENERATE_SERIES('2022-01-01'::timestamp, '2022-01-10', '1 day') AS date) AS new_table
LEFT JOIN (SELECT DISTINCT person_visits.visit_date AS date
	  FROM person_visits
	  WHERE person_visits.person_id = 1 OR person_visits.person_id = 2) AS dates_of_1_and_2 ON new_table.date = dates_of_1_and_2.date
WHERE dates_of_1_and_2 IS NULL
ORDER BY missing_date ASC