SELECT
    date_date,
    count(orders_id) AS nb_transactions,
    round(sum(revenue),2) AS revenue,
    round(avg(revenue),2) AS average_basket,
    round(sum(margin),2) AS margin,
    round(sum(operational_margin),2) AS operational_margin,
    round(sum(purchase_cost),2) AS purchase_cost,
    round(sum(shipping_fee),2) AS shipping_fee,
    round(sum(logcost),2) AS log_cost,
    sum(quantity) AS quantity
FROM {{ref('int_orders_operational')}}
GROUP BY date_date