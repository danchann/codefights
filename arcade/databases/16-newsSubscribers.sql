/*Please add ; after each select statement*/
CREATE PROCEDURE newsSubscribers()
BEGIN
    SELECT DISTINCT subscriber 
    FROM 
        ( 
            SELECT * FROM full_year
            UNION
            SELECT * FROM half_year
        ) X
    WHERE newspaper LIKE '%daily%'
    ORDER BY subscriber;
END