/*Please add ; after each select statement*/
CREATE PROCEDURE localCalendar()
BEGIN
	SELECT event_id, 
    IF(settings.hours=12, 
       DATE_FORMAT(DATE_ADD(date, INTERVAL settings.timeshift MINUTE), '%Y-%m-%d %h:%i %p'), 
       DATE_FORMAT(DATE_ADD(date, INTERVAL settings.timeshift MINUTE), '%Y-%m-%d %H:%i')) 
    AS formatted_date
    FROM events, settings
    WHERE events.user_id = settings.user_id;
END