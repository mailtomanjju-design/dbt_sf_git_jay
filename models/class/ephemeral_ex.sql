
select customer_id,
        first_name,
        last_name,
        first_order,
        recent_order,
        coalesce(number_of_orders,0) as no_of_orders
        from {{ ref('ep_customers') }}
        left join {{ ref('ep_customer_orders') }} using (customer_id)
        