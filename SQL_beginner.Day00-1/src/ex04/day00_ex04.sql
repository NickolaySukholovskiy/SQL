SELECT per.name || ' (age:' || per.age || ',gender:' || chr(39) || per.gender || chr(39) || ',address:' || chr(39) || per.address || chr(39) || ')' AS person_information
FROM person per
ORDER BY person_information ASC