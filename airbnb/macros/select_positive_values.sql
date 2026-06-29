{% macro select_positive_values(model, col_name) %}
SELECT * 
FROM {{ model }}
WHERE {{ col_name }} > 0
{% endmacro %}