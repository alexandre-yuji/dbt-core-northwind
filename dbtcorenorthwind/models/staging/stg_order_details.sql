-- models/staging/stg_order_details.sql

select * from {{ source('dbtcorenorthwind', 'order_details') }}