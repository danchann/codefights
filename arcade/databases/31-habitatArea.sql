/*Please add ; after each select statement*/
CREATE PROCEDURE habitatArea()
BEGIN
	SET @g :=(SELECT CONCAT("MULTIPOINT(", group_concat(x,' ',y SEPARATOR ','),")") FROM places);
    SELECT ST_AREA(ST_CONVEXHULL(ST_GeomFromText(@g))) AS area;    
END