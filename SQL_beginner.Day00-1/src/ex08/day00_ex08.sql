SELECT *
FROM person_order p_or
WHERE mod(p_or.id, 2) = 0
ORDER BY p_or.id