CREATE OR REPLACE FUNCTION fnc_fibonacci(IN elem_pos INT DEFAULT 10)
	RETURNS SETOF INT 
	LANGUAGE PLPGSQL
	AS
$$
DECLARE 
	val_1 NUMERIC := 0;
	val_2 NUMERIC := 1;
BEGIN
	IF elem_pos = 0 THEN RETURN NEXT val_2;
	END IF;
	WHILE val_2 < elem_pos  LOOP
		RETURN NEXT val_2;
		SELECT val_2, val_1 + val_2 INTO val_1, val_2;
	END LOOP;
END;
$$;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci(0);
select * from fnc_fibonacci();