/*Please add ; after each select statement*/
CREATE PROCEDURE findTable()
BEGIN
    SELECT 
        TABLE_NAME AS tab_name,
        COLUMN_NAME AS col_name,
        DATA_TYPE AS data_type
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME LIKE BINARY 'e%s'
    ORDER BY tab_name, col_name;
END