SELECT
DATE_TRUNC(date_date, MONTH) AS month,
round(sum(ads_margin),2) as ads_margin,
round(avg(average_basket),2) as average_basket,
round(sum(operational_margin),2) as operational_margin,
sum(ads_cost) as ads_cost,
sum(ads_impression) as ads_impression,
sum(ads_click) as ads_click,
sum(quantity) as quantity,
round(sum(revenue),2) as revenue,
round(sum(purchase_cost),2) as purchase_cost,
round(sum(margin),2) as margin,
round(sum(shipping_fee),2) as shipping_fee,
round(sum(log_cost),2) as log_cost
FROM {{ref('finance_campaigns_day')}}
GROUP BY month
