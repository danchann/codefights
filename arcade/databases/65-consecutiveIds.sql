/*Please add ; after each select statement*/
CREATE PROCEDURE consecutiveIds()
BEGIN
    SET @row = 0;
	SELECT id as oldId, @row := @row + 1 as newId
    FROM itemIds;
END