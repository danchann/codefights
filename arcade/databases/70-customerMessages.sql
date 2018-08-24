DROP FUNCTION IF EXISTS response;
CREATE FUNCTION response(name VARCHAR(40)) RETURNS VARCHAR(200) DETERMINISTIC
BEGIN
    SET @loc = LOCATE(' ', name, 1);
    SET @str = LCASE(name);
    SET @str = INSERT(@str, 1, 1, UCASE(SUBSTRING(@str, 1, 1)));
    SET @str = INSERT(@str, @loc+1, 1, UCASE(SUBSTRING(@str, @loc+1, 1)));
    RETURN CONCAT("Dear ", @str, "! We received your message and will process it as soon as possible. Thanks for using our service. FooBar On! - FooBarIO team.");
END;

CREATE PROCEDURE customerMessages()
BEGIN
    SELECT id, name, response(name) AS response
    FROM customers;
END;