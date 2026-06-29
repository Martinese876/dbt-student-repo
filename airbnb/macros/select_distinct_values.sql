{% macro select_distinct_values(model, col) %}
    {% set distinct_vals_query %}
        select distinct {{ col }} from {{ model }}
    {% endset %}
    {% set results = run_query(distinct_vals_query) %}
    {% if execute %}
        {% set results_list = results.columns[0].values() %}
        {{ return(results_list) }}
    {% else %}
        {{ return([]) }}
    {% endif %}
{% endmacro %}