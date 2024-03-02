SELECT person_id
FROM person_order
EXCEPT ALL
SELECT person_id
FROM person_visits