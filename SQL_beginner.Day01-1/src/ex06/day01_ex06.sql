SELECT po.order_date AS action_date, (SELECT per.name
									  FROM person per
									  WHERE po.person_id = per.id) AS person_id
FROM person_order po
INTERSECT
SELECT pv.visit_date AS action_date, (SELECT per.name
									  FROM person per
									  WHERE pv.person_id = per.id) AS person_id
FROM person_visits pv
ORDER BY action_date ASC, person_id DESC