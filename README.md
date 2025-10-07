# AtliQ_hardware_sales_finance_report

### 📝 Problem Statement

- Atliq Hardware is a hardware-based company that sells its products to other businesses across different markets worldwide. The company operates through multiple sales channels, including brick-and-mortar stores, e-commerce platforms, and direct distributors.

- The management team needs data-driven insights to understand customer performance, market trends, and overall sales efficiency. Although data is available for fiscal years 2018–2022, the focus of this analysis is on Fiscal Year 2021.

- My role was to analyze the sales, cost, and forecasting data using SQL queries and generate insights that support better decision-making for the business.

### 🔑 Key Terminologies :-

- Customer → Businesses that purchase products from Atliq, such as Amazon, Flipkart, Croma, Vijay Sales, etc.

- Market → Represents the country (e.g., India, Australia, USA) where Atliq sells its products.

- Platform →

  - Brick & Mortar :- Physical retail stores or stalls.

  - E-commerce :- Online platforms such as Amazon, Flipkart, etc.

- Channel →

   - Retailer :- Platforms like Amazon, Flipkart, and Croma.

   - Direct :- Atliq’s own stores, such as Atliq Exclusive or Atliq Store.

   - Distributor :- Well-known hardware specialists in each country who sell Atliq products further.

 - Forecast Accuracy → Measured by comparing the forecasted sales units against the actual sold quantity.

 - Fiscal Year (FY) → Runs from September to October (not January to December).

## 📊 Key Financial & Sales Terms – Atliq Hardware

This section explains the key financial and sales terminology used in our analysis. Each term is simplified with examples and formulas where applicable.

| **Term** | **Meaning** | **Formula / Example** |
|----------|------------|---------------------|
| **Gross Revenue / Gross Sales** | Total revenue generated from selling products **before any deductions** like discounts or costs. | *Example:* Sold 100 keyboards at $50 each → `Gross Revenue = 100 × 50 = $5000` |
| **Net Revenue / Net Sales** | Revenue left after subtracting **all discounts and deductions**. Shows actual money earned by Atliq. | *Example:* Gross Revenue = $5000, Discounts = $500 → `Net Sales = 5000 − 500 = 4500` |
| **Forecast Quantity** | The number of units the company **expects to sell** in a certain period. | *Example:* Forecast to sell 1000 laptops in Q1 → `Forecast Quantity = 1000` |
| **Sold Quantity** | The actual number of units sold in a given period. | *Example:* Sold 950 laptops in Q1 → `Sold Quantity = 950` |
| **Forecast Accuracy** | How close the forecast quantity is to the actual sold quantity. Higher % = better planning. | `Forecast Accuracy (%) = 100 - Absolute Error (%)`<br>*Example:* Forecast = 1000, Sold = 950 → Accuracy ≈ 95% |
| **Net Error** | Difference between forecasted and sold quantity; shows if forecast **overestimated or underestimated** sales. | `Net Error = Forecast Quantity - Sold Quantity`<br>*Example:* 1000 − 950 = 50 units |
| **Absolute Error** | Difference between forecasted and sold quantity **ignoring direction**. Measures total forecasting error. | `Absolute Error = |Forecast Quantity - Sold Quantity|`<br>*Example:* 1000 − 950 = 50 units |
| **Freight Cost** | Cost to transport products from factory to warehouses, stores, or customers. | *Example:* Shipping 1000 units costs $2000 → Freight Cost = $2000 |
| **Manufacturing Cost** | Cost to produce each product, including raw materials, labor, and overhead. | *Example:* Manufacturing cost per unit = $20, 100 units → Total = $2000 |
| **Gross Margin** | Profit left after subtracting **direct costs** (manufacturing + freight) from gross revenue. | `Gross Margin = Gross Revenue - (Manufacturing Cost + Freight Cost)`<br>*Example:* 5000 − 3000 = 2000 |
| **Fiscal Year** | The company’s accounting year. For Atliq: **Sep → Aug**. | *Example:* FY 2021 = Sep 2020 to Aug 2021 |
| **Quarter** | A three-month period in the fiscal year for reporting purposes. | Q1 = Sep–Nov, Q2 = Dec–Feb, Q3 = Mar–May, Q4 = Jun–Aug |

---

✅ This table can be included in your README.md under a **"Glossary" or "Key Terms"** section to make your project understandable to anyone, even without prior financial knowledge.


