SELECT po.order_date, (per.name || ' (age:' || per.age || ')') AS person_information
FROM (SELECT person.id AS person_id, person.name, person.age
    FROM person) AS per
NATURAL RIGHT JOIN person_order po
ORDER BY po.order_date ASC, person_information ASC