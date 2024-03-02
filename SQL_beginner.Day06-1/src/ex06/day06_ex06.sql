CREATE SEQUENCE seq_person_discounts
OWNED BY person_discounts.id;

SELECT setval('seq_person_discounts', (SELECT MAX(id)
									   FROM person_discounts));

ALTER TABLE person_discounts
ALTER COLUMN id SET DEFAULT NEXTVAL('seq_person_discounts');

INSERT INTO person_discounts(person_id, pizzeria_id, discount)
VALUES (1, 2, 10.5);