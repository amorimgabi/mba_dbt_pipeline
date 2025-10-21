select
    id as order_id,
    user_id as customer_id, -- Renomeando para consistência
    order_date,
    status
from {{ source('ecommerce_raw', 'raw_orders') }}