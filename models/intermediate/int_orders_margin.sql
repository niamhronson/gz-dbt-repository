SELECT 
orders_id,
date_date,
round(sum(revenue),2) as revenue,
sum(quantity) as quantity,
round(sum(purchase_cost),2) as purchase_cost,
round(sum(margin),2) as margin,
FROM {{ref('int_sales_margin')}}
GROUP BY orders_id, date_date