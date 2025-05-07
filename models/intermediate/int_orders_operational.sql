SELECT
*,
round(margin + s.shipping_fee - s.logcost - cast(s.ship_cost as INT64),2) AS operational_margin
FROM {{ ref("int_orders_margin")}} as o
LEFT JOIN {{ ref("stg_raw__ship")}} as s
USING(orders_id)
