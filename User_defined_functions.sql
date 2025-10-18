-- 1.) Get the Fiscal Year any Date
CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_year`(
calendar_date DATE
) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE fiscal_year INT ;
SET fiscal_year=YEAR(date_add(calendar_date,INTERVAL 4 MONTH));
RETURN fiscal_year;
END



  
-- 2.) Get Quarter
CREATE DEFINER=`root`@`localhost` FUNCTION `get_quarter`(
    calendar_date DATE
) RETURNS CHAR(2) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE month_num TINYINT;
    DECLARE quarter CHAR(2);

    SET month_num = MONTH(calendar_date);

    CASE 
        WHEN month_num IN (9, 10, 11) 
            THEN SET quarter = 'Q1';
        WHEN month_num IN (12, 1, 2) 
            THEN SET quarter = 'Q2';
        WHEN month_num IN (3, 4, 5) 
            THEN SET quarter = 'Q3';
        ELSE 
            SET quarter = 'Q4';
    END CASE;

    RETURN quarter;
END;
