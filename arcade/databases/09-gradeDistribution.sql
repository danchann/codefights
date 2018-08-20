/*Please add ; after each select statement*/
CREATE PROCEDURE gradeDistribution()
BEGIN
	SELECT Name, ID
    FROM Grades
    WHERE final>(midterm1+midterm2)/2
    ORDER BY LEFT(name,3);
END