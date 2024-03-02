COMMENT ON COLUMN person_discounts.id IS 'Unique table identifier';
COMMENT ON COLUMN person_discounts.person_id IS 'Person''s ID, similar to the ID column in Person table';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Pizzeria''s ID, similar to the ID column in Pizzeria table';
COMMENT ON COLUMN person_discounts.discount IS 'Person''s discount in exact pizzeria';
COMMENT ON TABLE person_discounts IS 'This table consists of persons discounts in different pizzerias';