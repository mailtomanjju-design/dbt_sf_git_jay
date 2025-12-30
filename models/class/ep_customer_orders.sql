{{
    config(
        materialized='ephemeral'
    )
}}

with customer_orders as (
 select customer_id, min(order_date) as first_order,
max(order_date) as recent_order,
count(order_id) as number_of_orders
from {{ ref('ep_orders') }}
group by 1)
select * from customer_orders