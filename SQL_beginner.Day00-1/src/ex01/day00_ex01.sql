SELECT per.name, per.age
FROM person per
WHERE per.address = 'Kazan' AND per.gender = 'female'
ORDER BY per.name
