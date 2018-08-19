/*Please add ; after each select statement*/
CREATE PROCEDURE closestCells()
BEGIN
	SELECT a.id as id1,
    (
        SELECT id
        FROM positions b
        WHERE a.id != b.id
        ORDER BY ST_Distance(Point(a.x,a.y), Point(b.x,b.y)) limit 1
    ) AS id2
    FROM positions a
    ;
END