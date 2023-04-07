{% macro like(target, pattern) -%}
    {{ return(adapter.dispatch('like', 'dbt_project_evaluator')(model_ref)) }}
{%- endmacro %}

{% macro default__like(target, pattern) %}
  {{ target }} like {{ pattern }} 
{% endmacro %}
