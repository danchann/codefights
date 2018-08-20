/*Please add ; after each select statement*/
CREATE PROCEDURE dancingCompetition()
BEGIN
    SET @max1 = (SELECT MAX(first_criterion) FROM scores);
    SET @max2 = (SELECT MAX(second_criterion) FROM scores);
    SET @max3 = (SELECT MAX(third_criterion) FROM scores);
    
    SET @min1 = (SELECT MIN(first_criterion) FROM scores);
    SET @min2 = (SELECT MIN(second_criterion) FROM scores);
    SET @min3 = (SELECT MIN(third_criterion) FROM scores);

	SELECT *
    FROM scores
    WHERE if(first_criterion = @min1 || first_criterion = @max1, 1, 0) +                    if(second_criterion = @min2 or second_criterion = @max2, 1, 0) +
            if(third_criterion = @min3 or third_criterion = @max3, 1, 0) < 2;
END