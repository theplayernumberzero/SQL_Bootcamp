CREATE FUNCTION my_custom_func(p1 INT, p2 INT)
RETURNS INT
LANGUAGE plpgsql, [sql|c|...]
AS 
$$
DECLARE 
c3 INT;
BEGIN
SELECT p1 + p2 + 10;
INTO c3;
RETURN c3;
END;
$$