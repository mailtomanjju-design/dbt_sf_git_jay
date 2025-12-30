{{ config(materialized="ephemeral") }}
with
    orders as (
        select order_id, customer_id, order_date, status from dev_db.dev_schema.orders
    )
select *
from orders
