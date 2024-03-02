WITH buf_table AS (
	SELECT person_id, pizzeria_id, COUNT(*)
	FROM person_order
	JOIN menu ON menu.id = person_order.menu_id
	GROUP BY 1, 2),
	discount_table AS (
	SELECT person_id, pizzeria_id, (CASE
									WHEN count = 1 THEN 10.5
									WHEN count = 2 THEN 22
									ELSE 30
								   	END) AS discount
	FROM buf_table)
									
INSERT INTO person_discounts(id, person_id, pizzeria_id, discount)
SELECT ROW_NUMBER() OVER(ORDER BY person_id) AS id, person_id, pizzeria_id, discount
FROM discount_table