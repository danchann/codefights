/*Please add ; after each select statement*/
CREATE PROCEDURE routeLength()
BEGIN
	SELECT ROUND(SUM(ST_Distance(Point(a.x, a.y), Point(b.x, b.y))),9) as total
    FROM cities a
    JOIN cities b
        ON b.id = a.id + 1;
END