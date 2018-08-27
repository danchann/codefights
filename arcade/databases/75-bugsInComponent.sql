/*Please add ; after each select statement*/
CREATE PROCEDURE bugsInComponent()
BEGIN
	SELECT bug_num, b.title bug_title, c.title component_title, bcc1.bugs_in_component
    FROM BugComponent bc1 
    LEFT JOIN (SELECT COUNT(*) bugs_in_component, component_id
               FROM BugComponent GROUP BY component_id) bcc1 
    ON bc1.component_id = bcc1.component_id
    LEFT JOIN Bug b ON bc1.bug_num = b.num
    LEFT JOIN Component c ON bc1.component_id = c.id;
END