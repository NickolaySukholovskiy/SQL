SELECT pi.name, pi.rating
FROM pizzeria pi
WHERE rating >= 3.5 AND rating <= 5
ORDER BY rating;

SELECT pi.name, pi.rating
FROM pizzeria pi
WHERE rating BETWEEN 3.5 AND 5
ORDER BY rating;
