SELECT po.order_date, (per.name || ' (age:' || per.age || ')') AS person_information
FROM person_order po
JOIN person per ON po.person_id = per.id
ORDER BY po.order_date ASC, person_information ASC