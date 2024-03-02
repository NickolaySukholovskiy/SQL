CREATE FUNCTION fnc_persons_female()
	RETURNS SETOF person
	LANGUAGE SQL
	AS
$$
	SELECT *
	FROM person
	WHERE gender = 'female';
$$;

CREATE FUNCTION fnc_persons_male()
	RETURNS SETOF person
	LANGUAGE SQL
	AS
$$
	SELECT *
	FROM person
	WHERE gender = 'male';
$$;

SELECT * FROM fnc_persons_male();
SELECT * FROM fnc_persons_female();