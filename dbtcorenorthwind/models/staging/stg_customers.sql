-- models/staging/stg_orders.sql

select * from {{ source('dbtcorenorthwind', 'customers') }}