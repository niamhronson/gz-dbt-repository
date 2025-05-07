SELECT 
d.date_date,
d.operational_margin - c.ads_cost AS ads_margin,
d.average_basket,
d.operational_margin,
c.ads_cost,
c.ads_impression,
c.ads_click,
d.quantity,
d.revenue,
d.purchase_cost,
d.margin,
d.shipping_fee,
d.log_cost
FROM {{ref('finance_days')}} as d
FULL JOIN {{ref('int_campaigns_day')}} AS c
USING(date_date)