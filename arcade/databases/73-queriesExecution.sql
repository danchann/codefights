/*Please add ; after each select statement*/
CREATE PROCEDURE queriesExecution()
BEGIN
    SET @a = (SELECT GROUP_CONCAT(CONCAT('select "', 
                   query_name, 
                   '" query_name, (', 
                   code,
                   ') val')
                          separator ' union ') 
            FROM queries);
    
    prepare q from  @a;
    execute q;
END