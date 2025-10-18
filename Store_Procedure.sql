-- 1.) Forecast Accuracy Report
CREATE DEFINER=`root`@`localhost` PROCEDURE `forecast_accuracy_report` (
    IN in_fiscal_year INT
)
BEGIN
    WITH forecast_err_table AS (
        SELECT
            s.customer_code AS customer_code,
            c.customer AS customer_name,
            c.market AS market,
            SUM(s.sold_quantity) AS total_sold_qty,
            SUM(s.forecast_quantity) AS total_forecast_qty,
            SUM(s.forecast_quantity - s.sold_quantity) AS net_error,
            ROUND(SUM(s.forecast_quantity - s.sold_quantity) * 100 / SUM(s.forecast_quantity), 1) AS net_error_pct,
            SUM(ABS(s.forecast_quantity - s.sold_quantity)) AS abs_error,
            ROUND(SUM(ABS(s.forecast_quantity - s.sold_quantity)) * 100 / SUM(s.forecast_quantity), 2) AS abs_error_pct
        FROM fact_act_est s
        JOIN dim_customer c
            ON s.customer_code = c.customer_code
        WHERE s.fiscal_year = in_fiscal_year
        GROUP BY customer_code
    )
    SELECT 
        *,
        IF(abs_error_pct > 100, 0, 100.0 - abs_error_pct) AS forecast_accuracy
    FROM forecast_err_table
    ORDER BY forecast_accuracy DESC;
END;




-- 2.) Get Market Bedge
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_bedge` (
    IN in_market VARCHAR(45),
    IN in_fiscal_year INT,
    OUT bedge VARCHAR(10)
)
BEGIN
    DECLARE qty INT DEFAULT 0;

    -- Default market to India if not provided
    IF in_market = "" THEN 
        SET in_market = "India";
    END IF;

    -- Calculate total sold quantity for the given market and year
    SELECT SUM(s.sold_quantity) INTO qty
    FROM fact_sales_monthly s
    JOIN dim_customer c 
        ON s.customer_code = c.customer_code
    WHERE s.fiscal_year = in_fiscal_year 
      AND c.market = in_market
    GROUP BY c.market;

    -- Assign bedge based on quantity sold
    IF qty > 5000000 THEN 
        SET bedge = "Gold";
    ELSE 
        SET bedge = "Silver";
    END IF;
END;




-- 3.) Get Top N customers by Net Sales
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_customer_by_net_sales` (
    IN in_fiscal_year INT,
    IN in_market VARCHAR(45),
    IN in_topn INT
)
BEGIN
    -- Get top N customers by net sales for a given fiscal year and market
    SELECT 
        c.customer,
        ROUND(SUM(s.net_sales) / 1000000, 2) AS net_sales_millions
    FROM net_sales s
    JOIN dim_customer c 
        ON s.customer_code = c.customer_code
    WHERE s.fiscal_year = in_fiscal_year 
      AND s.market = in_market
    GROUP BY c.customer
    ORDER BY net_sales_millions DESC
    LIMIT in_topn;
END;




-- 4.) Get Top N products per Division by Quantity Sold
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_products_per_division_by_qty_sold` (
    IN in_fiscal_year INT,
    IN in_topn INT
)
BEGIN
    -- Step 1: Aggregate sold quantity per product within each division
    WITH cte1 AS (
        SELECT
            p.division,
            p.product,
            SUM(s.sold_quantity) AS total_qty
        FROM fact_sales_monthly s
        JOIN dim_product p
            ON p.product_code = s.product_code
        WHERE s.fiscal_year = in_fiscal_year
        GROUP BY p.division, p.product
    ),

    -- Step 2: Rank products within each division by quantity sold
    cte2 AS (
        SELECT 
            *,
            DENSE_RANK() OVER (PARTITION BY division ORDER BY total_qty DESC) AS drnk
        FROM cte1
    )

    -- Step 3: Select top N products per division
    SELECT 
        division,
        product,
        total_qty,
        drnk
    FROM cte2
    WHERE drnk <= in_topn;
END;




-- 5.) Monthly Gross Sales Based on Year
CREATE DEFINER=`root`@`localhost` PROCEDURE `monthly_gross_sales_based_on_year` (
    IN in_customer_code TEXT,
    IN in_fiscal_year INT
)
BEGIN
    -- Get monthly gross sales for given customer(s) in a specific fiscal year
    SELECT 
        s.date,
        SUM(s.sold_quantity) AS total_sold_units,
        ROUND(SUM(s.sold_quantity * g.gross_price) / 1000000, 2) AS total_gross_sales_million
    FROM fact_sales_monthly s
    JOIN dim_product p 
        ON s.product_code = p.product_code
    JOIN fact_gross_price g 
        ON s.product_code = g.product_code 
       AND s.fiscal_year = g.fiscal_year
    WHERE FIND_IN_SET(s.customer_code, in_customer_code) > 0
      AND s.fiscal_year = in_fiscal_year
    GROUP BY s.date
    ORDER BY s.date ASC;
END;





-- 6.) Top N markets by Net Sales
CREATE DEFINER=`root`@`localhost` PROCEDURE `top_n_markets_by_net_sales`(
    IN in_fiscal_year INT,
    IN in_topn INT
)
BEGIN
    SELECT 
        market,
        ROUND(SUM(net_sales) / 1000000, 2) AS net_sales_millions
    FROM net_sales
    WHERE fiscal_year = in_fiscal_year
    GROUP BY market
    ORDER BY net_sales_millions DESC
    LIMIT in_topn;
END
