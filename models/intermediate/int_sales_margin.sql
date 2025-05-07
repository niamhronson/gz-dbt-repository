SELECT
date_date,
orders_id,
products_id,
revenue,
quantity,
round(quantity * purchase_price,2) AS purchase_cost,
round(s.revenue - p.purchase_price,2) AS margin,
{{ margin_percent_calculation(  'revenue' ,  'quantity * purchase_price' ) }} AS margin_percent
FROM {{ ref("stg_raw__sales")}} as s
LEFT JOIN {{ ref("stg_raw__product")}} as p
USING(products_id)

