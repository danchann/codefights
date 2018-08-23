/*Please add ; after each select statement*/
CREATE PROCEDURE holidayEvent()
BEGIN
    SET @row = 0;
	SELECT DISTINCT IF(MOD((@row := @row + 1), 4) =0, buyer_name, '' ) as winners
    FROM purchases
    ORDER BY winners;
END