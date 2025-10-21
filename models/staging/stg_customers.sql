select
    id as customer_id,  -- Renomeando a coluna 'id' para o padrão 'customer_id'
    first_name,         -- Mantendo a coluna 'first_name'
    last_name           -- Mantendo a coluna 'last_name'

-- Aqui usamos a função source() para ler da tabela declarada no .yml
from {{ source('ecommerce_raw', 'raw_customers') }}