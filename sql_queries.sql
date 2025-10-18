-- Analysis Based on Gross Revenue

select customer,round(sum(gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view
where fiscal_year=2021
group by customer
order by gross_revenue_millions desc
limit 5;


select product,round(sum(gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view
where fiscal_year=2021
group by product
order by gross_revenue_millions desc
limit 10;


select variant,round(sum(gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view
where fiscal_year=2021
group by variant
order by gross_revenue_millions desc
limit 10;


select market,round(sum(gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view
where fiscal_year=2021
group by market
order by gross_revenue_millions desc
limit 10;


select c.channel,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_customer c
on gs.customer_code=c.customer_code
where gs.fiscal_year=2021
group by c.channel
order by gross_revenue_millions desc
limit 10;


select c.platform,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_customer c
on gs.customer_code=c.customer_code
where gs.fiscal_year=2021
group by c.platform
order by gross_revenue_millions desc
limit 10;


select c.region,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_customer c
on gs.customer_code=c.customer_code
where gs.fiscal_year=2021
group by c.region
order by gross_revenue_millions desc
limit 10;


select c.sub_zone,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_customer c
on gs.customer_code=c.customer_code
where gs.fiscal_year=2021
group by c.sub_zone
order by gross_revenue_millions desc
limit 10;


select p.category,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_product p 
on gs.product_code=p.product_code
where gs.fiscal_year=2021
group by p.category
order by gross_revenue_millions desc
limit 10;


select p.segment,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_product p 
on gs.product_code=p.product_code
where gs.fiscal_year=2021
group by p.segment
order by gross_revenue_millions desc
limit 10;


select p.division,round(sum(gs.gross_price_total)/1000000,2) as gross_revenue_millions
from gross_sales_view gs
join dim_product p 
on gs.product_code=p.product_code
where gs.fiscal_year=2021
group by p.division
order by gross_revenue_millions desc
limit 10;


-- Analysis Based on net sales
select 
market,
round(sum(net_sales)/1000000,2) as net_sales_millions
from net_sales 
where fiscal_year=2021
group by market
order by net_sales_millions desc
limit 10


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


select product,round(sum(net_sales)/1000000,2) net_sales_millions
from net_sales 
where fiscal_year=2021
group by product
order by net_sales_millions desc
limit 10;


select p.category,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_product p 
on s.product_code=p.product_code
where s.fiscal_year=2021
group by p.category
order by net_sales_millions desc
limit 10;


select p.segment,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_product p 
on s.product_code=p.product_code
where s.fiscal_year=2021
group by p.segment
order by net_sales_millions desc
limit 10;


select p.division,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_product p 
on s.product_code=p.product_code
where s.fiscal_year=2021
group by p.division
order by net_sales_millions desc
limit 10;


select c.channel,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_customer c
on s.customer_code=c.customer_code
where s.fiscal_year=2021
group by c.channel
order by net_sales_millions desc
limit 10;


select c.platform,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_customer c
on s.customer_code=c.customer_code
where s.fiscal_year=2021
group by c.platform
order by net_sales_millions desc
limit 10;


select c.region,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_customer c
on s.customer_code=c.customer_code
where s.fiscal_year=2021
group by c.region
order by net_sales_millions desc
limit 10;


select c.sub_zone,round(sum(s.net_sales)/1000000,2) net_sales_millions
from net_sales s 
join dim_customer c
on s.customer_code=c.customer_code
where s.fiscal_year=2021
group by c.sub_zone
order by net_sales_millions desc
limit 10;


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


-- Analysis Based on Forecast Accuracy
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