![image](https://miro.medium.com/v2/resize:fit:1400/1*kWPVoY9DzSrwdYZ8RlN2ZQ.png)
![image](https://miro.medium.com/v2/resize:fit:2000/1*WTp8pqJYXIrR07McVOqcAQ.png)


### Atliq Hardware – Key Insights (Fiscal Year 2021)
#### 1. Revenue Analysis :-

  Top Customers: Amazon is the highest revenue generator, followed by Atliq-exclusive and Atliq-e-store.
  
  Product Variants: The Standard variant leads in revenue, followed by Premium and Plus.
  
  Markets: India is the largest revenue contributor, followed by USA and South Korea.
  
  Channels: Retailer channel outperforms Direct and Distributor channels.
  
  Platforms: Brick & Mortar generates higher revenue than E-commerce.
  
  Regions: APAC region contributes the highest revenue.
  
  Subzones: Within markets, India dominates revenue contribution.
  
  Categories: Keyboards, personal and business laptops, mice, and processors are top revenue-generating categories.
  
  Segments: Notebooks and accessories/peripherals outperform networking and desktop segments.
  
  Product Divisions: P&A (Peripherals & Accessories) and PCs lead in revenue.

#### 2. Net Sales Analysis :-

  Markets: India tops net sales, followed by USA and South Korea.
  
  Customers: Amazon leads, followed by Atliq-exclusive and Atliq-e-store.
  
  Categories & Segments: Keyboards, personal and business laptops, mice, and processors, as well as notebooks, accessories, and peripherals, contribute the most to net sales.
  
  Product Divisions: P&A and PCs maintain top net sales positions.
  
  Channels: Retailer channel dominates, with Direct and Distributor contributing less.
  
  Platforms: Brick & Mortar generates higher sales than E-commerce.
  
  Regions & Subzones: APAC region and India subzone are major net sales contributors.

#### 3. Forecast Accuracy Analysis :-

  Channels: Retailer channel shows the highest forecast accuracy.
  
  Subzones: SE India and ANZ report strong forecast accuracy.
  
  Regions: LATAM tops forecast accuracy, with APAC ranking third.

#### 4. Key Suggestions for Sales Growth (Next Year) :-

### 1.) Customer Strategy :-

  Strengthen partnerships with Amazon and top e-commerce platforms.
  
  Expand Atliq-exclusive and e-store presence to increase direct consumer reach.

### 2.) Product & Category Focus :-

  Prioritize production and promotion of high-revenue categories: keyboards, laptops, mice, and processors.
  
  Introduce enhanced variants (Standard/Premium/Plus) with targeted marketing campaigns.

### 3.) Market Expansion :-

  Leverage India, USA, and South Korea as key markets for new launches.
  
  Explore underperforming regions with potential, e.g., Europe or LATAM, using forecast accuracy data for planning.

### 4.) Channel Optimization :-

  Continue to strengthen Retailer channels while incentivizing Direct stores to improve sales.
  
  Provide training and support to distributors to expand reach in tier-2/3 cities.

### 5.) Platform Strategy :-

  Maintain Brick & Mortar dominance but scale E-commerce marketing for untapped customer segments.
  
  Invest in online visibility, promotions, and fast delivery to capture the growing digital market.

### 6.) Forecasting & Inventory Management :-

Focus on regions and channels with high forecast accuracy (SE India, ANZ, LATAM).

Optimize inventory and supply chain in low-accuracy regions to reduce stockouts or excess.

### 7.) Segment & Division Priorities :-

Invest in Notebooks, Accessories & Peripherals, and PC divisions for high ROI.

Evaluate underperforming segments (Networking, Desktop) for improvement or product redesign.


---------------------------------------------------------------------------------------------------------------------------------
### Views :-

#### 1.) Pre Invoice Discounts
```sql
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
```

#### 2.) Post Invoice Discounts
```sql
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
```

#### 3.) Net Sales
```sql
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

```
#### 4.) Gross Sales 
```sql
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
```
-----------------------------------------------------------------------------------------------------------------------------

### Stored Procedure :-
#### 1.) Forecast Accuracy Report
```sql
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

```

#### 2.) Get Market Bedge
```sql
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

```

#### 3.) Get Top N customers by Net Sales
```sql
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

```

#### 4.) Get Top N products per Division by Quantity Sold
```sql
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

```

#### 5.) Monthly Gross Sales Based on Year
```sql
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

```

#### 6.) Top N markets by Net Sales
```sql
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

```
-------------------------------------------------------------------------------------------------------------------------------------------
### Functions :-
#### 1.) Get the Fiscal Year any Date
```sql
CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_year`(
calendar_date DATE
) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE fiscal_year INT ;
SET fiscal_year=YEAR(date_add(calendar_date,INTERVAL 4 MONTH));
RETURN fiscal_year;
END
```

#### 2.) Get Quarter
```sql
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

```
----------------------------------------------------------------------------------------------------------------------------------
### Analysis Based on Gross Revenue
```sql
select customer,round(sum(gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view
where fiscal_year=2021
group by customer
order by gross_revenue_millions desc
limit 5;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/top_5_customer_on_revenue.png?raw=true)

```sql
select product,round(sum(gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view
where fiscal_year=2021
group by product
order by gross_revenue_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/top_product_on_revenue.png?raw=true)

```sql
select variant,round(sum(gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view
where fiscal_year=2021
group by variant
order by gross_revenue_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/top_variant_on_revenue.png?raw=true)

```sql
select market,round(sum(gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view
where fiscal_year=2021
group by market
order by gross_revenue_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/top_market_on_revenue.png?raw=true)

```sql
select c.channel,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_customer c
on gs.customer_code=c.customer_code
where gs.fiscal_year=2021
group by c.channel
order by gross_revenue_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/channel_on_revenue.png?raw=true)

```sql
select c.platform,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_customer c
on gs.customer_code=c.customer_code
where gs.fiscal_year=2021
group by c.platform
order by gross_revenue_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/platform_on_revenue.png?raw=true)

```sql
select c.region,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_customer c
on gs.customer_code=c.customer_code
where gs.fiscal_year=2021
group by c.region
order by gross_revenue_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/region_on_revenue.png?raw=true)

```sql
select c.sub_zone,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_customer c
on gs.customer_code=c.customer_code
where gs.fiscal_year=2021
group by c.sub_zone
order by gross_revenue_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/subzone_on_revenue.png?raw=true)

```sql
select p.category,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_product p 
on gs.product_code=p.product_code
where gs.fiscal_year=2021
group by p.category
order by gross_revenue_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/category_on_revenue.png?raw=true)

```sql
select p.segment,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_product p 
on gs.product_code=p.product_code
where gs.fiscal_year=2021
group by p.segment
order by gross_revenue_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/segment_on_revenue.png?raw=true)

```sql
select p.division,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_product p 
on gs.product_code=p.product_code
where gs.fiscal_year=2021
group by p.division
order by gross_revenue_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/division_on_revenue.png?raw=true)

