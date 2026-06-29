{% test minimum_row_count(model, min_row_count) %}
{{
    config(severity='warn')
}}
SELECT 
    COUNT(*) as row_count
FROM 
    {{ model }}
HAVING 
    COUNT(*) < {{ min_row_count }}
{% endtest %}