/*Please add ; after each select statement*/
CREATE PROCEDURE sunnyHolidays()
BEGIN
	SELECT holiday_date AS ski_date
    FROM holidays, weather
    WHERE sunny_date=holiday_date;
END