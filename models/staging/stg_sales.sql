select
    sale_id,
    cast(sale_date as date) as sale_date,
    product_id,
    customer_id,
    store_id,
    cast(quantity as int) as quantity,
    cast(unit_price as double) as unit_price,
    (cast(quantity as int) * cast(unit_price as double)) as sales_amount
from {{ source('bronze', 'sales_raw') }}