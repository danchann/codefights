/*Please add ; after each select statement*/
CREATE PROCEDURE checkExpenditure()
BEGIN
	SELECT id, IF(SUM(expenditure_sum) - value < 0 , 0, SUM(expenditure_sum) - value) as loss
    From allowable_expenditure, expenditure_plan
    WHERE WEEK(monday_date) BETWEEN left_bound AND right_bound
    GROUP BY id;
END