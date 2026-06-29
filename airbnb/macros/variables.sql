{% macro learn_variables() %}

    {% set your_name_jinja = "Marty" %}
    {{ log("Hello " ~ your_name_jinja, info=True) }}

    {{ log("Hello dbt user " ~ var("user_name", "NO USERNAME PROVIDED") ~ "!", info=True) }}
{% endmacro %}