------------------------------------------------------------------------------------------------------------------------------------------
### Analysis Based on net sales 

```sql
select 
market,
round(sum(net_sales)/1000000,2) as net_sales_millions
from net_sales 
where fiscal_year=2021
group by market
order by net_sales_millions desc
limit 10
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/market_on_net_sales.png?raw=true)

```sql
select 
c.customer,
round(sum(s.net_sales)/1000000,2) as net_sales_millions
from net_sales s 
join dim_customer c 
on s.customer_code=c.customer_code
where s.fiscal_year=2021
group by c.customer
order by net_sales_millions desc
limit 5
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/customer_on_net_sales.png?raw=true)

```sql
select product,round(sum(net_sales)/1000000,2) net_sales_millions
from net_sales 
where fiscal_year=2021
group by product
order by net_sales_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/product_on_net_sales.png?raw=true)

```sql
select p.category,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_product p 
on s.product_code=p.product_code
where s.fiscal_year=2021
group by p.category
order by net_sales_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/category_on_net_sales.png?raw=true)

```sql

select p.segment,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_product p 
on s.product_code=p.product_code
where s.fiscal_year=2021
group by p.segment
order by net_sales_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/segment_on_net_sales.png?raw=true)

```sql
select p.division,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_product p 
on s.product_code=p.product_code
where s.fiscal_year=2021
group by p.division
order by net_sales_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/division_on_net_sales.png?raw=true)

```sql
select c.channel,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_customer c
on s.customer_code=c.customer_code
where s.fiscal_year=2021
group by c.channel
order by net_sales_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/channel_on_net_sales.png?raw=true)

```sql
select c.platform,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_customer c
on s.customer_code=c.customer_code
where s.fiscal_year=2021
group by c.platform
order by net_sales_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/platform_on_net_sales.png?raw=true)

