-- models/staging/stg_customers.sql

with source as (
    select * from {{ ref('raw_customers')}}
),

filtered as (

    select
        customer_id,
        company_name,
        contact_name,
        contact_title,
        address,
        city,
        region,
        postal_code,
        country,
        phone,
        fax
    from
        source
)

select * from filtered