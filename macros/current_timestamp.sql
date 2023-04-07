{% macro current_timestamp() -%}
    {{ return(adapter.dispatch('current_timestamp', 'dbt_project_evaluator')(model_ref)) }}
{%- endmacro %}

{% macro default__current_timestamp() %}
  current_timestamp
{% endmacro %}
