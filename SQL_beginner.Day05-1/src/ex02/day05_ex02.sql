CREATE INDEX idx_person_name ON person(UPPER(name));

SET ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYZE
SELECT person.name
FROM person
WHERE UPPER(name) = 'Denis'