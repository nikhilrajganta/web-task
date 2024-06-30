
SELECT
    region,
    product_type,
    sales_amount
from sales_data

SELECT
    region,
    product_type,
    sales_amount,
    Sum(sales_amount) OVER (ORDER by sales_amount)
from sales_data



SELECT
    region,
    product_type,
    sales_amount,
    Sum(sales_amount) OVER (ORDER by sales_amount) as Running_Total,
    Avg(sales_amount) OVER (ORDER by sales_amount)  as Running_Avg,
    Count(sales_amount) OVER (ORDER by sales_amount) as Running_Count
from sales_data


Select *
from sales_data

-- Starting of the table to current row
-- Problem: Same values in sales_amount
SELECT
    region,
    product_type,
    sales_amount,
    Sum(sales_amount) OVER (ORDER by sales_amount) as Running_Total,
    Avg(sales_amount) OVER (ORDER by sales_amount)  as Running_Avg,
    Count(sales_amount) OVER (ORDER by sales_amount) as Running_Count
from sales_data;





SELECT
    region,
    product_type,
    sales_amount,
    Sum(sales_amount) OVER (ORDER by sales_amount) as Old_Running_Total,
    Sum(sales_amount) OVER (ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as New_Running_Total,
    Avg(sales_amount) OVER (ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)  as Running_Avg,
    Count(sales_amount) OVER (ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as Running_Count
from sales_data;


SELECT
    region,
    product_type,
    sales_amount,
    Sum(sales_amount) OVER (ORDER by sales_amount) as Old_Running_Total,
    -- 1 row before and 1 row after
    Sum(sales_amount) OVER (ORDER by sales_amount ROWS BETWEEN 1 PRECEDING AND 1 following) as New_Running_Total,
    Avg(sales_amount) OVER (ORDER by sales_amount ROWS BETWEEN 1 PRECEDING AND 1 following)  as Running_Avg,
    Count(sales_amount) OVER (ORDER by sales_amount ROWS BETWEEN 1 PRECEDING AND 1 following) as Running_Count
from sales_data;



-- Unbounded PRECEDING -- starting of partition | Unbounded following -- ending of partition
SELECT
    region,
    product_type,
    sales_amount,
    Sum(sales_amount) OVER (PARTITION By region  ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as Running_Total,
    Avg(sales_amount) OVER (PARTITION By region  ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)  as Running_Avg,
    Count(sales_amount) OVER (PARTITION By region  ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as Running_Count
from sales_data;

SELECT
    region,
    product_type,
    sales_amount,
    Sum(sales_amount) OVER (  ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED following) as Running_Total,
    Avg(sales_amount) OVER (  ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED following)  as Running_Avg,
    Count(sales_amount) OVER (  ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED following) as Running_Count
from sales_data;



SELECT
    region,
    product_type,
    sales_amount,
    Sum(sales_amount) OVER (PARTITION by region  ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED following) as Running_Total,
    Avg(sales_amount) OVER (PARTITION by region   ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED following)  as Running_Avg,
    Count(sales_amount) OVER (PARTITION by region   ORDER by sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED following) as Running_Count
from sales_data;