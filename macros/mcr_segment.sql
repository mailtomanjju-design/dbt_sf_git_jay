{% macro mcr_segment(c1) %}
    case when {{c1}} in ('FURNITURE','HOUSEHOLD','BUILDING') then 'House'
    else 'Office' end as mktsegment
{% endmacro %}