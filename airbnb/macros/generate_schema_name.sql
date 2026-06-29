{% macro generate_schema_name(custome_schema_name, node) -%}

    {% set custome_schema_name_cleansed = custome_schema_name | trim | upper %}
    {% set target_schema_cleansed = target.schema | trim | upper %}

    {%- if custome_schema_name is none -%}
        {# No custom schema: always use target schema as-is (uppercased above) #}
        {{ target_schema_cleansed }}
    {%- else -%}
        {%- if target.name == 'prod' -%}
            {{ custome_schema_name_cleansed }}
        {%- else -%}
            {# Staging / Dev / feature branches: prefix with personal/branch schema #}
            {{ target_schema_cleansed}}_{{ custome_schema_name_cleansed}}
        {%- endif -%}
    {%- endif -%}
{%- endmacro %}


{#
There are a handful of macros whose names dbt recognizes automatically.

Examples include:

generate_schema_name
generate_database_name
generate_alias_name
create_schema
drop_schema

These are part of dbt's internal behavior.
#}