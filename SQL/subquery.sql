


Delimiter $$
CREATE TRIGGER newname
BEFORE DELETE
ON employees
FOR EACH ROW
BEGIN
   IF OLD.emp_name = 'Kumar' THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Managers cannot be deleted';
   END IF;
END $$

Delimiter ;

