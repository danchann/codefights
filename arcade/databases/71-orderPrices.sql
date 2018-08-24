DROP FUNCTION IF EXISTS get_total;
CREATE FUNCTION get_total(items VARCHAR(45)) RETURNS INT DETERMINISTIC
BEGIN
    SET @items = REPLACE(items, ';', ',');
    RETURN (
        SELECT SUM(price) 
        FROM item_prices 
        WHERE FIND_IN_SET(id, @items)
    );
END;

CREATE PROCEDURE orderPrices()
BEGIN
    SELECT id, buyer, get_total(items) AS total_price
    FROM orders
    ORDER BY id;
END;
