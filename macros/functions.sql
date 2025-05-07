 {% macro margin_percent_calculation(revenue, purchase_cost) %}
    round(safe_divide( {{revenue}} - {{purchase_cost}} , {{revenue}}),2)
 {% endmacro %}