```sql
select c.region,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_customer c
on s.customer_code=c.customer_code
where s.fiscal_year=2021
group by c.region
order by net_sales_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/region_on_net_sales.png?raw=true)

```sql
select c.sub_zone,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_customer c
on s.customer_code=c.customer_code
where s.fiscal_year=2021
group by c.sub_zone
order by net_sales_millions desc
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/sub_zone_net_sales.png?raw=true)

```sql
with cte as(
select 
c.customer,
round(sum(s.net_sales)/1000000,2) as net_sales_millions
from net_sales s 
join dim_customer c 
on s.customer_code=c.customer_code
where s.fiscal_year=2021
group by c.customer
order by net_sales_millions desc)
select *,net_sales_millions*100/sum(net_sales_millions) over() as market_share_pct
from cte  
order by market_share_pct desc 
limit 10;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/customer_market_share_pct.png?raw=true)

```sql
WITH cte1 AS (
    SELECT
        p.division,
        p.product,
        SUM(s.sold_quantity) AS total_qty
    FROM fact_sales_monthly s
    JOIN dim_product p
        ON p.product_code = s.product_code
    WHERE s.fiscal_year = 2021
    GROUP BY p.division, p.product
),
cte2 AS (
    SELECT 
        *,
        DENSE_RANK() OVER (PARTITION BY division ORDER BY total_qty DESC) AS drnk
    FROM cte1
)
SELECT * 
FROM cte2 
WHERE drnk <= 3;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/divison_product_rank.png?raw=true)

```sql
WITH cte1 AS (
    SELECT
        c.market,
        c.region,
        round(SUM(s.sold_quantity*g.gross_price)/1000000,2) AS gross_price_total
    FROM fact_sales_monthly s
    join dim_customer c 
    on s.customer_code=c.customer_code
    JOIN fact_gross_price g
        ON s.product_code = g.product_code and s.fiscal_year=g.fiscal_year
    WHERE s.fiscal_year = 2021
    GROUP BY c.market,c.region
),
cte2 AS (
    SELECT 
        *,
        DENSE_RANK() OVER (PARTITION BY region ORDER BY gross_price_total DESC) AS drnk
    FROM cte1
)
SELECT * 
FROM cte2 
WHERE drnk <= 3;
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/market_region_rank.png?raw=true)

-----------------------------------------------------------------------------------------------------------------------------------------
### Analysis Based on Forecast Accuracy
```sql
select 
c.region,
sum(f.total_sold_qty)/1000000 as sold_quantity,
sum(f.total_forecast_qty)/1000000 as forecast_quantity,
round(avg(f.forecast_accuracy),2) as forecast_accuracy_average
from forecast_accuracy f 
join dim_customer c
on f.customer_code=c.customer_code
group by c.region
order by forecast_accuracy_average desc
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/region_forecast_accuracy.png?raw=true)

```sql
select 
c.sub_zone,
sum(f.total_sold_qty) as sold_quantity,
sum(f.total_forecast_qty) as forecast_quantity,
round(avg(f.forecast_accuracy),2) as forecast_accuracy_average
from forecast_accuracy f 
join dim_customer c 
on f.customer_code=c.customer_code
group by c.sub_zone
order by forecast_accuracy_average desc
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/sub_zone_forecast_accuracy.png?raw=true)

```sql
select 
c.channel,
sum(f.total_sold_qty) as sold_quantity,
sum(f.total_forecast_qty) as forecast_quantity,
round(avg(f.forecast_accuracy),2) as forecast_accuracy_average
from forecast_accuracy f 
join dim_customer c 
on f.customer_code=c.customer_code
group by channel
order by forecast_accuracy_average desc
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/channel_forecast_accuracy.png?raw=true)

```sql
select 
c.market,
sum(f.total_sold_qty) as sold_quantity,
sum(f.total_forecast_qty) as forecast_quantity,
round(avg(f.forecast_accuracy),2) as forecast_accuracy_average
from forecast_accuracy f 
join dim_customer c 
on f.customer_code=c.customer_code
group by c.market
order by forecast_accuracy_average desc
```
![image](https://github.com/parthpatoliya97/AtliQ_hardware_sales_finance_report/blob/main/images/market_forecast_accuracy.png?raw=true)


