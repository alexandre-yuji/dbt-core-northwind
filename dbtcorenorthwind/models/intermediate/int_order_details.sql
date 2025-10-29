-- models/intermediate/int_order_details.sql

with source as (
    select * from {{ ref('stg_order_details')}}
),

filtered as (

    select
        order_id,
        product_id,
        unit_price,
        quantity,
        discount
    from
        source
)

select * from filtered