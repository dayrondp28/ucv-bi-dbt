select
    trim(product_id) as product_id,
    trim(product_name) as product_name,
    trim(category) as category
from {{ source('bronze', 'products_raw') }}