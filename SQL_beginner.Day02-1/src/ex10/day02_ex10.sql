WITH new_table AS (SELECT per.id AS "id", per.name AS "name", per.address AS address
FROM person per
ORDER BY 3, 2)

SELECT t1.name, t2.name, t1.address
FROM new_table t1
JOIN new_table t2 ON t1 > t2 AND t1.address = t2.address
ORDER BY 1, 2, 3