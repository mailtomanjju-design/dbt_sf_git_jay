{% macro acctbal(c1,c2) %}
    case when {{c1}} = 8 then {{c2}} + ({{c2}} * 0.5)
    else {{c2}} + ({{c2}} * 0.2) end as new_acctbal
{% endmacro %}