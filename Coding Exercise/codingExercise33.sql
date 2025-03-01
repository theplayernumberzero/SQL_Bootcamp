CREATE PROCEDURE emp_swap(emp1 INT, emp2 INT)
LANGUAGE plpgsql
AS
$$
DECLARE
salary1 DECIMAL(8, 2);
salary2 DECIMAL(8, 2);
position1 TEXT,
position2 TEXT,
BEGIN
--Store values in variable
SELECT salary 
INTO salary1
FROM employee
WHERE emp_id = emp1;

SELECT salary 
INTO salary2
FROM employee
WHERE emp_id = emp22;

SELECT position_title
INTO position1
FROM employee
WHERE emp_id = emp1;

SELECT position_title
INTO position2
FROM employee
WHERE emp_id = emp22;

--UPDATE salary
UPDATE employee
SET salary = salary2
WHERE emp_id = emp1

UPDATE employee
SET salary = salary1
WHERE emp_id = emp22

--UPDATE Titles
UPDATE employee
SET position_title = position2
WHERE emp_id = emp1

UPDATE employee
SET position_title = position1
WHERE emp_id = emp2

COMMIT;
END;
$$

SELECT * FROM employee

CALL emp_swap(1,2)

SELECT * FROM employee