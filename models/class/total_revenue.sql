
{{
    config(
        materialized='table',
        transient=false
    )
}}
select orderid, sum(amount) as tot_revenue
from dev_db.dev_schema.payment
group by orderid
order by 2 desc