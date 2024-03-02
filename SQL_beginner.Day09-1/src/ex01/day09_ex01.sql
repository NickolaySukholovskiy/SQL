CREATE FUNCTION fnc_trg_person_update_audit()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
	AS
$$
BEGIN
	INSERT INTO person_audit(created, type_event, row_id, name, age, gender, address)
	VALUES(CURRENT_TIMESTAMP, 'U', NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
	RETURN NEW;
END;
$$;
	
CREATE TRIGGER trg_person_update_audit
	AFTER UPDATE ON person FOR EACH ROW
	EXECUTE PROCEDURE fnc_trg_person_update_audit();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;

SELECT * FROM person_audit;

