SELECT t1.name
FROM v_persons_female t1
UNION
SELECT t2.name
FROM v_persons_male t2
ORDER BY 1