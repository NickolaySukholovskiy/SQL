SELECT per.id, per.name,
	   (case when per.age BETWEEN 10 AND 20 then 'interval #1'
	   else case when per.age > 20 AND per.age < 24 then 'interval #2'
	   else 'interval #3' END END) AS interval_info
FROM person per
ORDER BY interval_info ASC