/*Please add ; after each select statement*/
CREATE PROCEDURE salaryDifference()
BEGIN
    SET @mx = (SELECT COUNT(salary) 
               FROM employees
              WHERE salary = (SELECT MAX(salary) FROM employees));
    SET @mn = (SELECT COUNT(salary) 
               FROM employees
               WHERE salary = (SELECT MIN(salary) FROM employees));
	SELECT IFNULL((MAX(salary) * @mx) - (MIN(salary) * @mn), 0) AS difference
    FROM  employees;
END