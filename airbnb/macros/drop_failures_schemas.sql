{% macro drop_failures_schemas() %}

    {% set results = run_query(
        "SELECT schema_name
        FROM information_schema.schemata
        WHERE schema_name ILIKE '%TEST%'
        "
    ).columns[0].values() %}

    {% if execute %}
        {% if results | length == 0 %}
            {{ log("No schemas with substring = 'TEST' found")}}
        {% else %}
            {% for i in results %}
                {{ log("Dropping schema: " ~ i, info=True) }}
                {% do run_query("DROP SCHEMA IF EXISTS " ~ i ~ " CASCADE") %}
            {% endfor %}
        {% endif %}
    {% endif%}

{% endmacro %}