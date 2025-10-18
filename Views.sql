-- 1.) Pre Invoice Discounts
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `pre_invoice_discounts` AS
SELECT 
    s.date AS date,
    s.fiscal_year AS fiscal_year,
    s.customer_code AS customer_code,
    c.market AS market,
    s.product_code AS product_code,
    p.product AS product,
    p.variant AS variant,
    s.sold_quantity AS sold_quantity,
    ROUND(s.sold_quantity * g.gross_price, 2) AS gross_price_total,
    pre.pre_invoice_discount_pct AS pre_invoice_discount_pct
FROM fact_sales_monthly s
JOIN dim_customer c 
    ON s.customer_code = c.customer_code
JOIN dim_product p 
    ON s.product_code = p.product_code
JOIN fact_gross_price g 
    ON s.product_code = g.product_code 
   AND g.fiscal_year = s.fiscal_year
JOIN fact_pre_invoice_deductions pre 
    ON s.customer_code = pre.customer_code 
   AND s.fiscal_year = pre.fiscal_year;




-- 2.) Post Invoice Discounts
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `post_invoice_discounts` AS
SELECT 
    s.date AS date,
    s.fiscal_year AS fiscal_year,
    s.customer_code AS customer_code,
    s.market AS market,
    s.product_code AS product_code,
    s.product AS product,
    s.variant AS variant,
    s.sold_quantity AS sold_quantity,
    s.gross_price_total AS gross_price_total,
    s.pre_invoice_discount_pct AS pre_invoice_discount_pct,
    ((1 - s.pre_invoice_discount_pct) * s.gross_price_total) AS net_invoice_sales,
    (post.discounts_pct + post.other_deductions_pct) AS post_deduction
FROM pre_invoice_discounts s
JOIN fact_post_invoice_deductions post
    ON s.date = post.date
   AND s.product_code = post.product_code
   AND s.customer_code = post.customer_code;




-- 3.) Net Sales
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `net_sales` AS
SELECT 
    post.date AS date,
    post.fiscal_year AS fiscal_year,
    post.customer_code AS customer_code,
    post.market AS market,
    post.product_code AS product_code,
    post.product AS product,
    post.variant AS variant,
    post.sold_quantity AS sold_quantity,
    post.gross_price_total AS gross_price_total,
    post.pre_invoice_discount_pct AS pre_invoice_discount_pct,
    post.net_invoice_sales AS net_invoice_sales,
    post.post_deduction AS post_deduction,
    ((1 - post.post_deduction) * post.net_invoice_sales) AS net_sales
FROM post_invoice_discounts AS post;




-- 4.) Gross Sales
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `gross_sales_view` AS
SELECT 
    s.date AS date,
    s.fiscal_year AS fiscal_year,
    s.customer_code AS customer_code,
    c.customer AS customer,
    c.market AS market,
    s.product_code AS product_code,
    p.product AS product,
    p.variant AS variant,
    s.sold_quantity AS sold_quantity,
    g.gross_price AS gross_price,
    (s.sold_quantity * g.gross_price) AS gross_price_total
FROM fact_sales_monthly s
JOIN dim_product p 
    ON s.product_code = p.product_code
JOIN dim_customer c 
    ON s.customer_code = c.customer_code
JOIN fact_gross_price g 
    ON s.product_code = g.product_code
   AND s.fiscal_year = g.fiscal_year;
