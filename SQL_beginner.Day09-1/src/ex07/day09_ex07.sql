CREATE FUNCTION func_minimum(VARIADIC parr NUMERIC[])
	RETURNS NUMERIC
	LANGUAGE PLPGSQL
	AS
$$
DECLARE 
	min_val NUMERIC := parr[1];
BEGIN
	FOR i IN 2..array_upper(parr, 1)
	LOOP
		IF min_val > parr[i] THEN min_val = parr[i];
		END IF;
	END LOOP;
	RETURN min_val;
END;
$$;

SELECT DISTINCT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);
