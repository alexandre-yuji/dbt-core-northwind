-- models/staging/stg_products.sql

select * from {{ source('dbtcorenorthwind', 'products') }}