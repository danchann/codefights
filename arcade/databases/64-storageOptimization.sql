/*Please add ; after each select statement*/
CREATE PROCEDURE storageOptimization()
BEGIN
	SELECT *
    FROM 
    (SELECT id as id, 'name' as column_name, name as value
     FROM workers_info
     WHERE name != ''
     UNION
    SELECT id, 'date_of_birth' as column_name, date_of_birth as value 
     FROM workers_info
     WHERE date_of_birth != ''
     UNION
    SELECT id, 'salary' as column_name, salary as value 
     FROM workers_info
     WHERE salary != ''
    ) x
    ORDER BY id, FIELD(column_name, 'name', 'date_of_birth', 'salary');
END