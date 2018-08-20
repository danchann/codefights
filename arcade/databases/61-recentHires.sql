/*Please add ; after each select statement*/
CREATE PROCEDURE recentHires()
BEGIN
SELECT name as names FROM 
 (
     (SELECT name, 1 as filter FROM 
      (
       SELECT name FROM pr_department 
       ORDER BY date_joined DESC 
       LIMIT 5
      ) a)
     UNION ALL
     (SELECT name, 2 as filter FROM 
      (
       SELECT name FROM it_department 
       ORDER BY date_joined DESC 
       LIMIT 5
      ) b) 
     UNION ALL
     (SELECT name, 3 as filter FROM 
      (
       SELECT name FROM sales_department 
       ORDER BY date_joined DESC 
       LIMIT 5
      ) c) 
  ) d
   ORDER BY filter, names;
END