/*Please add ; after each select statement*/
CREATE PROCEDURE expressionsVerification()
BEGIN
	SELECT *
    FROM expressions
    WHERE 
        CASE 
            WHEN operation = '+' THEN a + b = c
            WHEN operation = '-' THEN a - b = c
            WHEN operation = '*' THEN a * b = c
            WHEN operation = '/' THEN a / b = c
        END
;
END